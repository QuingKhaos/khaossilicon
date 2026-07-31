local item_sounds = require("__base__.prototypes.item_sounds")
local khaoslib_item = require("__khaoslib__.prototypes.item")

khaoslib_item:load {
  type = "item",
  name = "optical-fiber",
  subgroup = "cable",
  order = "a[basic-intermediates]-a[optical-fiber]",
  stack_size = 200,
  weight = 1 * kg,

  inventory_move_sound = item_sounds.wire_inventory_move,
  pick_sound = item_sounds.wire_inventory_pickup,
  drop_sound = item_sounds.wire_inventory_move,
} :set_icons {{icon = "__khaossilicon__/graphics/icons/optical-fiber.png", icon_size = 64}}
  :commit()
