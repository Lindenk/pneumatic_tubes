require 'pictures'

data:extend({
  {
    type = "transport-belt",
    name = "pneumatic-tube",
    icon = "__PneumaticTubes__/graphics/entities/brass-pipe.png",
    flags = {"placeable-neutral", "player-creation", "building-direction-8-way"},
    minable = {mining_time = 0.3, result = "pneumatic-tube"},
    max_health = 100,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 100
      }
    },
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},

    speed = 0,

    belt_horizontal = basic_belt_horizontal,
    belt_vertical = basic_belt_vertical,
    ending_top = basic_belt_ending_top,
    ending_bottom = basic_belt_ending_bottom,
    ending_side = basic_belt_ending_side,
    starting_top = basic_belt_starting_top,
    starting_bottom = basic_belt_starting_bottom,
    starting_side = basic_belt_starting_side,
    ending_patch = ending_patch_prototype,
    
    animation_speed_coefficient = 32,
    animations =
    {
      filename = "__base__/graphics/entity/transport-belt/transport-belt.png",
      priority = "extra-high",
      width = 40,
      height = 40,
      frame_count = 16,
      direction_count = 12
    },

    connector_frame_sprites = transport_belt_connector_frame_sprites,
    collision_mask = {"object-layer", "item-layer"},
  },
--  {
--    type = "pipe",
--    name = "pneumatic-entrance",
--    icon = "__PneumaticTubes__/graphics/brass-pipe.png",
--    flags = {"placeable-neutral", "player-creation"},
--    minable = {hardness = 0.3, mining_time = 0.5, result = "pneumatic-tube"},
--    max_health = 50,
--    corpse = "small-remnants",
--    resistances =
--    {
--      {
--        type = "fire",
--        percent = 90
--      }
--    },
--    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
--    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
--    fluid_box =
--    {
--      base_area = 2,
--      pipe_connections =
--      {
--        { position = {0, -1} },
--        { position = {1, 0} },
--        { position = {0, 1} },
--        { position = {-1, 0} }
--      },
--    },
--    render_layer = "object",
--    picture = {
--      filename = "__PneumaticTubes__/graphics/brass-pipe.png",
--      priority = "extra-high",
--      width = 44,
--      height = 58
--    }
--  },
})