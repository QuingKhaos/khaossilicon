local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if settings.startup["khaossilicon-more"].value then
  khaoslib_recipe:load {
    type = "recipe",
    name = "gyro",
    subgroup = "intermediate-product",
    order = "aa[silicon]-d[gyro]",
    enabled = false,
    allow_productivity = true,
    energy_required = 12,
    main_product = "gyro",
  } :set_icons {{icon = "__khaossilicon__/graphics/icons/gyro.png", icon_size = 64}}
    :set_categories {"crafting"}
    :set_ingredients {
      {type = "item", name = "copper-cable", amount = 2},
      {type = "item", name = "silica", amount = 1},
      {type = "item", name = "silicon", amount = 4},
    }
    :set_results {
      {type = "item", name = "gyro", amount = 4},
    }
    :commit()
end
