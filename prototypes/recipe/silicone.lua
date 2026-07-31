local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if settings.startup["khaossilicon-more"].value then
  khaoslib_recipe:load {
    type = "recipe",
    name = "silicone",
    subgroup = "intermediate-product",
    order = "aa[silicon]-a[silicone]",
    enabled = false,
    allow_productivity = true,
    energy_required = 10,
    main_product = "silicone",
  } :set_icons {{icon = "__khaossilicon__/graphics/icons/silicone.png", icon_size = 64}}
    :set_categories {"crafting-with-fluid"}
    :set_ingredients {
      {type = "item", name = "silicon", amount = 10},
      {type = "item", name = "copper-plate", amount = 1},
      {type = "fluid", name = "water", amount = 20},
    }
    :set_results {
      {type = "item", name = "silicone", amount = 5},
    }
    :commit()
end
