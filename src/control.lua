require 'stdlib/event/event'
require 'stdlib/table'
require 'stdlib/area/tile'
require 'stdlib/entity/entity'
require 'stdlib/log/logger'

logger = Logger.new('pneumatic tubes')

function tprint (tbl, indent)
  if not indent then indent = 0 end
  for k, v in pairs(tbl) do
    formatting = string.rep("  ", indent) .. k .. ": "
    if type(v) == "table" then
      logger.log(formatting)
      tprint(v, indent+1)
    else
      logger.log(formatting .. v)
    end
  end
end


function createNetwork()
  return {
    entrances = {},
    exits = {},
    vacuums = {},
  }
end

function mergeNetworks(...)
  local network = createNetwork()
  table.each(..., function(a)
    table.each({"entrances", "exits", "vacuums"}, function(v)
      network[v] = table.merge(network[v], a[v], true)
    end)
  end)

  return network
end

Event.register(defines.events.on_built_entity, function(event)
  if event.created_entity.name == "pneumatic-tube" then
    local entity  = event.created_entity
    local surface = entity.surface
    local pos     = entity.position

    -- Attempt to add it to an existing tube network
    local connected_entities = {}
    table.each(Tile.adjacent(surface, pos), function(p)
      tube = surface.find_entity("pneumatic-tube", p)
      if tube ~= nil then 
        table.insert(connected_entities, tube)
      end
    end)

    local network = {}
    -- Create a new one if there are no connections
    if #connected_entities == 0 then
      network = createNetwork()
    elseif #connected_entities == 1 then
      network = connected_entities[1]
    else
      network = mergeNetworks(table.map(connected_entities, function(e)
        return Entity.get_data(e).network
      end))
    end

    Entity.set_data(entity, {network = network})
    logger.log(network)
  end
end)

