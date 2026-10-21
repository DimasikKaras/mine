import crafttweaker.data.IData;
import scripts.helpers;

# ----------------
# Tooltips
# ----------------
helpers.addAtlasTip(<contenttweaker:stone_shears:*>, [
    format.yellow("Crude shears, only effective in a Mason's Worktable")
]);

helpers.addAtlasTip(<contenttweaker:bloodmoon_star>, [
    format.yellow("Investigating usages in JEI will reveal the unseen path.")
]);

helpers.addAtlasTip(<contenttweaker:deep_substrate_ore>, [
    format.yellow("Yield can be increased by using Silk touch or Fortune")
]);

<contenttweaker:bloody_mud>.addTooltip("Also known as Muddy Blood");

<contenttweaker:dim_five_block>.addTooltip(format.lightPurple("Looks slightly damned"));

<contenttweaker:sacrificial_nightstag>.addTooltip("The Nightstag is revered by the Elves");
<contenttweaker:sacrificial_nightstag>.addTooltip("They also commonly use gold when making sacrifices to their deities");

<contenttweaker:sacrifice_clump>.addTooltip(format.lightPurple("The Elves are just way better at ritual sacrifice"));


<contenttweaker:pupa>.addTooltip("What will emerge from this majestic pupa?");

<contenttweaker:tunneling_world_wyrm>.addTooltip("Tunnels through pocket dimensions");
<contenttweaker:tunneling_world_wyrm>.addTooltip("Unearths vast quantities of ore");

<contenttweaker:venerated_tunneling_world_wyrm>.addTooltip("Tunnels through pocket dimensions");
<contenttweaker:venerated_tunneling_world_wyrm>.addTooltip("Unearths vast quantities of ore");
<contenttweaker:venerated_tunneling_world_wyrm>.addTooltip("An ancient wyrm, uses its skilled senses to only go after rare resources");

<contenttweaker:transdimensional_ore>.addTooltip("Found where light no longer reaches");
<contenttweaker:transdimensional_ore>.addTooltip("The only glow in a starless sea");
<contenttweaker:transdimensional_ore>.addTooltip("Deep inside the gazing void");

<contenttweaker:assembly_dust>.addTooltip("Dust biproduct from assembling the upper platform");
<contenttweaker:assembly_dust>.addTooltip("Virtually useless");
<contenttweaker:assembly_dust>.addTooltip("Gift it to another player who hasn't received the platform advancement");

<contenttweaker:rod_packed>.addTooltip("Made for handling radioactive waste");
<contenttweaker:rod_packed>.addTooltip("The Metals prevents outgoing gamma rays");
<contenttweaker:rod_packed>.addTooltip("The Polyethelene (HDPE) slows down outgoing neutrons");
<contenttweaker:rod_packed>.addTooltip("The Kalthrite absorbs outgoing neutrons");

<contenttweaker:nuclear_waste_rod>.addTooltip("Made for handling radioactive waste");
<contenttweaker:nuclear_waste_rod>.addTooltip("The Metals prevents outgoing gamma rays");
<contenttweaker:nuclear_waste_rod>.addTooltip("The Polyethelene (HDPE) slows down outgoing neutrons");
<contenttweaker:nuclear_waste_rod>.addTooltip("The Kalthrite absorbs outgoing neutrons");

<contenttweaker:neutronium_ingot>.addTooltip("Stellar-Grade Component");
<contenttweaker:nano_capacitor>.addTooltip("Stellar-Grade Component");
<contenttweaker:nano_pcb>.addTooltip("Stellar-Grade Component");
<contenttweaker:gear_stellar>.addTooltip("Stellar-Grade Component");
<singularities:singularity:10>.addTooltip("Stellar-Grade Component");

helpers.addAtlasTip(<contenttweaker:endgame_platform_assembler>, [
    format.yellow("When used with NAU-01 it assembles a 15x15 above the portal hub area"),
    format.yellow("Make sure this area is clear or it will overwrite your buildings")
]);

helpers.addAtlasTip(<contenttweaker:nau_two_use_item>, [
    format.yellow("When used with NAU-02 it assembles a 9x7 platform behind the NAU-02"),
    format.yellow("Make sure this area is clear or it will overwrite your buildings")
]);

helpers.addAtlasTip(<contenttweaker:block_calcium>, [
    format.yellow("Made from bonemealing Moist Mineral Soil")
]);

