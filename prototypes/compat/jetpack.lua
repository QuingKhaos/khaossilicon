local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")
local khaoslib_technology = require("__khaoslib__.prototypes.technology")

if mods["jetpack"] then
  if settings.startup["khaossilicon-more"].value then
    khaoslib_recipe:load("jetpack-2"):add_ingredient {type = "item", name = "gyro", amount = 2} :commit()
    khaoslib_technology:load("jetpack-2"):add_prerequisite("gyro"):commit()
  end
end
