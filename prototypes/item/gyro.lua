local item_sounds = require("__base__.prototypes.item_sounds")
local khaoslib_item = require("__khaoslib__.prototypes.item")

if settings.startup["khaossilicon-more"].value then
  khaoslib_item:load {
    type = "item",
    name = "gyro",
    subgroup = "intermediate-product",
    order = "aa[silicon]-d[gyro]",
    stack_size = 200,
    weight = 0.5 * kg,

    inventory_move_sound = item_sounds.electric_small_inventory_move,
    pick_sound = item_sounds.electric_small_inventory_pickup,
    drop_sound = item_sounds.electric_small_inventory_move,
  } :set_icons {{icon = "__khaossilicon__/graphics/icons/gyro.png", icon_size = 64}}
    :commit()
end