helpers.addAtlasTip(<contenttweaker:mineral_soil>, [
    format.yellow("Used in the Astral Sorcery Mineralis Ritual"),
]);

<contenttweaker:root_of_all_evil>.addTooltip("The Illagers ultimate sin");

# Soul tether
<contenttweaker:celestial_soul_tether>.addTooltip("There is no ethical use for this.");

# Crystallized human souls
<contenttweaker:crystallized_soul>.addTooltip("Contains the souls of 7000 humans");
<contenttweaker:crystallized_soul>.addTooltip("The tether snatched them from distant planets");
<contenttweaker:crystallized_soul>.addTooltip("Dragging them into the simulation");
# Soul Clusters
<contenttweaker:soul_cluster>.addTooltip("Contains the souls of 7000 humans");

# Soul crystal
<contenttweaker:soul_crystal>.addTooltip("Gentle whimpers can be heard from inside the crystal");
<contenttweaker:soul_crystal>.addTooltip("They did not deserve this");

# Sanguis Nihil
<cryosimadditions:sanguis_nihil>.addTooltip("A star not born of gravity, but of debt.");
<cryosimadditions:sanguis_nihil>.addTooltip("It burns with the weight of one million stolen lives.");

# Sanguis Nihil Vessel
<contenttweaker:atlas_project_item>.addTooltip("This vessel has harnessed the power of Sanguis Nihil");
<contenttweaker:atlas_project_item>.addTooltip("You do not wish to know what it can be used for...");

# Exit portal
<contenttweaker:pack_complete_unlocker>.addTooltip("A way out..?");
<contenttweaker:pack_complete_unlocker>.addTooltip("You yearn to wake up...");

<contenttweaker:endgame_mm_core>.addTooltip("Uncraftable.");
<contenttweaker:endgame_mm_core>.addTooltip("Part of the assembled upper structure made by the NAU-01.");

# ----------------
# Recipes
# ----------------
recipes.addShaped("ct_stone_shears", <contenttweaker:stone_shears>, [
    [null, <minecraft:stone:0>, null],
    [<ore:stickWood>, <ore:stickWood>, <minecraft:stone:0>],
    [null, <ore:stickWood>, null]
]);

recipes.addShaped("ct_blaze_powder_block", <contenttweaker:block_blaze_powder>, [
    [<minecraft:blaze_powder>, <minecraft:blaze_powder>],
    [<minecraft:blaze_powder>, <minecraft:blaze_powder>]
]);

recipes.addShaped("ct_faux_steel", <contenttweaker:faux_steel>, [
    [<ore:ingotSteel>, <ore:plateTin>, <ore:ingotSteel>],
    [<ore:plateTin>, <ore:obsidian>, <ore:plateTin>], 
    [<ore:ingotSteel>, <tconstruct:large_plate>.withTag({Material: "steel"}), <ore:ingotSteel>]
]);

recipes.addShaped("ct_midnight_idol", <contenttweaker:midnight_idol>, [
    [<midnight:deceitful_snapper>, <midnight:cook_stinger_egg>, <midnight:cook_stag_flank>],
    [<midnight:rouxe>, <contenttweaker:root_of_all_evil>, <midnight:rouxe>], 
    [<contenttweaker:veiled_rifter_eye>, <midnight:nagrilite_block>, <contenttweaker:veiled_rifter_eye>]
]);

recipes.addShaped("ct_arid_waste_idol", <contenttweaker:arid_waste_idol>, [
    [<contenttweaker:scorpion_venom_gland>, <appliedenergistics2:material:1>, <contenttweaker:scorpion_venom_gland>],
    [<contenttweaker:lubricated_gear>, <minecraft:totem_of_undying>, <contenttweaker:lubricated_gear>], 
    [<traverse:red_rock>, <minecraft:tnt>, <traverse:red_rock>]
]);

recipes.addShaped("ct_lunar_plane_idol", <contenttweaker:lunar_plane_idol>, [
    [<ore:ingotAstralStarmetal>, <contenttweaker:blood_raven_feather>, <ore:ingotAstralStarmetal>],
    [<contenttweaker:troll_eye>, <minecraft:totem_of_undying>, <contenttweaker:troll_eye>], 
    [<astralsorcery:blockmarble>, <ore:gemAquamarine>, <astralsorcery:blockmarble>]
]);

