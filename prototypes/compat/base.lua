local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")
local khaoslib_technology = require("__khaoslib__.prototypes.technology")

khaoslib_recipe:load("concrete"):replace_ingredient("stone-brick", {type = "item", name = "silica", amount = 25}):commit()
khaoslib_technology:load("concrete"):add_prerequisite("silica-processing"):commit()

if settings.startup["khaossilicon-more"].value then
  khaoslib_recipe:load("lubricant")
    :add_ingredient {type = "item", name = "silicone", amount = 1}
    :replace_result("lubricant", function(result) result.amount = result.amount and result.amount + 10 or 10 return result end)
    :commit()

  khaoslib_recipe:load("engine-unit")
    :replace_ingredient("pipe", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 1) return ingredient end)
    :add_ingredient {type = "item", name = "silicone", amount = 1}
    :commit()

  khaoslib_technology:load("engine"):add_prerequisite("silicon-processing"):commit()
  khaoslib_recipe:load("power-armor"):add_ingredient {type = "item", name = "silicone", amount = 10}:commit()
  khaoslib_recipe:load("exoskeleton-equipment"):add_ingredient {type = "item", name = "silicone", amount = 10}:commit()
  khaoslib_recipe:load("fission-reactor-equipment"):add_ingredient {type = "item", name = "silicone", amount = 80}:commit()
  khaoslib_recipe:load("personal-roboport-mk2-equipment"):add_ingredient {type = "item", name = "silicone", amount = 50}:commit()

  khaoslib_recipe:load("processing-unit")
    :replace_ingredient("electronic-circuit", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 10) return ingredient end)
    :add_ingredient {type = "item", name = "silicon-wafer", amount = 10}
    :commit()

  khaoslib_recipe:load("speed-module")
    :set {energy_required = (khaoslib_recipe.get("speed-module").energy_required --[[@as double]]) * 2}
    :replace_result("speed-module", function(result) result.amount = result.amount and result.amount * 2 or 0 return result end)
    :replace_ingredient("electronic-circuit", {type = "item", name = "silicon-wafer", amount = 5})
    :commit()

  khaoslib_recipe:load("efficiency-module")
    :set {energy_required = (khaoslib_recipe.get("efficiency-module").energy_required --[[@as double]]) * 2}
    :replace_result("efficiency-module", function(result) result.amount = result.amount and result.amount * 2 or 0 return result end)
    :replace_ingredient("electronic-circuit", {type = "item", name = "silicon-wafer", amount = 5})
    :commit()

  khaoslib_recipe:load("productivity-module")
    :set {energy_required = (khaoslib_recipe.get("productivity-module").energy_required --[[@as double]]) * 2}
    :replace_result("productivity-module", function(result) result.amount = result.amount and result.amount * 2 or 0 return result end)
    :replace_ingredient("electronic-circuit", {type = "item", name = "silicon-wafer", amount = 5})
    :commit()

  if mods["quality"] then
    khaoslib_recipe:load("quality-module")
      :set {energy_required = (khaoslib_recipe.get("quality-module").energy_required --[[@as double]]) * 2}
      :replace_result("quality-module", function(result) result.amount = result.amount and result.amount * 2 or 0 return result end)
      :replace_ingredient("electronic-circuit", {type = "item", name = "silicon-wafer", amount = 5})
      :commit()
  end

  khaoslib_recipe:load("advanced-circuit")
    :set {energy_required = (khaoslib_recipe.get("advanced-circuit").energy_required --[[@as double]]) * 3}
    :replace_result("advanced-circuit", function(result) result.amount = result.amount and result.amount * 3 or 0 return result end)
    :replace_ingredient("electronic-circuit", function(ingredient) ingredient.amount = math.max(1, ingredient.amount - 3) return ingredient end)
    :add_ingredient {type = "item", name = "silicon-wafer", amount = 3}
    :commit()
else
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

  khaoslib_technology:load("solar-energy"):add_prerequisite("silicon-processing"):commit()
  khaoslib_technology:load("modules"):add_prerequisite("silicon-processing"):commit()
end

khaoslib_recipe:load("arithmetic-combinator"):add_ingredient {type = "item", name = silicon_wafer_or_silicon, amount = 1}:commit()
khaoslib_recipe:load("constant-combinator"):add_ingredient {type = "item", name = silicon_wafer_or_silicon, amount = 1}:commit()
khaoslib_recipe:load("decider-combinator"):add_ingredient {type = "item", name = silicon_wafer_or_silicon, amount = 1}:commit()
khaoslib_recipe:load("programmable-speaker"):add_ingredient {type = "item", name = silicon_wafer_or_silicon, amount = 1}:commit()

khaoslib_technology:load("advanced-circuit"):add_prerequisite("silicon-processing"):commit()
khaoslib_technology:load("circuit-network"):add_prerequisite("silicon-processing"):commit()

if settings.startup["khaossilicon-more"].value then
  khaoslib_technology:load("advanced-circuit"):add_prerequisite("sulfur-processing"):add_unlock_recipe("silicon-wafer"):commit()
  khaoslib_technology:load("circuit-network"):add_prerequisite("advanced-circuit"):commit()
  khaoslib_technology:load("solar-energy"):add_prerequisite("advanced-circuit"):commit()
end
