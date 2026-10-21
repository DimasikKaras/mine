import mods.modularmachinery.RecipeBuilder;
import crafttweaker.enchantments.IEnchantmentDefinition;
import scripts.helpers;
import crafttweaker.data.IData;

var altarOfBlessingsBlueprint = <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:altar_of_blessings"});
helpers.addAtlasTip(altarOfBlessingsBlueprint, [
    format.yellow("Only functions when the spectral relay is holding a Blood Raven Feather"),
    format.yellow("The Altar of Cosmic Transmutation has the same block structure, the only difference is the relay contents.")
]);

var altarOfCosmicTransmutationBP = <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:altar_of_cosmic_divination"});
helpers.addAtlasTip(altarOfCosmicTransmutationBP, [
    format.yellow("Only functions when the spectral relay is holding a Pristine Ocular Lens"),
    format.yellow("The Altar of Blessings has the same block structure, the only difference is the relay contents.")
]);

var enderiumInfusionBasinBP = <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:enderium_infusion_basin"});
helpers.addAtlasTip(enderiumInfusionBasinBP, [
    format.yellow("Only functions when all tanks in the structure is filled with Resonant Ender")
]);

var sporeReactorBP = <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:spore_reactor"});
helpers.addAtlasTip(sporeReactorBP, [
    format.yellow("Midnight Mycelium can only be placed in the Midnight"),
    format.yellow("Therefore this structure will only function in the Midnight")
]);

var denseNeutronBP = <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:dense_neutron_collider"});
helpers.addAtlasTip(denseNeutronBP, [
    format.yellow("Only functions when the middle tank is filled with Nuclear Waste"),
]);

var saltReactor = <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:molten_salt_reactor"});
helpers.addAtlasTip(saltReactor, [
    format.yellow("Only functions when:"),
    format.yellow("Middle tank is filled with Molten Uranium"),
    format.yellow("All other tanks are filled with Molten Salt")
]);

var starEngine = <modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:star_engine"});
helpers.addAtlasTip(starEngine, [
    format.yellow("Only functions when:"),
    format.yellow("The tanks under the four pillars are filled with Irradiated Star Blood"),
]);

# ----------------
# Recipes
# ----------------
recipes.removeByMod("modularmachinery");

# Casing
var marble = <astralsorcery:blockmarble> | <chisel:marble2:7>;
recipes.addShaped("mm_casing", <modularmachinery:blockcasing> * 4, [
    [<ore:blockSheetmetalSilver>, marble, <ore:blockSheetmetalSilver>],
    [marble, <tconstruct:large_plate>.withTag({Material: "silver"}), marble],
    [<ore:blockSheetmetalSilver>, marble, <ore:blockSheetmetalSilver>],
]);

# Controller
recipes.addShaped("mm_controller",<modularmachinery:blockcontroller>, [
    [<ore:ingotElectrum>, <ore:glassLensPristine>, <ore:ingotElectrum>],
    [<ore:gearSanguineMetal>, <modularmachinery:blockcasing>, <ore:gearSanguineMetal>],
    [<ore:plateSanguineMetal>, <ore:dustAstralStarmetal>, <ore:plateSanguineMetal>],
]);

# Item Input Hatch
recipes.addShaped("mm_iteminput", <modularmachinery:blockinputbus:6>, [
    [<ore:chestWood>],
    [<modularmachinery:blockcasing>],
    [null],
]);

# Item Output Hatch
recipes.addShaped("mm_itemoutput", <modularmachinery:blockoutputbus:6>, [
    [null],
    [<modularmachinery:blockcasing>],
    [<ore:chestWood>],
]);

# Fluid Input Hatch
recipes.addShaped("mm_fluidinput", <modularmachinery:blockfluidinputhatch:7>, [
    [<minecraft:bucket>],
    [<modularmachinery:blockcasing>],
    [null],
]);

# Fluid Output Hatch
recipes.addShaped("mm_fluidoutput", <modularmachinery:blockfluidoutputhatch:7>, [
    [null],
    [<modularmachinery:blockcasing>],
    [<minecraft:bucket>],
]);

# Energy Input Hatch
recipes.addShaped("mm_energyinput", <modularmachinery:blockenergyinputhatch:6>, [
    [<thermaldynamics:duct_0>],
    [<modularmachinery:blockcasing>],
    [null],
]);

# Energy Output Hatch
recipes.addShaped("mm_energyoutput", <modularmachinery:blockenergyoutputhatch:6>, [
    [null],
    [<modularmachinery:blockcasing>],
    [<thermaldynamics:duct_0>],
]);

# LP input hatch
recipes.addShaped("mm_lp_input", <modularmagic:blocklifeessenceproviderinput>, [
    [<forge:bucketfilled>.withTag({FluidName: "lifeessence", Amount: 1000})],
    [<modularmachinery:blockcasing>],
]);


# Transfer recipes
recipes.addShapeless("output_to_input_itemhatch", <modularmachinery:blockinputbus:6>, [<modularmachinery:blockoutputbus:6>]);
recipes.addShapeless("input_to_output_itemhatch", <modularmachinery:blockoutputbus:6>, [<modularmachinery:blockinputbus:6>]);

recipes.addShapeless("output_to_input_fluidhatch", <modularmachinery:blockfluidinputhatch:7>, [<modularmachinery:blockfluidoutputhatch:7>]);
recipes.addShapeless("input_to_output_fluidhatch", <modularmachinery:blockfluidoutputhatch:7>, [<modularmachinery:blockfluidinputhatch:7>]);

recipes.addShapeless("output_to_input_energyhatch", <modularmachinery:blockenergyinputhatch:6>, [<modularmachinery:blockenergyoutputhatch:6>]);
recipes.addShapeless("input_to_output_energyhatch", <modularmachinery:blockenergyoutputhatch:6>, [<modularmachinery:blockenergyinputhatch:6>,]);

# --------------------------
# Altar of Blessings Recipes
# --------------------------
var blessFrame = RecipeBuilder.newBuilder("blessFrame", "altar_of_blessings", 120);
blessFrame.addItemInput(<thermalexpansion:frame>);
blessFrame.addItemInput(<ore:gemAquamarine>.firstItem * 12);
blessFrame.addItemInput(<contenttweaker:blood_raven_feather> * 2);
blessFrame.addItemInput(<ore:ingotAstralStarmetal>.firstItem * 2);
blessFrame.addItemInput(<astralsorcery:itemusabledust> * 2);
blessFrame.addItemInput(<ore:slateTier1>);
blessFrame.addFluidInput(<liquid:blessed_life_essence> * 250);
blessFrame.addFluidInput(<liquid:astralsorcery.liquidstarlight> * 250);
blessFrame.addItemOutput(g_blessedMachineFrame);
blessFrame.build();

var blessConnector = RecipeBuilder.newBuilder("blessConnector", "altar_of_blessings", 40);
blessConnector.addItemInput(<immersiveengineering:connector:4>);
blessConnector.addItemInput(<astralsorcery:itemcraftingcomponent> * 4);
blessConnector.addItemInput(<contenttweaker:blood_raven_feather>);
blessConnector.addItemInput(<astralsorcery:itemusabledust>);
blessConnector.addItemInput(<astralsorcery:itemusabledust:1>);
blessConnector.addFluidInput(<liquid:blessed_life_essence> * 100);
blessConnector.addFluidInput(<liquid:astralsorcery.liquidstarlight> * 100);
blessConnector.addItemOutput(g_blessedConnector);
blessConnector.build();

var blessServo = RecipeBuilder.newBuilder("blessServo", "altar_of_blessings", 40);
blessServo.addItemInput(<thermalfoundation:material:512>);
blessServo.addItemInput(<astralsorcery:itemcraftingcomponent> * 4);
blessServo.addItemInput(<contenttweaker:blood_raven_feather>);
blessServo.addItemInput(<astralsorcery:itemusabledust>);
blessServo.addItemInput(<astralsorcery:itemusabledust:1>);
blessServo.addFluidInput(<liquid:blessed_life_essence> * 100);
blessServo.addFluidInput(<liquid:astralsorcery.liquidstarlight> * 100);
blessServo.addItemOutput(g_blessedServo);
blessServo.build();

