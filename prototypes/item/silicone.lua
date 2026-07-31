local khaoslib_item = require("__khaoslib__.prototypes.item")

if settings.startup["khaossilicon-more"].value then
  khaoslib_item:load {
    type = "item",
    name = "silicone",
    subgroup = "intermediate-product",
    order = "aa[silicon]-a[silicone]",
    stack_size = 100,
    weight = 2 * kg,

  } :set_icons {{icon = "__khaossilicon__/graphics/icons/silicone.png", icon_size = 64}}
    :commit()
end
