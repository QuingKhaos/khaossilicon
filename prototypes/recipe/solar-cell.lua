local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if settings.startup["khaossilicon-more"].value then
  khaoslib_recipe:load {
    type = "recipe",
    name = "solar-cell",
    subgroup = "intermediate-product",
    order = "aa[silicon]-c[solar-cell]",
    enabled = false,
    allow_productivity = true,
    energy_required = 2,
    main_product = "solar-cell",
  } :set_icons {{icon = "__khaossilicon__/graphics/icons/solar-cell.png", icon_size = 64}}
    :set_categories {"crafting"}
    :set_ingredients {
      {type = "item", name = "silicon-wafer", amount = 1},
      {type = "item", name = "electronic-circuit", amount = 1},
    }
    :set_results {
      {type = "item", name = "solar-cell", amount = 2},
    }
    :commit()
end