var blessedManaLifeGear = RecipeBuilder.newBuilder("bless_gear_manalife", "altar_of_blessings", 180);
blessedManaLifeGear.addItemInput(<contenttweaker:gear_life_mana>);
blessedManaLifeGear.addItemInput(<astralsorcery:itemcraftingcomponent> * 64);
blessedManaLifeGear.addItemInput(<contenttweaker:blood_raven_feather> * 64);
blessedManaLifeGear.addItemInput(<ore:ingotAstralStarmetal>, 32);
blessedManaLifeGear.addItemInput(<astralsorcery:itemusabledust> * 32);
blessedManaLifeGear.addFluidInput(<liquid:blessed_life_essence> * 32000);
blessedManaLifeGear.addFluidInput(<liquid:astralsorcery.liquidstarlight> * 32000);
blessedManaLifeGear.addItemOutput(g_blessedManaLifeGear);
blessedManaLifeGear.build();


# ---------------------------------
# Altar of Cosmic Transmutation
# ---------------------------------
var arditeOre = RecipeBuilder.newBuilder("arditeOre", "altar_of_cosmic_divination", 80);
arditeOre.addItemInput(<industrialforegoing:laser_lens:1>);
arditeOre.setChance(0);
arditeOre.addItemInput(<ore:oreCopper>.firstItem);
arditeOre.addItemInput(<contenttweaker:block_blaze_powder>);
arditeOre.addItemInput(<thermalfoundation:material:865>);
arditeOre.addFluidInput(<liquid:blessed_life_essence> * 50);
arditeOre.addFluidInput(<liquid:astralsorcery.liquidstarlight> * 50);
arditeOre.addItemOutput(<tconstruct:ore:1>);
arditeOre.build();

var cobaltOre = RecipeBuilder.newBuilder("cobaltOre", "altar_of_cosmic_divination", 80);
cobaltOre.addItemInput(<industrialforegoing:laser_lens:11>);
cobaltOre.setChance(0);
cobaltOre.addItemInput(<ore:oreSilver>.firstItem);
cobaltOre.addItemInput(<minecraft:lapis_block>);
cobaltOre.addItemInput(<thermalfoundation:material:865>);
cobaltOre.addFluidInput(<liquid:blessed_life_essence> * 50);
cobaltOre.addFluidInput(<liquid:astralsorcery.liquidstarlight> * 50);
cobaltOre.addItemOutput(<tconstruct:ore>);
cobaltOre.build();

var redCanyonDust = RecipeBuilder.newBuilder("red_canyon_dust", "altar_of_cosmic_divination", 80);
redCanyonDust.addItemInput(<industrialforegoing:laser_lens:14>);
redCanyonDust.setChance(0);
redCanyonDust.addItemInput(<deepmoblearning:living_matter_hellish>);
redCanyonDust.addItemInput(<minecraft:sand> * 64);
redCanyonDust.addItemInput(<minecraft:sand> * 64);
redCanyonDust.addItemInput(<minecraft:sand> * 64);
redCanyonDust.addItemInput(<minecraft:sand> * 64);
redCanyonDust.addFluidInput(<liquid:blessed_life_essence> * 25);
redCanyonDust.addFluidInput(<liquid:astralsorcery.liquidstarlight> * 25);
redCanyonDust.addItemOutput(<contenttweaker:red_canyon_dust> * 64);
redCanyonDust.addItemOutput(<contenttweaker:red_canyon_dust> * 64);
redCanyonDust.addItemOutput(<contenttweaker:red_canyon_dust> * 64);
redCanyonDust.addItemOutput(<contenttweaker:red_canyon_dust> * 64);
redCanyonDust.addItemOutput(<contenttweaker:red_canyon_dust> * 64);
redCanyonDust.addItemOutput(<contenttweaker:red_canyon_dust> * 64);
redCanyonDust.build();

# ---------------------------------
# Thermoelectric Generator Recipes
# ---------------------------------
var starlightAndLava = RecipeBuilder.newBuilder("thermoelectric_starlight_lava", "thermoelectric_generator", 1);
starlightAndLava.addFluidInput(<liquid:astralsorcery.liquidstarlight>);
starlightAndLava.setChance(0.05);
starlightAndLava.addFluidInput(<liquid:lava>);
starlightAndLava.setChance(0.15);
starlightAndLava.addEnergyPerTickOutput(1800);
starlightAndLava.build();

var starlightAndBlaze = RecipeBuilder.newBuilder("thermoelectric_starlight_blaze", "thermoelectric_generator", 1);
starlightAndBlaze.addFluidInput(<liquid:astralsorcery.liquidstarlight>);
starlightAndBlaze.setChance(0.05);
starlightAndBlaze.addFluidInput(<liquid:liquid_blaze>);
starlightAndBlaze.setChance(0.10);
starlightAndBlaze.addEnergyPerTickOutput(4500);
starlightAndBlaze.build();

var starlightAndPyro = RecipeBuilder.newBuilder("thermoelectric_starlight_pyrotheum", "thermoelectric_generator", 1);
starlightAndPyro.addFluidInput(<liquid:astralsorcery.liquidstarlight>);
starlightAndPyro.setChance(0.05);
starlightAndPyro.addFluidInput(<liquid:pyrotheum>);
starlightAndPyro.setChance(0.05);
starlightAndPyro.addEnergyPerTickOutput(10500);
starlightAndPyro.build();

# --------------------
# Industrial Assembler
# --------------------
var masteryTokenSim1 = RecipeBuilder.newBuilder("ia_mtoken_one", "industrial_assembler", 100);
masteryTokenSim1.addEnergyPerTickInput(20000);
masteryTokenSim1.addItemInput(<contenttweaker:faux_steel> * 64);
masteryTokenSim1.addItemInput(<immersiveengineering:treated_wood> * 64);
masteryTokenSim1.addItemInput(<extrautils2:compressedcobblestone> * 64);
masteryTokenSim1.addItemInput(<ore:ingotBrickSeared>, 64);
masteryTokenSim1.addItemInput(<ore:ingotBrickDried>, 64);
masteryTokenSim1.addItemInput(<minecraft:string> * 64);
masteryTokenSim1.addItemInput(<minecraft:magma> * 32);
masteryTokenSim1.addItemInput(<exnihilocreatio:block_dust> * 16);
masteryTokenSim1.addItemOutput(<contenttweaker:mastery_token_sim_one>);
masteryTokenSim1.build();

var masteryTokenSim2 = RecipeBuilder.newBuilder("ia_mtoken_two", "industrial_assembler", 100);
masteryTokenSim2.addEnergyPerTickInput(20000);
masteryTokenSim2.addItemInput(<ore:slateTier1>, 64);
masteryTokenSim2.addItemInput(<cryosimadditions:blood_resin_log> * 64);
masteryTokenSim2.addItemInput(<astralsorcery:itemusabledust> * 48);
masteryTokenSim2.addItemInput(<ore:ingotSanguineMetal>, 32);
masteryTokenSim2.addItemInput(<ore:ravenFeather>, 32);
masteryTokenSim2.addItemInput(<inspirations:edibles> * 24);
masteryTokenSim2.addItemInput(<ore:ingotAstralStarmetal>, 16);
masteryTokenSim2.addItemInput(<ore:trollEye>, 4);
masteryTokenSim2.addItemOutput(<contenttweaker:mastery_token_sim_two>);
masteryTokenSim2.build();

var masteryTokenSim3 = RecipeBuilder.newBuilder("ia_mtoken_three", "industrial_assembler", 100);
masteryTokenSim3.addEnergyPerTickInput(20000);
masteryTokenSim3.addItemInput(<ore:plastic>, 64);
masteryTokenSim3.addItemInput(<minecraft:nether_brick> * 64);
masteryTokenSim3.addItemInput(<ore:ingotIronCompressed>, 32);
masteryTokenSim3.addItemInput(<ore:crystalFluix>, 32);
masteryTokenSim3.addItemInput(<contenttweaker:lubricated_gear> * 10);
masteryTokenSim3.addItemInput(<appliedenergistics2:material:23> * 6);
masteryTokenSim3.addItemInput(<pneumaticcraft:transistor> * 4);
masteryTokenSim3.addItemInput(<pneumaticcraft:capacitor> * 4);
masteryTokenSim3.addItemOutput(<contenttweaker:mastery_token_sim_three>);
masteryTokenSim3.build();

