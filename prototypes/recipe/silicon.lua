local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

khaoslib_recipe:load {
  type = "recipe",
  name = "silicon",
  subgroup = "raw-material",
  order = "a[smelting]-eb[silicon]",
  enabled = false,
  auto_recycle = false,
  allow_productivity = true,
  energy_required = 3.2,
  main_product = "silicon",
} :set_icons {{icon = "__khaossilicon__/graphics/icons/silicon.png", icon_size = 64}}
  :set_categories {"smelting"}
  :set_ingredients {
    {type = "item", name = "silica", amount = 10},
  }
  :set_results {
    {type = "item", name = "silicon", amount = 1},
  }
  :commit()
