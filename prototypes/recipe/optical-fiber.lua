local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

khaoslib_recipe:load {
  type = "recipe",
  name = "optical-fiber",
  subgroup = "cable",
  order = "a[basic-intermediates]-a[optical-fiber]",
  enabled = false,
  allow_productivity = true,
  energy_required = 0.5,
  main_product = "optical-fiber",
} :set_icons {{icon = "__khaossilicon__/graphics/icons/optical-fiber.png", icon_size = 64}}
  :set_categories {"crafting"}
  :set_ingredients {
    {type = "item", name = "silica", amount = 1},
  }
  :set_results {
    {type = "item", name = "optical-fiber", amount = 1},
  }
  :commit()