var masteryTokenSim4 = RecipeBuilder.newBuilder("ia_mtoken_four", "industrial_assembler", 100);
masteryTokenSim4.addEnergyPerTickInput(20000);
masteryTokenSim4.addItemInput(<deepmoblearning:soot_covered_redstone> * 64);
masteryTokenSim4.addItemInput(<ore:livingrock>, 64);
masteryTokenSim4.addItemInput(<ore:livingwood>, 64);
masteryTokenSim4.addItemInput(<ore:manaPearl>, 32);
masteryTokenSim4.addItemInput(<astralsorcery:itemcraftingcomponent:4> * 16);
masteryTokenSim4.addItemInput(<botania:storage:4> * 4);
masteryTokenSim4.addItemInput(<extrautils2:cursedearth> * 4);
masteryTokenSim4.addItemInput(<contenttweaker:twinkling_star> * 4);
masteryTokenSim4.addItemOutput(<contenttweaker:mastery_token_sim_four>);
masteryTokenSim4.build();

var masteryTokenSim5 = RecipeBuilder.newBuilder("ia_mtoken_five", "industrial_assembler", 100);
masteryTokenSim5.addEnergyPerTickInput(20000);
masteryTokenSim5.addItemInput(<contenttweaker:block_calcium> * 64);
masteryTokenSim5.addItemInput(<ore:blockSalt>, 64);
masteryTokenSim5.addItemInput(<ore:itemSilicon>, 64);
masteryTokenSim5.addItemInput(<ore:alloyUltimate>, 8);
masteryTokenSim5.addItemInput(<contenttweaker:void_crystal> * 2);
masteryTokenSim5.addItemInput(<ore:itemWeatherCrystal>, 1);
masteryTokenSim5.addItemInput(<ore:singularityStellar>, 1);
masteryTokenSim5.addItemInput(<contenttweaker:nuclear_waste_rod>);
masteryTokenSim5.addItemOutput(<contenttweaker:mastery_token_sim_five>);
masteryTokenSim5.build();

var vacuumTube = RecipeBuilder.newBuilder("ia_vacuum_tube", "industrial_assembler", 40);
vacuumTube.addEnergyPerTickInput(400);
vacuumTube.addItemInput(<ore:plateSilver>.firstItem * 8);
vacuumTube.addItemInput(<ore:blockGlass>.firstItem * 4);
vacuumTube.addItemInput(<ore:dustCoal>.firstItem * 4);
vacuumTube.addItemInput(<ore:ingotElectrum>, 4);
vacuumTube.addItemOutput(<immersiveengineering:material:26> * 16);
vacuumTube.build();

var circuitBoard = RecipeBuilder.newBuilder("ia_circuit_board", "industrial_assembler", 20);
circuitBoard.addEnergyPerTickInput(400);
circuitBoard.addItemInput(<immersiveengineering:material:26> * 4);
circuitBoard.addItemInput(<ore:plateCopper>.firstItem * 4);
circuitBoard.addItemInput(<ore:dyeGreen>.firstItem * 4);
circuitBoard.addItemInput(<ore:ingotElectrum>, 4);
circuitBoard.addItemOutput(<immersiveengineering:material:27> * 4);
circuitBoard.build();

var ironComponent = RecipeBuilder.newBuilder("ia_iron_component", "industrial_assembler", 40);
ironComponent.addEnergyPerTickInput(400);
ironComponent.addItemInput(<ore:plateIron>.firstItem * 8);
ironComponent.addItemInput(<ore:ingotLead>.firstItem * 4);
ironComponent.addItemInput(<ore:blockRedstone>.firstItem * 4);
ironComponent.addItemOutput(<immersiveengineering:material:8> * 16);
ironComponent.build();

var steelComponent = RecipeBuilder.newBuilder("ia_steel_component", "industrial_assembler", 40);
steelComponent.addEnergyPerTickInput(400);
steelComponent.addItemInput(<ore:plateSteel>.firstItem * 8);
steelComponent.addItemInput(<ore:ingotLead>.firstItem * 4);
steelComponent.addItemInput(<ore:blockRedstone>.firstItem * 4);
steelComponent.addItemOutput(<immersiveengineering:material:9> * 16);
steelComponent.build();

var machineFrame = RecipeBuilder.newBuilder("ia_machine_frame", "industrial_assembler", 120);
machineFrame.addEnergyPerTickInput(400);
machineFrame.addItemInput(<immersiveengineering:metal_decoration0:5> * 4);
machineFrame.addItemInput(<ore:blockGlass>.firstItem * 4);
machineFrame.addItemInput(<ore:blockRedstone>.firstItem * 12);
machineFrame.addItemInput(<ore:gearSanguineMetal>.firstItem * 4);
machineFrame.addItemOutput(<thermalexpansion:frame> * 4);
machineFrame.build();

var deviceFrame = RecipeBuilder.newBuilder("ia_device_frame", "industrial_assembler", 120);
deviceFrame.addEnergyPerTickInput(400);
deviceFrame.addItemInput(<ore:plateTin>.firstItem * 16);
deviceFrame.addItemInput(<ore:blockRedstone>.firstItem * 4);
deviceFrame.addItemInput(<ore:gearCopper>.firstItem * 4);
deviceFrame.addItemOutput(<thermalexpansion:frame:64> * 16);
deviceFrame.build();

var servo = RecipeBuilder.newBuilder("ia_servo", "industrial_assembler", 60);
servo.addEnergyPerTickInput(400);
servo.addItemInput(<ore:stickIron>.firstItem * 4);
servo.addItemInput(<ore:wireSteel>.firstItem * 8);
servo.addItemInput(<ore:blockRedstone>.firstItem * 4);
servo.addItemOutput(<thermalfoundation:material:512> * 4);
servo.build();

var conductanceCoil = RecipeBuilder.newBuilder("ia_conductance_coil", "industrial_assembler", 20);
conductanceCoil.addEnergyPerTickInput(400);
conductanceCoil.addItemInput(<ore:stickIron>.firstItem * 4);
conductanceCoil.addItemInput(<ore:wireElectrum>.firstItem * 12);
conductanceCoil.addItemInput(<ore:blockRedstone>.firstItem * 4);
conductanceCoil.addItemOutput(<thermalfoundation:material:515> * 4);
conductanceCoil.build();

var capacitor = RecipeBuilder.newBuilder("pn_capacitor", "industrial_assembler", 20);
capacitor.addEnergyPerTickInput(400);
capacitor.addItemInput(<ore:stickSteel>.firstItem * 8);
capacitor.addItemInput(<pneumaticcraft:plastic:12> * 4);
capacitor.addItemInput(<ore:ingotElectrum>.firstItem * 4);
capacitor.addItemInput(<ore:crystalFluix>.firstItem * 4);
capacitor.addItemOutput(<pneumaticcraft:capacitor> * 4);
capacitor.build();

var transistor = RecipeBuilder.newBuilder("pn_transistor", "industrial_assembler", 20);
transistor.addEnergyPerTickInput(400);
transistor.addItemInput(<ore:stickSteel>.firstItem * 12);
transistor.addItemInput(<pneumaticcraft:plastic:8> * 4);
transistor.addItemInput(<ore:ingotElectrum>.firstItem * 4);
transistor.addItemInput(<ore:crystalFluix>.firstItem * 4);
transistor.addItemOutput(<pneumaticcraft:transistor> * 4);
transistor.build();

var advancedPcb = RecipeBuilder.newBuilder("pn_advanced_pcb", "industrial_assembler", 80);
advancedPcb.addEnergyPerTickInput(900);
advancedPcb.addItemInput(<appliedenergistics2:material:35> * 2);
advancedPcb.addItemInput(<pneumaticcraft:printed_circuit_board>);
advancedPcb.addItemOutput(<pneumaticcraft:advanced_pcb> * 2);
advancedPcb.build();

var crystalCompoundChunk = RecipeBuilder.newBuilder("crystal_compound", "industrial_assembler", 80);
crystalCompoundChunk.addEnergyPerTickInput(900);
crystalCompoundChunk.addItemInput(<contenttweaker:dust_bloomcrystal> * 32);
crystalCompoundChunk.addItemInput(<contenttweaker:dust_kalthrite> * 32);
crystalCompoundChunk.addItemInput(<ore:dustQuartz>, 32);
crystalCompoundChunk.addItemInput(<contenttweaker:dust_infused_mana> * 20);
crystalCompoundChunk.addItemInput(<contenttweaker:dust_rouxe_enderium> * 16);
crystalCompoundChunk.addItemOutput(<ore:itemAttractorCrystal>.firstItem);
crystalCompoundChunk.build();

