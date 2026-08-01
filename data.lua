require("__khaossilicon__.prototypes.item.silica")
require("__khaossilicon__.prototypes.item.silicon")
require("__khaossilicon__.prototypes.item.silicone")
require("__khaossilicon__.prototypes.item.silicon-wafer")
require("__khaossilicon__.prototypes.item.solar-cell")
require("__khaossilicon__.prototypes.item.optical-fiber")
require("__khaossilicon__.prototypes.item.gyro")

require("__khaossilicon__.prototypes.item-subgroup.cable")

require("__khaossilicon__.prototypes.recipe.silica")
require("__khaossilicon__.prototypes.recipe.silicon")
require("__khaossilicon__.prototypes.recipe.silicone")
require("__khaossilicon__.prototypes.recipe.silicon-wafer")
require("__khaossilicon__.prototypes.recipe.solar-cell")
require("__khaossilicon__.prototypes.recipe.optical-fiber")
require("__khaossilicon__.prototypes.recipe.gyro")

require("__khaossilicon__.prototypes.technology.silica-processing")
require("__khaossilicon__.prototypes.technology.silicon-processing")
require("__khaossilicon__.prototypes.technology.fiber-optics")
require("__khaossilicon__.prototypes.technology.gyro")

--- Either silicon wafers or silicon, if not enabled.
--- @type data.ItemID
silicon_wafer_or_silicon = settings.startup["khaossilicon-more"].value and "silicon-wafer" or "silicon"

require("__khaossilicon__.prototypes.compat.base")

require("__khaossilicon__.prototypes.compat.jetpack")
require("__khaossilicon__.prototypes.compat.lex-aircraft")
