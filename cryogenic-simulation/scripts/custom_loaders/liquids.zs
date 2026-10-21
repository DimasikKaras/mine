#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

var liquidBlaze = VanillaFactory.createFluid("liquid_blaze", Color.fromHex("FF652D"));
liquidBlaze.temperature = 3000;
liquidBlaze.register();

var trollEyeGoop = VanillaFactory.createFluid("troll_eye_goop", Color.fromHex("CEA575"));
trollEyeGoop.register();

var blessedLifeEssence = VanillaFactory.createFluid("blessed_life_essence", Color.fromHex("F72133"));
blessedLifeEssence.register();

var fishOil = VanillaFactory.createFluid("fish_oil", Color.fromHex("EFA721"));
fishOil.register();

var ammoniumNitrateSolution = VanillaFactory.createFluid("ammonium_nitrate", Color.fromHex("FFFAD3"));
ammoniumNitrateSolution.register();

var deep_substrate_water = VanillaFactory.createFluid("deep_substrate_water", Color.fromHex("C0C6E8"));
deep_substrate_water.luminosity = 7;
deep_substrate_water.register();

var semi_liquid_sand = VanillaFactory.createFluid("almost_molten_sand", Color.fromHex("FDFFA0"));
semi_liquid_sand.register();

# aka Calcium oxide
var softenedQuicklime = VanillaFactory.createFluid("softened_quicklime", Color.fromHex("F9FFE2"));
softenedQuicklime.temperature = 2000;
softenedQuicklime.register();

var pureCalcium = VanillaFactory.createFluid("pure_calcium", Color.fromHex("FFFFFF"));
pureCalcium.register();

var subtNutrientDistill = VanillaFactory.createFluid("subterranean_nutrient_distillation", Color.fromHex("085E4A"));
subtNutrientDistill.register();

var nutrientWyrmMilk = VanillaFactory.createFluid("nutrient_wyrm_milk", Color.fromHex("81B766"));
nutrientWyrmMilk.register();

var shimmeringCrystalline = VanillaFactory.createFluid("shimmering_crystalline", Color.fromHex("42CCFF"));
shimmeringCrystalline.register();

var growTein = VanillaFactory.createFluid("growtein", Color.fromHex("A3D100"));
growTein.register();

var primalNature = VanillaFactory.createFluid("primal_nature", Color.fromHex("5ED100"));
primalNature.register();

var groveMana = VanillaFactory.createFluid("grove_mana", Color.fromHex("05FFC0"));
groveMana.register();

var superHeatedMiasma = VanillaFactory.createFluid("superheated_miasma", Color.fromHex("AE83EA"));
superHeatedMiasma.material = <blockmaterial:lava>;
superHeatedMiasma.stillLocation = "contenttweaker:fluids/molten_bright_still";
superHeatedMiasma.flowingLocation = "contenttweaker:fluids/molten_bright_flow";
superHeatedMiasma.temperature = 5000;
superHeatedMiasma.luminosity = 15;
superHeatedMiasma.register();

var moltenSilica = VanillaFactory.createFluid("silica", Color.fromHex("C1C1B2"));
moltenSilica.material = <blockmaterial:lava>;
moltenSilica.stillLocation = "contenttweaker:fluids/molten_bright_still";
moltenSilica.flowingLocation = "contenttweaker:fluids/molten_bright_flow";
moltenSilica.temperature = 2000;
moltenSilica.luminosity = 15;
moltenSilica.register();

var moltenSalt = VanillaFactory.createFluid("molten_salt", Color.fromHex("FFFFFF"));
moltenSalt.material = <blockmaterial:lava>;
moltenSalt.stillLocation = "contenttweaker:fluids/molten_still";
moltenSalt.flowingLocation = "contenttweaker:fluids/molten_flow";
moltenSalt.register();

var moltenPlutonium = VanillaFactory.createFluid("molten_salt_plutonium", Color.fromHex("FCFC00"));
moltenPlutonium.material = <blockmaterial:lava>;
moltenPlutonium.stillLocation = "contenttweaker:fluids/molten_still";
moltenPlutonium.flowingLocation = "contenttweaker:fluids/molten_flow";
moltenPlutonium.register();

var moltenVoid = VanillaFactory.createFluid("molten_void", Color.fromHex("021123"));
moltenVoid.material = <blockmaterial:lava>;
moltenVoid.stillLocation = "contenttweaker:fluids/molten_still";
moltenVoid.flowingLocation = "contenttweaker:fluids/molten_flow";
moltenVoid.register();

var moltenNuclearWaste = VanillaFactory.createFluid("molten_nuclear_waste", Color.fromHex("97FA40"));
moltenNuclearWaste.material = <blockmaterial:lava>;
moltenNuclearWaste.stillLocation = "contenttweaker:fluids/molten_bright_still";
moltenNuclearWaste.flowingLocation = "contenttweaker:fluids/molten_bright_flow";
moltenNuclearWaste.register();

var starBlood = VanillaFactory.createFluid("star_blood", Color.fromHex("CC00CC"));
starBlood.register();