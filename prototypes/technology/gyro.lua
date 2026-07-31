local khaoslib_technology = require("__khaoslib__.prototypes.technology")

if settings.startup["khaossilicon-more"].value then
  khaoslib_technology:load {
    type = "technology",
    name = "gyro",
    order = "b-b",
  } :set_icons {{icon = "__khaossilicon__/graphics/technology/gyro.png", icon_size = 256}}
    :set_prerequisites {"silica-processing", "chemical-science-pack"}
    :set_unit {
      time = 30,
      count = 100,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
      },
    }
    :add_unlock_recipe("gyro")
    :commit()
end