var combatSimBlock = RecipeBuilder.newBuilder("ia_combat_simulation_portal_block", "industrial_assembler", 1000);
combatSimBlock.addEnergyPerTickInput(900);
combatSimBlock.addItemInput(<deepmoblearning:machine_casing>);
combatSimBlock.addItemInput(<appliedenergistics2:controller> * 4);
combatSimBlock.addItemInput(<minecraft:nether_brick> * 32);
combatSimBlock.addItemInput(<appliedenergistics2:material:7> * 64);
combatSimBlock.addItemInput(<deepmoblearning:soot_covered_redstone> * 64);
combatSimBlock.addItemInput(<tconstruct:materials> * 64);
combatSimBlock.addItemInput(<pneumaticcraft:plastic:5> * 64);
combatSimBlock.addItemInput(<contenttweaker:lubricated_gear> * 16);
combatSimBlock.addItemInput(<pneumaticcraft:capacitor> * 8);
combatSimBlock.addItemOutput(<contenttweaker:combat_simulation_portal_block>);
combatSimBlock.build();

var radiationWasteContainer = RecipeBuilder.newBuilder("ia_radiation_waste_container", "industrial_assembler", 180);
radiationWasteContainer.addEnergyPerTickInput(4500);
radiationWasteContainer.addItemInput(<contenttweaker:dust_kalthrite> * 32);
radiationWasteContainer.addItemInput(<ore:blockAluminum>, 32);
radiationWasteContainer.addItemInput(<ore:blockLead>, 32);
radiationWasteContainer.addItemInput(<ore:blockIridium>, 8);
radiationWasteContainer.addItemInput(<ore:blockPlatinum>, 8);
radiationWasteContainer.addItemInput(<mekanism:polyethene:1> * 3);
radiationWasteContainer.addItemOutput(<contenttweaker:rod_packed>);
radiationWasteContainer.build();

var treeCutter = RecipeBuilder.newBuilder("steve_cart_tree_cutter", "industrial_assembler", 500);
treeCutter.addEnergyPerTickInput(900);
treeCutter.addItemInput(<stevescarts:cartmodule:81>);
treeCutter.addItemInput(<minecraft:redstone_block> * 32);
treeCutter.addItemInput(<ore:ingotBrickNether>, 32);
treeCutter.addItemInput(<thermalfoundation:storage_alloy> * 4);
treeCutter.addItemInput(<thermalfoundation:material:657> * 4);
treeCutter.addItemInput(<tconstruct:broad_axe_head>.withTag({Material: "manyullyn"}) * 2);
treeCutter.addItemInput(<tconstruct:seared_tank> * 2);
treeCutter.addItemInput(<minecraft:chest> * 2);
treeCutter.addItemInput(<thermalexpansion:tank>);
treeCutter.addItemOutput(g_treeCutter3000);
treeCutter.build();

# ----------------
# Mass Drying Chamber
# ----------------
var brittlePlastic = RecipeBuilder.newBuilder("dc_brittle_plastic", "drying_chamber", 220);
brittlePlastic.addItemInput(<industrialforegoing:dryrubber> * 32);
brittlePlastic.addItemOutput(<ore:itemRubber>.firstItem  * 32);
brittlePlastic.build();

var brick = RecipeBuilder.newBuilder("dc_brick", "drying_chamber", 220);
brick.addItemInput(<minecraft:clay_ball> * 32);
brick.addItemOutput(<ore:ingotBrickDried>.firstItem * 32);
brick.build();

var leather = RecipeBuilder.newBuilder("dc_leather", "drying_chamber", 220);
leather.addItemInput(<minecraft:rotten_flesh> * 32);
leather.addItemOutput(<minecraft:leather> * 32);
leather.build();

var leatherPig = RecipeBuilder.newBuilder("dc_leather_pig", "drying_chamber", 220);
leatherPig.addItemInput(<contenttweaker:pig_skin> * 32);
leatherPig.addItemOutput(<minecraft:leather> * 32);
leatherPig.build();

# ----------------
# Spore Reactor
# ----------------
var spore_mana_dust = RecipeBuilder.newBuilder("spore_mana_dust_dust", "spore_reactor", 60);
spore_mana_dust.addFluidInput(<liquid:dark_water> * 2000);
spore_mana_dust.addItemInput(<ore:mushroomAny>, 8);
spore_mana_dust.addItemInput(<ore:dustManaShroom>, 4);
spore_mana_dust.addItemOutput(<thermalfoundation:material:1028>);
spore_mana_dust.addItemOutput(<botania:grassseeds:2>);
spore_mana_dust.setChance(0.1);
spore_mana_dust.build();


# --------------------
# Enderium Infusion Basin
# --------------------
var netherStar = RecipeBuilder.newBuilder("nether_star", "enderium_infusion_basin", 200);
netherStar.addEnergyPerTickInput(5000);
netherStar.addItemInput(<deepmoblearning:living_matter_extraterrestrial> * 64);
netherStar.addItemInput(<ore:ingotAstralStarmetal>.firstItem * 32);
netherStar.addItemInput(<ore:ingotLumium>.firstItem * 16);
netherStar.addItemInput(<astralsorcery:itemcraftingcomponent:4> * 8);
netherStar.addItemInput(<deepmoblearning:pristine_matter_wither_skeleton> * 6);
netherStar.addItemInput(<deepmoblearning:pristine_matter_enderman> * 6);
netherStar.addFluidInput(<liquid:astralsorcery.liquidstarlight> * 16000);
netherStar.addItemOutput(<minecraft:nether_star>);
netherStar.build();

var superHeatedFrame = RecipeBuilder.newBuilder("superheated_frame", "enderium_infusion_basin", 80);
superHeatedFrame.addEnergyPerTickInput(7500);
superHeatedFrame.addItemInput(<ore:itemMachineChassi>.firstItem);
superHeatedFrame.addItemInput(<ore:ingotEnderium>.firstItem * 16);
superHeatedFrame.addItemInput(<astralsorcery:itemcraftingcomponent:4> * 8);
superHeatedFrame.addItemInput(<ore:blockPlatinum>.firstItem * 4);
superHeatedFrame.addItemInput(<ore:blockIridium>.firstItem * 4);
superHeatedFrame.addItemInput(<botania:rune:8> * 2);
superHeatedFrame.addItemInput(<ore:singularityOsmium>);
superHeatedFrame.addItemInput(<ore:singularityRedstone>);
superHeatedFrame.addItemInput(<ore:singularityIron>);
superHeatedFrame.addFluidInput(<liquid:superheated_miasma> * 10000);
superHeatedFrame.addItemOutput(<mekanism:basicblock:8>);
superHeatedFrame.build();

var veneratedWorldWyrm = RecipeBuilder.newBuilder("venerated_wyrm", "enderium_infusion_basin", 300);
veneratedWorldWyrm.addEnergyPerTickInput(25000);
veneratedWorldWyrm.addItemInput(<contenttweaker:tunneling_world_wyrm>);
veneratedWorldWyrm.addItemInput(<ore:livingMatterEnd>, 64);
veneratedWorldWyrm.addItemInput(<ore:blockDarkSteel>, 48);
veneratedWorldWyrm.addItemInput(<ore:singularityIron>, 32);
veneratedWorldWyrm.addItemInput(<ore:singularityRedstone>, 24);
veneratedWorldWyrm.addItemInput(<ore:singularityGold>, 16);
veneratedWorldWyrm.addItemInput(<ore:skullEnderResonator>, 32);
veneratedWorldWyrm.addItemInput(<ore:skullGuardianDiode>, 32);
veneratedWorldWyrm.addItemInput(<ore:itemWeatherCrystal>, 4);
veneratedWorldWyrm.addFluidInput(<liquid:molten_nuclear_waste> * 2000);
veneratedWorldWyrm.addItemOutput(<contenttweaker:venerated_tunneling_world_wyrm>);
veneratedWorldWyrm.build();

