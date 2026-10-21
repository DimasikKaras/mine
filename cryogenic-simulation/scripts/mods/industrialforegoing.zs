import mods.industrialforegoing.Extractor;
import scripts.helpers;

# ----------------
# Recipe removal
# ----------------
# Remove this machine frame, use thermal one instead
recipes.remove(<teslacorelib:machine_case>);
recipes.remove(<industrialforegoing:pitiful_fuel_generator>);
recipes.remove(<industrialforegoing:dryrubber>);
recipes.remove(<industrialforegoing:material_stonework_factory>);
recipes.remove(<industrialforegoing:laser_lens:*>);
recipes.remove(<industrialforegoing:laser_lens_inverted:*>);
recipes.remove(<industrialforegoing:mob_imprisonment_tool>);
recipes.remove(<industrialforegoing:black_hole_unit>);
recipes.remove(<industrialforegoing:black_hole_tank>);
recipes.remove(<industrialforegoing:water_condensator>);
recipes.remove(<industrialforegoing:mob_duplicator>);
recipes.remove(<industrialforegoing:protein_reactor>);
recipes.remove(<industrialforegoing:black_hole_controller_reworked>);
recipes.remove(<teslacorelib:base_addon>);
recipes.remove(<industrialforegoing:meat_feeder>);
# Conveyor recipe remove, use chisel
recipes.removeByRecipeName("industrialforegoing:conveyor_0_white");
recipes.remove(<industrialforegoing:conveyor:1>);
recipes.remove(<industrialforegoing:conveyor:2>);
recipes.remove(<industrialforegoing:conveyor:3>);
recipes.remove(<industrialforegoing:conveyor:4>);
recipes.remove(<industrialforegoing:conveyor:5>);
recipes.remove(<industrialforegoing:conveyor:6>);
recipes.remove(<industrialforegoing:conveyor:7>);
recipes.remove(<industrialforegoing:conveyor:8>);
recipes.remove(<industrialforegoing:conveyor:9>);
recipes.remove(<industrialforegoing:conveyor:10>);
recipes.remove(<industrialforegoing:conveyor:11>);
recipes.remove(<industrialforegoing:conveyor:12>);
recipes.remove(<industrialforegoing:conveyor:13>);
recipes.remove(<industrialforegoing:conveyor:14>);
recipes.remove(<industrialforegoing:conveyor:15>);

<industrialforegoing:black_hole_label>.addTooltip(format.aqua("Packnote: Label does not seem to update properly with Black Hole Tanks"));
<industrialforegoing:black_hole_label>.addTooltip(format.aqua("Use ME Storage monitors instead with a Fluid Storage Bus"));

helpers.addAtlasTip(<industrialforegoing:mob_slaughter_factory>, [
    format.yellow("Can slaughter animals for Liquid Meat"),
    format.yellow("Sometimes produce a tiny amount of Pink Slime (liquid)")
]);

# ----------------
# Recipes
# ----------------
recipes.replaceAllOccurences(<minecraft:furnace>, g_blessedServo, <industrialforegoing:tree_fluid_extractor>);

recipes.addShaped("if_meatfeeder", <industrialforegoing:meat_feeder>, [
    [<tconstruct:arrow_head>.withTag({Material: "cobalt"}), <industrialforegoing:straw>, <tconstruct:arrow_head>.withTag({Material: "cobalt"})],
    [<extrautils2:drum:1>, <pneumaticcraft:plastic:8>, <extrautils2:drum:1>],
    [<pneumaticcraft:advanced_pcb>, <immersiveengineering:material:2>, <pneumaticcraft:advanced_pcb>]
]);

recipes.addShaped("if_mob_imprisonment_tool", <industrialforegoing:mob_imprisonment_tool>, [
    [null, <ore:itemRubber>, null],
    [<ore:itemRubber>, <openblocks:beartrap>, <ore:itemRubber>],
    [null, <ore:itemRubber>, null]
]);

recipes.addShaped("if_stonework_factory", <industrialforegoing:material_stonework_factory>, [
    [<ore:itemRubber>, null, <ore:itemRubber>],
    [<minecraft:diamond_pickaxe>, g_blessedMachineFrame, <tconstruct:smeltery_controller>],
    [<tconstruct:firewood:1>, <contenttweaker:lubricated_gear>, <infinitewatersource:infinitewatersource>]
]);

recipes.addShaped("if_black_hole_controller", <industrialforegoing:black_hole_controller_reworked>, [
    [<ore:pearlEnderEye>, <thermalfoundation:upgrade:35>, <ore:pearlEnderEye>],
    [<ore:ingotPinkSlime>, <appliedenergistics2:drive>, <ore:ingotPinkSlime>],
    [<pneumaticcraft:transistor>, <deepmoblearning:machine_casing>, <pneumaticcraft:transistor>]
]);

recipes.addShaped("if_black_hole_unit", <industrialforegoing:black_hole_unit>, [
    [<ore:pearlEnderEye>, <thermalfoundation:upgrade:35>, <ore:pearlEnderEye>],
    [<appliedenergistics2:material:36>, <ore:chestObsidian>, <appliedenergistics2:material:36>],
    [<pneumaticcraft:transistor>, <rftools:machine_frame>, <pneumaticcraft:transistor>]
]);

recipes.addShaped("if_black_hole_tank", <industrialforegoing:black_hole_tank>, [
    [<ore:pearlEnderEye>, <thermalfoundation:upgrade:35>, <ore:pearlEnderEye>],
    [<appliedenergistics2:material:55>, <thermalexpansion:tank>, <appliedenergistics2:material:55>],
    [<pneumaticcraft:transistor>, <rftools:machine_frame>, <pneumaticcraft:transistor>]
]);

# Gate mob duplicators behind deep mob learning
recipes.addShaped("if_mob_duplicator", <industrialforegoing:mob_duplicator>, [
    [<ore:plasticGray>, <deepmoblearning:data_model_blank>, <ore:plasticGray>],
    [<deepmoblearning:pristine_matter_enderman>, <deepmoblearning:machine_casing>, <deepmoblearning:pristine_matter_enderman>],
    [<ore:polymerClay>, <ore:blockEmerald>, <ore:polymerClay>]
]);

recipes.addShaped("if_protein_reactor", <industrialforegoing:protein_reactor>, [
    [<ore:itemRubber>, <industrialforegoing:adult_filter>, <ore:itemRubber>],
    [<openblocks:golden_egg>, g_blessedMachineFrame, <openblocks:golden_egg>],
    [<ore:gearNickel>, <thermalfoundation:material:515>, <ore:gearNickel>]
]);

recipes.addShaped("tesla_base_addon", <teslacorelib:base_addon>, [
    [<ore:dustRedstone>, <ore:itemRubber>, <ore:dustRedstone>],
    [<ore:dustRedstone>, <ore:paper>, <ore:dustRedstone>],
    [<ore:dustRedstone>, <ore:itemRubber>, <ore:dustRedstone>]
]);




# ----------------
# Extractor
# ----------------
Extractor.add(<cryosimadditions:blood_resin_log>, <liquid:blood> * 8);
Extractor.add(<traverse:fir_log>, <liquid:latex> * 4);
Extractor.add(<contenttweaker:nature_block>, <liquid:primal_nature> * 3);