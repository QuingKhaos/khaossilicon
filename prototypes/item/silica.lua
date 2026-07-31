local item_sounds = require("__base__.prototypes.item_sounds")
local khaoslib_item = require("__khaoslib__.prototypes.item")

khaoslib_item:load {
  type = "item",
  name = "silica",
  subgroup = "raw-material",
  order = "a[smelting]-d[silica]",
  stack_size = 100,
  weight = 0.2 * kg,

  inventory_move_sound = item_sounds.sulfur_inventory_move,
  pick_sound = item_sounds.resource_inventory_pickup,
  drop_sound = item_sounds.sulfur_inventory_move,
} :set_icons {{icon = "__khaossilicon__/graphics/icons/silica.png", icon_size = 64}}
  :commit()
