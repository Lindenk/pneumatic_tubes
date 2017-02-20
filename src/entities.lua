data:extend({
  {
    type = "container",
    inventory_size = 10,
    name = "pneumatic-tube",
    icon = "__PneumaticTubes__/graphics/brass-pipe.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.3, mining_time = 0.5, result = "pneumatic-tube"},
    max_health = 50,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 2,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    picture = {
      filename = "__PneumaticTubes__/graphics/brass-pipe.png",
      priority = "extra-high",
      width = 44,
      height = 58
    }
  }
})