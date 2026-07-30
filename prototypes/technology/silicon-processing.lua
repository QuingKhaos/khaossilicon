local khaoslib_technology = require("__khaoslib__.prototypes.technology")

khaoslib_technology:load {
  type = "technology",
  name = "silicon-processing",
  order = "b-b",
} :set_icons {{icon = "__khaossilicon__/graphics/technology/silicon-processing.png", icon_size = 256}}
  :set_prerequisites {"silica-processing", "logistic-science-pack"}
  :set_unit {
    time = 30,
    count = 100,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
    },
  }
  :add_unlock_recipe("silicon")
  :commit()