var gearStellar = RecipeBuilder.newBuilder("gear_stellar", "enderium_infusion_basin", 200);
gearStellar.addEnergyPerTickInput(15000);
gearStellar.addItemInput(g_blessedManaLifeGear);
gearStellar.addItemInput(<astralsorcery:itemcraftingcomponent:4> * 64);
gearStellar.addItemInput(<ore:dustMana>, 16);
gearStellar.addItemInput(<ore:slateTier4>, 4);
gearStellar.addItemInput(<contenttweaker:void_crystal> * 4);
gearStellar.addItemInput(<ore:singularityStellar>, 2);
gearStellar.addFluidInput(<liquid:molten_nuclear_waste> * 1000);
gearStellar.addItemOutput(<contenttweaker:gear_stellar>);
gearStellar.build();

# ----------------
# World Wyrm Burrow
# ----------------
var quarryRecipe = RecipeBuilder.newBuilder("quarry_wyrm", "world_wyrm_burrow", 20);
quarryRecipe.addFluidInput(<liquid:nutrient_wyrm_milk> * 5);
quarryRecipe.addItemInput(<contenttweaker:tunneling_world_wyrm>);
quarryRecipe.setChance(0);
quarryRecipe.addItemOutput(<minecraft:iron_ore> * 64);
quarryRecipe.setChance(0.7);
quarryRecipe.addItemOutput(<minecraft:redstone_ore> * 64);
quarryRecipe.setChance(0.5);
quarryRecipe.addItemOutput(<ore:oreOsmium>.firstItem * 32);
quarryRecipe.setChance(0.4);
quarryRecipe.addItemOutput(<minecraft:coal_ore> * 32);
quarryRecipe.setChance(0.3);
quarryRecipe.addItemOutput(<ore:oreCopper>.firstItem * 32);
quarryRecipe.setChance(0.3);
quarryRecipe.addItemOutput(<ore:oreTin>.firstItem * 32);
quarryRecipe.setChance(0.3);
quarryRecipe.addItemOutput(<ore:oreSilver>.firstItem * 32);
quarryRecipe.setChance(0.3);
quarryRecipe.addItemOutput(<ore:oreLead>.firstItem * 32);
quarryRecipe.setChance(0.3);
quarryRecipe.addItemOutput(<minecraft:gold_ore> * 32);
quarryRecipe.setChance(0.15);
quarryRecipe.addItemOutput(<ore:oreAluminum>.firstItem * 8);
quarryRecipe.setChance(0.05);
quarryRecipe.build();

var exoticQuarry = RecipeBuilder.newBuilder("quarry_wyrm_exotic", "world_wyrm_burrow", 100);
exoticQuarry.addFluidInput(<liquid:nutrient_wyrm_milk> * 75);
exoticQuarry.addItemInput(<contenttweaker:venerated_tunneling_world_wyrm>);
exoticQuarry.setChance(0);
exoticQuarry.addItemOutput(<ore:oreAquamarine>.firstItem * 16);
exoticQuarry.setChance(0.3);
exoticQuarry.addItemOutput(<ore:oreDiamond>.firstItem * 16);
exoticQuarry.setChance(0.25);
exoticQuarry.addItemOutput(<ore:oreEmerald>.firstItem * 16);
exoticQuarry.setChance(0.25);
exoticQuarry.addItemOutput(<appliedenergistics2:charged_quartz_ore> * 16);
exoticQuarry.setChance(0.25);
exoticQuarry.addItemOutput(<ore:oreNickel>.firstItem * 8);
exoticQuarry.setChance(0.12);
exoticQuarry.addItemOutput(<ore:oreArdite>.firstItem * 8);
exoticQuarry.setChance(0.12);
exoticQuarry.addItemOutput(<ore:oreCobalt>.firstItem * 8);
exoticQuarry.setChance(0.12);
exoticQuarry.addItemOutput(<ore:oreUranium>.firstItem * 16);
exoticQuarry.setChance(0.08);
exoticQuarry.addItemOutput(<ore:orePlatinum>.firstItem * 16);
exoticQuarry.setChance(0.08);
exoticQuarry.addItemOutput(<ore:oreIridium>.firstItem * 16);
exoticQuarry.setChance(0.08);
exoticQuarry.addItemOutput(<minecraft:obsidian> * 32);
exoticQuarry.setChance(0.08);
exoticQuarry.addItemOutput(<contenttweaker:transdimensional_ore>);
exoticQuarry.setChance(0.05);
exoticQuarry.build();

var larvaeAscension = RecipeBuilder.newBuilder("larvae_ascension", "world_wyrm_burrow", 40);
larvaeAscension.addFluidInput(<liquid:nutrient_wyrm_milk> * 50);
larvaeAscension.addItemInput(<contenttweaker:crystal_bug_larvae>);
larvaeAscension.addItemInput(<midnight:dragon_nest> * 8);
larvaeAscension.addItemInput(<botania:manaresource:23> * 8);
larvaeAscension.addItemInput(<minecraft:magma_cream> * 4);
larvaeAscension.addItemOutput(g_worthyLarvae);
larvaeAscension.setChance(0.02);
larvaeAscension.build();

var pupa = RecipeBuilder.newBuilder("pupa", "world_wyrm_burrow", 400);
pupa.addFluidInput(<liquid:nutrient_wyrm_milk> * 5000);
pupa.addItemInput(g_worthyLarvae);
pupa.addItemInput(<bloodmagic:component:5> * 64);
pupa.addItemInput(<botania:manaresource:22> * 64);
pupa.addItemInput(<tconstruct:materials:15> * 64);
pupa.addItemInput(<contenttweaker:soaked_fabric> * 64);
pupa.addItemInput(<astralsorcery:itemcraftingcomponent:4> * 20);
pupa.addItemOutput(<contenttweaker:pupa>);
pupa.build();

# ----------------
# Slate Ossuary
# ----------------
var slateTier1 = RecipeBuilder.newBuilder("slate_tier1", "slate_ossuary", 10);
slateTier1.addItemInput(<contenttweaker:block_charred_terracotta>);
slateTier1.addLifeEssenceInput(350, false);
slateTier1.addItemOutput(<ore:slateTier1>, 1);
slateTier1.build();

var slateTier2 = RecipeBuilder.newBuilder("slate_tier2", "slate_ossuary", 10);
slateTier2.addItemInput(<ore:slateTier1>);
slateTier2.addLifeEssenceInput(1000, false);
slateTier2.addItemOutput(<ore:slateTier2>);
slateTier2.build();

var slateTier3 = RecipeBuilder.newBuilder("slate_tier3", "slate_ossuary", 30);
slateTier3.addItemInput(<ore:slateTier2>);
slateTier3.addLifeEssenceInput(2500, false);
slateTier3.addItemOutput(<ore:slateTier3>);
slateTier3.build();

var slateTier4 = RecipeBuilder.newBuilder("slate_tier4", "slate_ossuary", 40);
slateTier4.addItemInput(<ore:slateTier3>);
slateTier4.addLifeEssenceInput(5000, false);
slateTier4.addItemOutput(<ore:slateTier4>);
slateTier4.build();

var slateTier5 = RecipeBuilder.newBuilder("slate_tier5", "slate_ossuary", 300);
slateTier5.addItemInput(<ore:slateTier4>, 4);
slateTier5.addLifeEssenceInput(1500000, false);
slateTier5.addItemOutput(<ore:slateTier5>);
slateTier5.build();

var animatedBoneRecipe = RecipeBuilder.newBuilder("animated_bone", "slate_ossuary", 10);
animatedBoneRecipe.addItemInput(<minecraft:bone>);
animatedBoneRecipe.addLifeEssenceInput(3000, false);
animatedBoneRecipe.addItemOutput(<contenttweaker:animated_bone>);
animatedBoneRecipe.build();

var lifeGear = RecipeBuilder.newBuilder("mana_life_gear", "slate_ossuary", 60);
lifeGear.addItemInput(<ore:gearMithril>, 16);
lifeGear.addLifeEssenceInput(125000, false);
lifeGear.addItemOutput(<contenttweaker:gear_life_mana>);
lifeGear.build();

