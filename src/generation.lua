require 'stdlib/game'

-- Determines if a given chunk should have a cavern below it.
-- Arguments:
-- @param cavern_map [required] The map of already determined cavern chunks. Will be modified.
-- @param chunk_event [required] The event trigged from on_chunk_generated.
function choose_cavern_tiles(cavern_map, chunk_event)
    -- For now, let's make this really simple and make each one random
    if math.random() < 0.003 then
        Game.print_all("There is a cavern under chunk "..chunk_event.area.left_top.x..":"..chunk_event.area.left_top.y)
        cavern_map[chunk_event.area] = true
    else
        cavern_map[chunk_event.area] = false
    end
end