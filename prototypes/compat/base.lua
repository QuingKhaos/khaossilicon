local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")
local khaoslib_technology = require("__khaoslib__.prototypes.technology")

khaoslib_recipe:load("concrete"):replace_ingredient("stone-brick", {type = "item", name = "silica", amount = 25}):commit()
khaoslib_technology:load("concrete"):add_prerequisite("silica-processing"):commit()

khaoslib_recipe:load("solar-panel")
  :replace_ingredient("electronic-circuit", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 10) return ingredient end)
  :add_ingredient {type = "item", name = "silicon", amount = 10}
  :commit()

khaoslib_recipe:load("processing-unit")
  :replace_ingredient("electronic-circuit", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 10) return ingredient end)
  :add_ingredient {type = "item", name = "silicon", amount = 6}
  :commit()

khaoslib_recipe:load("speed-module"):replace_ingredient("electronic-circuit", {type = "item", name = "silicon", amount = 3}):commit()
khaoslib_recipe:load("efficiency-module"):replace_ingredient("electronic-circuit", {type = "item", name = "silicon", amount = 3}):commit()
khaoslib_recipe:load("productivity-module"):replace_ingredient("electronic-circuit", {type = "item", name = "silicon", amount = 3}):commit()

if mods["quality"] then
  khaoslib_recipe:load("quality-module"):replace_ingredient("electronic-circuit", {type = "item", name = "silicon", amount = 3}):commit()
end

khaoslib_recipe:load("advanced-circuit")
  :replace_ingredient("electronic-circuit", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 1) return ingredient end)
  :add_ingredient {type = "item", name = "silicon", amount = 1}
  :commit()

khaoslib_technology:load("advanced-circuit"):add_prerequisite("silicon-processing"):commit()
khaoslib_technology:load("solar-energy"):add_prerequisite("silicon-processing"):commit()
khaoslib_technology:load("modules"):add_prerequisite("silicon-processing"):commit()