var bonesOfTheDamned = RecipeBuilder.newBuilder("bones_of_the_damned", "slate_ossuary", 900);
bonesOfTheDamned.addItemInput(<minecraft:skull:1> * 64);
bonesOfTheDamned.addItemInput(<minecraft:skull> * 64);
bonesOfTheDamned.addItemInput(<contenttweaker:animated_bone> * 64);
bonesOfTheDamned.addItemInput(<astralsorcery:itemusabledust:1> * 64);
bonesOfTheDamned.addItemInput(<ore:slateTier4>, 16);
bonesOfTheDamned.addItemInput(<contenttweaker:veiled_rifter_eye> * 12);
bonesOfTheDamned.addItemInput(<ore:runePrideB>, 6);
bonesOfTheDamned.addItemInput(<ore:runeWrathB>, 6);
bonesOfTheDamned.addItemInput(<bloodmagic:blood_shard> * 4);
bonesOfTheDamned.addLifeEssenceInput(250000, false);
bonesOfTheDamned.addItemOutput(<contenttweaker:bones_of_the_damned>);
bonesOfTheDamned.build();

var wyrmTier1 = RecipeBuilder.newBuilder("reanimated_world_wyrm", "slate_ossuary", 900);
wyrmTier1.addItemInput(<contenttweaker:pupa>);
wyrmTier1.addItemInput(<improvedbackpacks:tanned_leather> * 64);
wyrmTier1.addItemInput(<ore:blockElectrum>, 40);
wyrmTier1.addItemInput(g_anointedFlesh * 32);
wyrmTier1.addItemInput(<enderio:item_material:43> * 8);
wyrmTier1.addItemInput(<enderio:item_material:56> * 8);
wyrmTier1.addItemInput(<contenttweaker:bones_of_the_damned>);
wyrmTier1.addItemInput(<industrialforegoing:meat_feeder>.withTag({Fluid: {FluidName: "meat", Amount: 128000}}));
wyrmTier1.addItemInput(<immersiveengineering:toolupgrade:6>);
wyrmTier1.addLifeEssenceInput(512000, false);
wyrmTier1.addItemOutput(<contenttweaker:tunneling_world_wyrm>);
wyrmTier1.build();

var celestialSoulTether = RecipeBuilder.newBuilder("soul_tether", "slate_ossuary", 240);
celestialSoulTether.addItemInput(<ore:ingotAstralStarmetal>, 64);
celestialSoulTether.addItemInput(<astralsorcery:itemcraftingcomponent:4> * 64);
celestialSoulTether.addItemInput(<contenttweaker:void_crystal> * 64);
celestialSoulTether.addItemInput(<ore:singularitySoul>, 4);
celestialSoulTether.addItemInput(<minecraft:nether_star> * 4);
celestialSoulTether.addItemInput(<bloodmagic:soul_snare> * 4);
celestialSoulTether.addItemInput(<contenttweaker:nano_pcb>);
celestialSoulTether.addLifeEssenceInput(8000000, false);
celestialSoulTether.addItemOutput(<contenttweaker:celestial_soul_tether>);
celestialSoulTether.build();

# ----------------
# Dark Steel Fluid Mixer
# ----------------
var wyrmMilk = RecipeBuilder.newBuilder("fluid_mixer_wyrm_milk", "fluid_mixer", 200);
wyrmMilk.addEnergyPerTickInput(900);
wyrmMilk.addFluidInput(<liquid:pure_calcium> * 1000);
wyrmMilk.addFluidInput(<liquid:growtein> * 3000);
wyrmMilk.addFluidInput(<liquid:subterranean_nutrient_distillation> * 1000);
wyrmMilk.addItemInput(<ore:itemSlagRich>, 32);
wyrmMilk.addFluidOutput(<liquid:nutrient_wyrm_milk> * 1000);
wyrmMilk.build();

var shimmerCrystalline = RecipeBuilder.newBuilder("fluid_mixer_shimmering_crystalline", "fluid_mixer", 200);
shimmerCrystalline.addEnergyPerTickInput(900);
shimmerCrystalline.addFluidInput(<liquid:pure_calcium> * 5000);
shimmerCrystalline.addFluidInput(<liquid:emerald> * 16000);
shimmerCrystalline.addFluidInput(<liquid:superheated_miasma> * 2000);
shimmerCrystalline.addItemInput(<enderio:item_material:17>);
shimmerCrystalline.addFluidOutput(<liquid:shimmering_crystalline> * 1000);
shimmerCrystalline.build();

var groveBloodMana = RecipeBuilder.newBuilder("grove_blood_mana", "fluid_mixer", 200);
groveBloodMana.addEnergyPerTickInput(3500);
groveBloodMana.addFluidInput(<liquid:mana> * 2000);
groveBloodMana.addFluidInput(<liquid:primal_nature> * 1000);
groveBloodMana.addFluidInput(<liquid:blood> * 16000);
groveBloodMana.addItemInput(<contenttweaker:animated_bone> * 4);
groveBloodMana.addFluidOutput(<liquid:grove_mana> * 1000);
groveBloodMana.build();

var darkWater = RecipeBuilder.newBuilder("dark_water", "fluid_mixer", 100);
darkWater.addEnergyPerTickInput(1500);
darkWater.addFluidInput(<liquid:water> * 32000);
darkWater.addFluidInput(<liquid:witchwater> * 250);
darkWater.addItemInput(<deepmoblearning:soot_covered_redstone>);
darkWater.addFluidOutput(<liquid:dark_water> * 32000);
darkWater.build();

# ----------------
# Molten Salt Mixer
# ----------------
var moltenUraniumPlutFeed = RecipeBuilder.newBuilder("uranium_feed_to_plutonium", "molten_salt_reactor", 1);
moltenUraniumPlutFeed.addFluidInput(<liquid:molten_salt> * 8);
moltenUraniumPlutFeed.addFluidInput(<liquid:uranium> * 1);
moltenUraniumPlutFeed.addFluidOutput(<liquid:molten_salt_plutonium> * 1);
moltenUraniumPlutFeed.addEnergyPerTickOutput(7500);
moltenUraniumPlutFeed.build();

var plutoniumSalt = RecipeBuilder.newBuilder("plutonium_salt", "molten_salt_reactor", 1);
plutoniumSalt.addFluidInput(<liquid:molten_salt> * 1);
plutoniumSalt.addFluidInput(<liquid:molten_salt_plutonium> * 1);
plutoniumSalt.addEnergyPerTickOutput(27500);
plutoniumSalt.build();

var plutDtFuel = RecipeBuilder.newBuilder("plutonium_dt_fuel", "molten_salt_reactor", 1);
plutDtFuel.addFluidInput(<liquid:molten_salt_plutonium> * 1);
plutDtFuel.addFluidInput(<liquid:liquidfusionfuel> * 15);
plutDtFuel.addEnergyPerTickOutput(125000);
plutDtFuel.addFluidOutput(<liquid:molten_nuclear_waste> * 1);
plutDtFuel.setChance(0.3);
plutDtFuel.build();



# ----------------
# Dense Neutron Collider
# ----------------
var neutroniumIngot = RecipeBuilder.newBuilder("neutronium_ingot", "dense_neutron_collider", 400);
neutroniumIngot.addItemInput(<contenttweaker:void_crystal> * 4);
neutroniumIngot.addItemInput(<ore:singularityIron>, 4);
neutroniumIngot.addItemInput(<ore:compressed4xCobblestone>, 2);
neutroniumIngot.addItemInput(<contenttweaker:nuclear_waste_rod>);
neutroniumIngot.addItemInput(<ore:ingotRefinedObsidian>);
neutroniumIngot.addEnergyPerTickInput(30000);
neutroniumIngot.addItemOutput(<contenttweaker:neutronium_ingot>);
neutroniumIngot.build();

var ultimateSingularity = RecipeBuilder.newBuilder("ultimate_singularity", "dense_neutron_collider", 180);
ultimateSingularity.addItemInput(<singularities:singularity:3> * 2);
ultimateSingularity.addItemInput(<singularities:singularity>);
ultimateSingularity.addItemInput(<singularities:singularity:1>);
ultimateSingularity.addItemInput(<singularities:singularity:4>);
ultimateSingularity.addItemInput(<singularities:singularity:5>);
ultimateSingularity.addItemInput(<singularities:singularity:6>);
ultimateSingularity.addItemInput(<singularities:singularity:7>);
ultimateSingularity.addItemInput(<singularities:singularity:8>);
ultimateSingularity.addItemInput(<singularities:singularity:9>);
ultimateSingularity.addEnergyPerTickInput(30000);
ultimateSingularity.addItemOutput(<ore:singularityStellar>.firstItem);
ultimateSingularity.build();

