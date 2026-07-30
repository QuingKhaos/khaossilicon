local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")
local khaoslib_technology = require("__khaoslib__.prototypes.technology")

khaoslib_recipe:load("concrete"):replace_ingredient("stone-brick", {type = "item", name = "silica", amount = 25}):commit()
khaoslib_technology:load("concrete"):add_prerequisite("silica-processing"):commit()
