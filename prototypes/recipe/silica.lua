local khaoslib_entity = require("__khaoslib__.prototypes.entity")
local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

khaoslib_recipe:load {
  type = "recipe",
  name = "silica",
  subgroup = "raw-material",
  order = "a[smelting]-ea[silica]",
  enabled = false,
  auto_recycle = false,
  allow_productivity = true,
  energy_required = 3.2,
  main_product = "silica",
} :set_icons {{icon = "__khaossilicon__/graphics/icons/silica.png", icon_size = 64}}
  :set_categories(khaoslib_entity.exists("assembling-machine", "basic-crusher") and {"basic-crushing"} or {"smelting"})
  :set_ingredients {
    {type = "item", name = "stone-brick", amount = 1},
  }
  :set_results {
    {type = "item", name = "silica", amount = 5},
  }
  :commit()