var casingBase = RecipeBuilder.newBuilder("casing_base", "dense_neutron_collider", 400);
casingBase.addItemInput(<ore:blockRefinedObsidian>, 22);
casingBase.addItemInput(<ore:blockVibrantAlloy>, 18);
casingBase.addItemInput(<mekanism:basicblock:8> * 4);
casingBase.addItemInput(<ore:singularityStellar>, 8);
casingBase.addItemInput(<contenttweaker:mastery_token_final> * 6);
casingBase.addItemInput(<contenttweaker:neutronium_ingot> * 4);
casingBase.addItemInput(<ore:slateTier5>, 1);
casingBase.addEnergyPerTickInput(30000);
casingBase.addItemOutput(<contenttweaker:inert_endgame_casing> * 22);
casingBase.build();

var casingCPU = RecipeBuilder.newBuilder("casing_cpu", "dense_neutron_collider", 120);
casingCPU.addItemInput(<contenttweaker:endgame_mm_casing>);
casingCPU.addItemInput(<contenttweaker:nano_pcb>);
casingCPU.addItemInput(<mekanism:controlcircuit> * 32);
casingCPU.addItemInput(<ore:skullEnderResonator>, 8);
casingCPU.addItemInput(<ore:skullGuardianDiode>, 8);
casingCPU.addItemInput(<appliedenergistics2:material:34> * 6);
casingCPU.addItemInput(<appliedenergistics2:crafting_accelerator> * 4);
casingCPU.addItemInput(<appliedenergistics2:controller>);
casingCPU.addEnergyPerTickInput(30000);
casingCPU.addItemOutput(<contenttweaker:endgame_mm_cpu>);
casingCPU.build();

var casingEngi = RecipeBuilder.newBuilder("casing_engineer", "dense_neutron_collider", 400);
casingEngi.addItemInput(<contenttweaker:endgame_mm_casing>);
casingEngi.addItemInput(<contenttweaker:gear_stellar>);
casingEngi.addItemInput(g_blessedServo * 20);
casingEngi.addItemInput(<immersiveengineering:material:9> * 64);
casingEngi.addItemInput(<immersiveengineering:material:8> * 64);
casingEngi.addItemInput(<pneumaticcraft:heat_sink> * 64);
casingEngi.addItemInput(<immersiveengineering:metal_decoration0:3> * 64);
casingEngi.addItemInput(<minecraft:piston> * 64);
casingEngi.addEnergyPerTickInput(30000);
casingEngi.addItemOutput(<contenttweaker:endgame_mm_mechanical>);
casingEngi.build();

var nau02 = RecipeBuilder.newBuilder("nau_02_kit", "dense_neutron_collider", 800);
nau02.addItemInput(<contenttweaker:endgame_platform_assembler>);
nau02.addItemInput(<contenttweaker:mastery_token_final> * 8);
nau02.addItemInput(<contenttweaker:neutronium_ingot> * 6);
nau02.addItemInput(<ore:blockEnergeticAlloy>, 4);
nau02.addItemInput(<contenttweaker:gear_stellar> * 2);
nau02.addItemInput(<contenttweaker:nano_pcb> * 2);
nau02.addEnergyPerTickInput(30000);
nau02.addItemOutput(<contenttweaker:nau_two_use_item>);
nau02.build();

# ------------------------
# Sacrificial Star Engine
# ------------------------
var blackHoleMatter = RecipeBuilder.newBuilder("black_hole_matter", "star_engine", 2400);
blackHoleMatter.addEnergyPerTickInput(95000);
blackHoleMatter.addItemInput(<ore:singularitySoul>, 64);
blackHoleMatter.addItemInput(<contenttweaker:soul_crystal> * 64);
blackHoleMatter.addItemInput(g_anointedFlesh * 64);
blackHoleMatter.addItemInput(<ore:blockSanguineMetal>, 64);
blackHoleMatter.addItemInput(<contenttweaker:mastery_token_final> * 32);
blackHoleMatter.addItemInput(<contenttweaker:neutronium_ingot> * 12);
blackHoleMatter.addFluidInput(<liquid:star_blood> * 32000);
blackHoleMatter.addItemOutput(<cryosimadditions:sanguis_nihil>);
blackHoleMatter.build();

# ----------------
# Super Simulation Chamber
# ----------------
var pristineEnderman = RecipeBuilder.newBuilder("pristine_enderman", "adv_simulation_chamber", 1800);
pristineEnderman.addEnergyPerTickInput(20000);
pristineEnderman.addItemInput(<deepmoblearning:data_model_enderman>.withTag({ tier: 4 }));
pristineEnderman.setChance(0);
pristineEnderman.addItemInput(<deepmoblearning:polymer_clay> * 64);
pristineEnderman.addItemOutput(<deepmoblearning:living_matter_extraterrestrial> * 64);
pristineEnderman.addItemOutput(<deepmoblearning:pristine_matter_enderman> * 48);
pristineEnderman.build();

var pristineShulker = RecipeBuilder.newBuilder("pristine_shulker", "adv_simulation_chamber", 1800);
pristineShulker.addEnergyPerTickInput(20000);
pristineShulker.addItemInput(<deepmoblearning:data_model_shulker>.withTag({ tier: 4 }));
pristineShulker.setChance(0);
pristineShulker.addItemInput(<deepmoblearning:polymer_clay> * 64);
pristineShulker.addItemOutput(<deepmoblearning:living_matter_extraterrestrial> * 64);
pristineShulker.addItemOutput(<deepmoblearning:pristine_matter_shulker> * 48);
pristineShulker.build();

var pristineWitherSkeleton = RecipeBuilder.newBuilder("pristine_wither_skeleton", "adv_simulation_chamber", 1800);
pristineWitherSkeleton.addEnergyPerTickInput(20000);
pristineWitherSkeleton.addItemInput(<deepmoblearning:data_model_wither_skeleton>.withTag({ tier: 4 }));
pristineWitherSkeleton.setChance(0);
pristineWitherSkeleton.addItemInput(<deepmoblearning:polymer_clay> * 64);
pristineWitherSkeleton.addItemOutput(<deepmoblearning:living_matter_hellish> * 64);
pristineWitherSkeleton.addItemOutput(<deepmoblearning:pristine_matter_wither_skeleton> * 48);
pristineWitherSkeleton.build();

var pristineGhast = RecipeBuilder.newBuilder("pristine_ghast", "adv_simulation_chamber", 1800);
pristineGhast.addEnergyPerTickInput(20000);
pristineGhast.addItemInput(<deepmoblearning:data_model_ghast>.withTag({ tier: 4 }));
pristineGhast.setChance(0);
pristineGhast.addItemInput(<deepmoblearning:polymer_clay> * 64);
pristineGhast.addItemOutput(<deepmoblearning:living_matter_hellish> * 64);
pristineGhast.addItemOutput(<deepmoblearning:pristine_matter_ghast> * 48);
pristineGhast.build();

var pristineBlaze = RecipeBuilder.newBuilder("pristine_blaze", "adv_simulation_chamber", 1800);
pristineBlaze.addEnergyPerTickInput(20000);
pristineBlaze.addItemInput(<deepmoblearning:data_model_blaze>.withTag({ tier: 4 }));
pristineBlaze.setChance(0);
pristineBlaze.addItemInput(<deepmoblearning:polymer_clay> * 64);
pristineBlaze.addItemOutput(<deepmoblearning:living_matter_hellish> * 64);
pristineBlaze.addItemOutput(<deepmoblearning:pristine_matter_blaze> * 48);
pristineBlaze.build();

var pristineIllager = RecipeBuilder.newBuilder("pristine_illager", "adv_simulation_chamber", 1800);
pristineIllager.addEnergyPerTickInput(20000);
pristineIllager.addItemInput(<deepmoblearning:data_model_illager>.withTag({ tier: 4 }));
pristineIllager.setChance(0);
pristineIllager.addItemInput(<deepmoblearning:polymer_clay> * 64);
pristineIllager.addItemOutput(<deepmoblearning:living_matter_overworldian> * 64);
pristineIllager.addItemOutput(<deepmoblearning:pristine_matter_illager> * 48);
pristineIllager.build();

var pristineSlime = RecipeBuilder.newBuilder("pristine_slime", "adv_simulation_chamber", 1800);
pristineSlime.addEnergyPerTickInput(20000);
pristineSlime.addItemInput(<deepmoblearning:data_model_slime>.withTag({ tier: 4 }));
pristineSlime.setChance(0);
pristineSlime.addItemInput(<deepmoblearning:polymer_clay> * 64);
pristineSlime.addItemOutput(<deepmoblearning:living_matter_overworldian> * 64);
pristineSlime.addItemOutput(<deepmoblearning:pristine_matter_slime> * 48);
pristineSlime.build();

