local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if mods["aai-signal-transmission"] then
  khaoslib_recipe:load("aai-signal-receiver"):add_ingredient {type = "item", name = "optical-fiber", amount = 2} :commit()
  khaoslib_recipe:load("aai-signal-sender"):add_ingredient {type = "item", name = "optical-fiber", amount = 2} :commit()
end
