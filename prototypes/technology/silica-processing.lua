local khaoslib_entity = require("__khaoslib__.prototypes.entity")
local khaoslib_technology = require("__khaoslib__.prototypes.technology")

local tech = khaoslib_technology:load {
  type = "technology",
  name = "silica-processing",
  localised_description = {"technology-description.silica-processing-vanilla"},
  order = "b-b",
} :set_icons {{icon = "__khaossilicon__/graphics/technology/silica-processing.png", icon_size = 256}}
  :set_prerequisites {"logistic-science-pack"}
  :set_unit {
    time = 30,
    count = 10,
    ingredients = {
      {"automation-science-pack", 1},
      {"logistic-science-pack", 1},
    },
  }
  :add_unlock_recipe("silica")

if not mods["khaoscarbon"] and khaoslib_entity.exists("assembling-machine", "basic-crusher") then
  tech:add_prerequisite("automation-2")
end

tech:commit()
