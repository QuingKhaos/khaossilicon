local khaoslib_technology = require("__khaoslib__.prototypes.technology")

khaoslib_technology:load {
  type = "technology",
  name = "fiber-optics",
  order = "b-b",
} :set_icons {{icon = "__khaossilicon__/graphics/technology/fiber-optics.png", icon_size = 256}}
  :set_prerequisites {"lamp", "silica-processing", "logistic-science-pack"}
  :set_unit {
    time = 10,
    count = 100,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
    },
  }
  :add_unlock_recipe("optical-fiber")
  :commit()
