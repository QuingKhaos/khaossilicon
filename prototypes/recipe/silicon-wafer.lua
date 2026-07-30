local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if settings.startup["khaossilicon-more"].value then
  khaoslib_recipe:load {
    type = "recipe",
    name = "silicon-wafer",
    subgroup = "intermediate-product",
    order = "aa[silicon]-b[silicon-wafer]",
    enabled = false,
    allow_productivity = true,
    energy_required = 2,
    main_product = "silicon-wafer",
  } :set_icons {{icon = "__khaossilicon__/graphics/icons/silicon-wafer.png", icon_size = 64}}
    :set_categories {"crafting-with-fluid"}
    :set_ingredients {
      {type = "item", name = "silicon", amount = 2},
      {type = "fluid", name = "sulfuric-acid", amount = 5},
    }
    :set_results {
      {type = "item", name = "silicon-wafer", amount = 1},
    }
    :commit()
end
