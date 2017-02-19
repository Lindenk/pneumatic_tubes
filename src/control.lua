require "generation"


function gen_underground_surface(name)

end

script.on_event(defines.events.on_chunk_generated, function(event)
    if event.surface.name == "nauvis" then
        local cavern_map = global.digging_deep.surfaces[event.surface.name].cavern_map
	    choose_cavern_tiles(cavern_map, event)
    end
end)

script.on_init(function()
    global.digging_deep = {}
    global.digging_deep.surfaces = {}
    
    for name in pairs(game.surfaces) do
        global.digging_deep.surfaces[name] = {}
        global.digging_deep.surfaces[name].cavern_map = {}
    end
end)

