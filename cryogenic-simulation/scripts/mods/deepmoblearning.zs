import scripts.helpers;

# ----------------
# Recipes
# ----------------
recipes.remove(<deepmoblearning:machine_casing>);
recipes.remove(<deepmoblearning:simulation_chamber>);
recipes.remove(<deepmoblearning:polymer_clay>);
recipes.remove(<deepmoblearning:extraction_chamber>);
recipes.remove(<deepmoblearning:data_model_blank>);
recipes.remove(<deepmoblearning:deep_learner>);
recipes.remove(<deepmoblearning:trial_keystone>);
recipes.remove(<deepmoblearningbm:digital_agonizer>);
# Remove nether star recipes
recipes.remove(<minecraft:nether_star>);
recipes.remove(<minecraft:end_stone>);
recipes.remove(<minecraft:ender_pearl>);
# Remove boss models
recipes.remove(<deepmoblearning:data_model_wither>);
recipes.remove(<deepmoblearning:data_model_dragon>);
recipes.remove(<deepmoblearning:data_model_guardian>);

helpers.addAtlasTip(<deepmoblearning:data_model_illager>, [
    format.yellow("Trained by slaying one of the following monsters on the Lunar PLane:"),
    format.yellow("Evokers in the Dark Thicket Biome"),
    format.yellow("Vindicators on the bottom floor of the Dungeons")
]); 

recipes.addShaped("dml_machine_casing", <deepmoblearning:machine_casing>, [
    [<deepmoblearning:soot_covered_plate>, <ore:plasticBlack>, <deepmoblearning:soot_covered_plate>],
    [<ore:ingotHOPGraphite>, g_blessedMachineFrame, <ore:ingotHOPGraphite>],
    [<deepmoblearning:soot_covered_plate>, <ore:plasticBlack>, <deepmoblearning:soot_covered_plate>]
]);

recipes.addShaped("dml_deep_learner", <deepmoblearning:deep_learner>, [
    [<deepmoblearning:soot_covered_plate>, <ore:plasticCyan>, <deepmoblearning:soot_covered_plate>],
    [<ore:plasticPurple>, <appliedenergistics2:wireless_terminal>, <ore:plasticPurple>],
    [<deepmoblearning:soot_covered_plate>, <pneumaticcraft:advanced_pcb>, <deepmoblearning:soot_covered_plate>]
]);

recipes.addShaped("dml_simulation_chamber", <deepmoblearning:simulation_chamber>, [
    [<ore:plasticCyan>, <thermalfoundation:upgrade:34>, <ore:plasticCyan>],
    [<ore:enderpearl>, <deepmoblearning:machine_casing>, <ore:enderpearl>],
    [<ore:blockSanguineMetal>, <pneumaticcraft:advanced_pcb>, <ore:blockSanguineMetal>]
]);

recipes.addShaped("dml_trial_keystone", <deepmoblearning:trial_keystone>, [
    [null, <deepmoblearning:trial_key>, null],
    [<minecraft:diamond_block>, <deepmoblearning:machine_casing>, <minecraft:diamond_block>],
    [<thermalfoundation:upgrade:35>, <pneumaticcraft:advanced_pcb>, <thermalfoundation:upgrade:35>]
]);

recipes.addShaped("dml_loot_fabricator", <deepmoblearning:extraction_chamber>, [
    [<ore:plasticOrange>, <thermalfoundation:upgrade:34>, <ore:plasticOrange>],
    [<ore:gearSignalum>, <deepmoblearning:machine_casing>, <ore:gearSignalum>],
    [<ore:blockSanguineMetal>, <pneumaticcraft:advanced_pcb>, <ore:blockSanguineMetal>]
]);

recipes.addShaped("dml_data_model", <deepmoblearning:data_model_blank>, [
    [<deepmoblearning:soot_covered_plate>, <ore:polymerClay>, <deepmoblearning:soot_covered_plate>],
    [<ore:plasticCyan>, <pneumaticcraft:advanced_pcb>, <ore:plasticCyan>],
    [<deepmoblearning:soot_covered_plate>, <ore:polymerClay>, <deepmoblearning:soot_covered_plate>]
]);

recipes.addShaped("dmlbm_digital_agonizer", <deepmoblearningbm:digital_agonizer>, [
    [<bloodmagic:blood_rune:3>, <ore:slateTier4>, <bloodmagic:blood_rune:3>],
    [<bloodmagic:inscription_tool:5>, <deepmoblearning:machine_casing>, <bloodmagic:inscription_tool:5>],
    [<ore:blockSanguineMetal>, <pneumaticcraft:advanced_pcb>, <ore:blockSanguineMetal>]
]);

recipes.addShaped("dml_matter_to_netherrack", <minecraft:netherrack> * 32, [
    [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>],
    [<ore:cobblestone>, <ore:livingMatterHell>, <ore:cobblestone>],
    [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]
]);

recipes.addShapeless("dml_endstone", <minecraft:end_stone> * 4, [<minecraft:sandstone>, <minecraft:sandstone>, <ore:livingMatterEnd>]);