var pristineBlueSlime = RecipeBuilder.newBuilder("pristine_blue_slime", "adv_simulation_chamber", 1800);
pristineBlueSlime.addEnergyPerTickInput(20000);
pristineBlueSlime.addItemInput(<deepmoblearning:data_model_tinker_slime>.withTag({ tier: 4 }));
pristineBlueSlime.setChance(0);
pristineBlueSlime.addItemInput(<deepmoblearning:polymer_clay> * 64);
pristineBlueSlime.addItemOutput(<deepmoblearning:living_matter_overworldian> * 64);
pristineBlueSlime.addItemOutput(<deepmoblearning:pristine_matter_tinker_slime> * 48);
pristineBlueSlime.build();

var pristineThermalElemental = RecipeBuilder.newBuilder("pristine_thermal_elemental", "adv_simulation_chamber", 1800);
pristineThermalElemental.addEnergyPerTickInput(20000);
pristineThermalElemental.addItemInput(<deepmoblearning:data_model_thermal_elemental>.withTag({ tier: 4 }));
pristineThermalElemental.setChance(0);
pristineThermalElemental.addItemInput(<deepmoblearning:polymer_clay> * 64);
pristineThermalElemental.addItemOutput(<deepmoblearning:living_matter_overworldian> * 64);
pristineThermalElemental.addItemOutput(<deepmoblearning:pristine_matter_thermal_elemental> * 48);
pristineThermalElemental.build();

var pristineWitch = RecipeBuilder.newBuilder("pristine_witch", "adv_simulation_chamber", 1800);
pristineWitch.addEnergyPerTickInput(20000);
pristineWitch.addItemInput(<deepmoblearning:data_model_witch>.withTag({ tier: 4 }));
pristineWitch.setChance(0);
pristineWitch.addItemInput(<deepmoblearning:polymer_clay> * 64);
pristineWitch.addItemOutput(<deepmoblearning:living_matter_overworldian> * 64);
pristineWitch.addItemOutput(<deepmoblearning:pristine_matter_witch> * 48);
pristineWitch.build();

var pristineSpider = RecipeBuilder.newBuilder("pristine_spider", "adv_simulation_chamber", 1800);
pristineSpider.addEnergyPerTickInput(20000);
pristineSpider.addItemInput(<deepmoblearning:data_model_spider>.withTag({ tier: 4 }));
pristineSpider.setChance(0);
pristineSpider.addItemInput(<deepmoblearning:polymer_clay> * 64);
pristineSpider.addItemOutput(<deepmoblearning:living_matter_overworldian> * 64);
pristineSpider.addItemOutput(<deepmoblearning:pristine_matter_spider> * 48);
pristineSpider.build();

var pristineSkeleton = RecipeBuilder.newBuilder("pristine_skeleton", "adv_simulation_chamber", 1800);
pristineSkeleton.addEnergyPerTickInput(20000);
pristineSkeleton.addItemInput(<deepmoblearning:data_model_skeleton>.withTag({ tier: 4 }));
pristineSkeleton.setChance(0);
pristineSkeleton.addItemInput(<deepmoblearning:polymer_clay> * 64);
pristineSkeleton.addItemOutput(<deepmoblearning:living_matter_overworldian> * 64);
pristineSkeleton.addItemOutput(<deepmoblearning:pristine_matter_skeleton> * 48);
pristineSkeleton.build();

var pristineCreeper = RecipeBuilder.newBuilder("pristine_creeper", "adv_simulation_chamber", 1800);
pristineCreeper.addEnergyPerTickInput(20000);
pristineCreeper.addItemInput(<deepmoblearning:data_model_creeper>.withTag({ tier: 4 }));
pristineCreeper.setChance(0);
pristineCreeper.addItemInput(<deepmoblearning:polymer_clay> * 64);
pristineCreeper.addItemOutput(<deepmoblearning:living_matter_overworldian> * 64);
pristineCreeper.addItemOutput(<deepmoblearning:pristine_matter_creeper> * 48);
pristineCreeper.build();

var pristineZombie = RecipeBuilder.newBuilder("pristine_zombie", "adv_simulation_chamber", 1800);
pristineZombie.addEnergyPerTickInput(20000);
pristineZombie.addItemInput(<deepmoblearning:data_model_zombie>.withTag({ tier: 4 }));
pristineZombie.setChance(0);
pristineZombie.addItemInput(<deepmoblearning:polymer_clay> * 64);
pristineZombie.addItemOutput(<deepmoblearning:living_matter_overworldian> * 64);
pristineZombie.addItemOutput(<deepmoblearning:pristine_matter_zombie> * 48);
pristineZombie.build();


# ----------------
# Advanced Metal Lathe
# ----------------
var steelRodBatch = RecipeBuilder.newBuilder("steel_rod_batch", "advanced_lathe", 120);
steelRodBatch.addEnergyPerTickInput(5000);
steelRodBatch.addItemInput(<ore:ingotSteel>, 16);
steelRodBatch.addItemOutput(<immersiveengineering:material:2> * 64);
steelRodBatch.build();

var ironRodBatch = RecipeBuilder.newBuilder("iron_rod_batch", "advanced_lathe", 120);
ironRodBatch.addEnergyPerTickInput(5000);
ironRodBatch.addItemInput(<ore:ingotIron>, 16);
ironRodBatch.addItemOutput(<immersiveengineering:material:1> * 64);
ironRodBatch.build();

var aluminumRodBatch = RecipeBuilder.newBuilder("aluminum_rod_batch", "advanced_lathe", 120);
aluminumRodBatch.addEnergyPerTickInput(5000);
aluminumRodBatch.addItemInput(<ore:ingotAluminum>, 16);
aluminumRodBatch.addItemOutput(<immersiveengineering:material:3> * 64);
aluminumRodBatch.build();

var hdpeRodBatch = RecipeBuilder.newBuilder("hdpe_rod_batch", "advanced_lathe", 120);
hdpeRodBatch.addEnergyPerTickInput(5000);
hdpeRodBatch.addItemInput(<mekanism:polyethene> * 64);
hdpeRodBatch.addItemOutput(<mekanism:polyethene:1> * 32);
hdpeRodBatch.build();

var compressedIronGear = RecipeBuilder.newBuilder("comp_iron_gear", "advanced_lathe", 120);
compressedIronGear.addEnergyPerTickInput(5000);
compressedIronGear.addItemInput(<ore:ingotIronCompressed>, 64);
compressedIronGear.addItemOutput(<pneumaticcraft:compressed_iron_gear> * 32);
compressedIronGear.build();

var sanguineMetalGearBatch = RecipeBuilder.newBuilder("sang_gear", "advanced_lathe", 120);
sanguineMetalGearBatch.addEnergyPerTickInput(5000);
sanguineMetalGearBatch.addItemInput(<ore:ingotSanguineMetal>, 64);
sanguineMetalGearBatch.addItemOutput(<contenttweaker:material_part> * 32);
sanguineMetalGearBatch.build();

var wireSteelBatch = RecipeBuilder.newBuilder("wire_steel", "advanced_lathe", 120);
wireSteelBatch.addEnergyPerTickInput(5000);
wireSteelBatch.addItemInput(<ore:plateSteel>, 8);
wireSteelBatch.addItemOutput(<immersiveengineering:material:23> * 64);
wireSteelBatch.build();

var wireElectrumBatch = RecipeBuilder.newBuilder("wire_electrum", "advanced_lathe", 120);
wireElectrumBatch.addEnergyPerTickInput(5000);
wireElectrumBatch.addItemInput(<ore:plateElectrum>, 8);
wireElectrumBatch.addItemOutput(<immersiveengineering:material:21> * 64);
wireElectrumBatch.build();

var wireCopperBatch = RecipeBuilder.newBuilder("wire_copper", "advanced_lathe", 120);
wireCopperBatch.addEnergyPerTickInput(5000);
wireCopperBatch.addItemInput(<ore:plateCopper>, 8);
wireCopperBatch.addItemOutput(<immersiveengineering:material:20> * 64);
wireCopperBatch.build();