recipes.addShaped("ct_dim_five_block", <contenttweaker:dim_five_block>, [
    [<ore:blockUranium>, <ore:slateTier4>, <ore:blockUranium>],
    [<midnight:miasma_surface>, <mekanism:teleportationcore>, <midnight:miasma_surface>], 
    [<midnight:dark_pearl_block>, <contenttweaker:bones_of_the_damned>, <midnight:dark_pearl_block>]
]);

recipes.addShapeless("ct_blaze_powder_block_uncraft", <minecraft:blaze_powder> * 4, [<contenttweaker:block_blaze_powder>]);

recipes.addShapeless("ct_mineral_soil", <contenttweaker:mineral_soil> * 32, [
    <contenttweaker:mineral_bed>, <contenttweaker:mineral_bed>, <contenttweaker:mineral_bed>, <contenttweaker:mineral_bed>,
    <ore:blockClay>, <ore:blockClay>, <ore:blockClay>, <ore:blockClay>, <enderio:item_material:32>
]);

recipes.addShapeless("ct_seared_plate", <contenttweaker:seared_plate>, [
    <immersiveengineering:tool>, <tconstruct:materials>
]);

recipes.addShapeless("ct_polymer_binding_agent", <contenttweaker:polymer_binding_agent> * 2, [
    <ore:gemLapis>, <ore:itemClay>, <ore:itemClay>, <thermalfoundation:material:772>
]);

recipes.addShapeless("ct_twinkling_star", <contenttweaker:twinkling_star> * 8, [<minecraft:nether_star>]);

recipes.addShapeless("ct_bloody_mud", <contenttweaker:bloody_mud>, [
    <ore:slimeballBlood>, <ore:itemClay>, <ore:itemClay>
]);

recipes.addShapeless("ct_energetic_compound", <contenttweaker:energetic_compound>, [
    <ore:dustRedstone>, <ore:dustGlowstone>
]);

recipes.addShaped("ct_nature_essence", <contenttweaker:nature_essence>, [
    [<minecraft:melon_block>, <minecraft:cactus>, <minecraft:purpur_block>],
    [<minecraft:apple>, <minecraft:reeds>, <minecraft:wheat>],
    [<minecraft:beetroot>, <minecraft:carrot>, <minecraft:potato>]
]);

recipes.addShaped("ct_nano_capacitory", <contenttweaker:nano_capacitor>, [
    [<ore:ingotVibrantAlloy>, <contenttweaker:nuclear_waste_rod>, <ore:ingotVibrantAlloy>],
    [<enderio:item_basic_capacitor:2>, <mekanism:controlcircuit:3>, <enderio:item_basic_capacitor:2>],
    [<ore:itemEnderCrystal>, <contenttweaker:nuclear_waste_rod>, <ore:itemEnderCrystal>]
]);

recipes.addShaped("ct_nano_pcb", <contenttweaker:nano_pcb>, [
    [<contenttweaker:neutronium_ingot>, <mekanism:tierinstaller:3>, <contenttweaker:neutronium_ingot>],
    [<contenttweaker:nano_capacitor>, <deepmoblearning:data_model_blank>, <contenttweaker:nano_capacitor>],
    [<ore:itemEnderCrystal>, <mekanism:tierinstaller:3>, <ore:itemEnderCrystal>]
]);


recipes.addShaped("ct_mastery_token", <contenttweaker:mastery_token_final>, [
    [<contenttweaker:mastery_token_sim_one>, <contenttweaker:mastery_token_sim_two>, <contenttweaker:mastery_token_sim_three>],
    [<contenttweaker:mastery_token_sim_four>, <contenttweaker:mastery_token_sim_five>, null],
    [null, null, null]
]);

recipes.addShaped("ct_nau01_builder", <contenttweaker:endgame_platform_assembler>, [
    [<ore:itemWeatherCrystal>, <contenttweaker:nano_pcb>, <ore:itemWeatherCrystal>],
    [<contenttweaker:nano_capacitor>, <mekanism:teleportationcore>, <contenttweaker:nano_capacitor>],
    [<mekanism:robit>, <contenttweaker:void_crystal>, <mekanism:robit>]
]);

recipes.addShaped("ct_project_item", <contenttweaker:atlas_project_item>, [
    [<mekanism:basicblock2:1>, <contenttweaker:neutronium_ingot>, <mekanism:basicblock2:1>],
    [<ore:singularitySoul>, <cryosimadditions:sanguis_nihil>, <ore:singularitySoul>],
    [<mekanism:basicblock2:1>, <contenttweaker:neutronium_ingot>, <mekanism:basicblock2:1>]
]);