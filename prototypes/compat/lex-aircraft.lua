local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if mods["lex-aircraft"] then
  if settings.startup["khaossilicon-more"].value then
    khaoslib_recipe:load("lex-flying-gunship"):add_ingredient {type = "item", name = "gyro", amount = 1} :commit()
    khaoslib_recipe:load("lex-flying-cargo"):add_ingredient {type = "item", name = "gyro", amount = 4} :commit()
    khaoslib_recipe:load("lex-flying-heavyship"):add_ingredient {type = "item", name = "gyro", amount = 4} :commit()
  end
end
