import crafttweaker.item.IIngredient;
import mods.bloodmagic.BloodAltar;
import mods.astralsorcery.Utils;
import mods.bloodmagic.AlchemyTable;
import mods.bloodmagic.TartaricForge;
import crafttweaker.formatting.IFormattedText;
import scripts.helpers;

# ----------------
# Hellfire Forge
# ----------------
# Remove growth reagent recipe
TartaricForge.removeRecipe([<minecraft:sapling:1>, <minecraft:sapling:1>, <minecraft:reeds>, <minecraft:sugar>]);
TartaricForge.removeRecipe([<minecraft:glowstone_dust>, <minecraft:redstone>, <minecraft:gold_nugget>, <minecraft:gunpowder>]);
# Remove arcane ashes, crafted in AS altar
TartaricForge.removeRecipe([<minecraft:redstone>, <minecraft:dye:15>, <minecraft:gunpowder>, <minecraft:coal>]);

# ----------------
# Alchemy Table
# ----------------
# Remove gunpowder recipe
AlchemyTable.removeRecipe([<thermalfoundation:material:772>, <thermalfoundation:material:771>, <minecraft:coal:1>]);

# ----------------
# Blood Altar
# ----------------
# Remove tier 1 blood orb
BloodAltar.removeRecipe(<minecraft:diamond>);
# Remove tier 2 blood orb
BloodAltar.removeRecipe(<minecraft:redstone_block>);
# Remove tier 3 blood orb
BloodAltar.removeRecipe(<minecraft:gold_block>);
# Remote tier 4 blood orb
BloodAltar.removeRecipe(<bloodmagic:blood_shard>);
# Remote tier 5 blood orb
BloodAltar.removeRecipe(<minecraft:nether_star>);
# Remove Slates
BloodAltar.removeRecipe(<minecraft:stone>);
BloodAltar.removeRecipe(<bloodmagic:slate>);
BloodAltar.removeRecipe(<bloodmagic:slate:1>);
BloodAltar.removeRecipe(<bloodmagic:slate:2>);
BloodAltar.removeRecipe(<bloodmagic:slate:3>);
# Remove dagger of sacrifice
BloodAltar.removeRecipe(<minecraft:iron_sword>);
# Remove Inscription Tool Air, Fire, Earth, Water & Dusk
BloodAltar.removeRecipe(<minecraft:ghast_tear>);
BloodAltar.removeRecipe(<minecraft:lapis_block>);
BloodAltar.removeRecipe(<minecraft:magma_cream>);
BloodAltar.removeRecipe(<minecraft:obsidian>);
BloodAltar.removeRecipe(<minecraft:coal_block>);
# Remove slow life essence bucket recipe
BloodAltar.removeRecipe(<minecraft:bucket>);

# Life Essence Bucket
BloodAltar.addRecipe(<forge:bucketfilled>.withTag({FluidName: "lifeessence", Amount: 1000}), <minecraft:bucket>, 0, 1000, 15, 5);

# Slate Tiers
BloodAltar.addRecipe(<ore:slateTier1>.firstItem, <ore:charredTerracotta>.firstItem, 0, 500, 15, 5);
BloodAltar.addRecipe(<ore:slateTier2>.firstItem, <ore:slateTier1>.firstItem, 1, 1500, 20, 5);
BloodAltar.addRecipe(<ore:slateTier3>.firstItem, <ore:slateTier2>.firstItem, 2, 3000, 25, 5);
BloodAltar.addRecipe(<ore:slateTier4>.firstItem, <ore:slateTier3>.firstItem, 3, 9000, 30, 15);

# Soul snares
BloodAltar.addRecipe(<bloodmagic:soul_snare>, <ore:string>.firstItem, 0, 250, 10, 5);
BloodAltar.addRecipe(<bloodmagic:dagger_of_sacrifice>, <astralsorcery:itemcrystalsword>, 1, 5000, 20, 5);

# Blood Orbs
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({ orb: "bloodmagic:weak" }), <ore:trollEye>.firstItem, 0, 2000, 15, 5);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({ orb: "bloodmagic:apprentice" }), <ore:slimeballBlood>.firstItem, 1, 3500, 20, 5);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({ orb: "bloodmagic:magician" }), <astralsorcery:itemperkseal>, 2, 5000, 30, 5);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({ orb: "bloodmagic:master" }), <midnight:dark_pearl_block>, 3, 7500, 40, 5);
BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({ orb: "bloodmagic:archmage" }), <minecraft:nether_star>, 4, 40000, 50, 5);

# Inscription Tools
BloodAltar.addRecipe(<bloodmagic:inscription_tool:1>.withTag({ uses: 10 }), <infinitewatersource:infinitewatersource>, 2, 1000, 20, 5);
BloodAltar.addRecipe(<bloodmagic:inscription_tool:2>.withTag({ uses: 10 }), <ore:dustPyrotheum>.firstItem, 2, 1000, 20, 5);
BloodAltar.addRecipe(<bloodmagic:inscription_tool:3>.withTag({ uses: 10 }), <astralsorcery:blockblackmarble>, 2, 1000, 20, 5);
BloodAltar.addRecipe(<bloodmagic:inscription_tool:4>.withTag({ uses: 10 }), <ore:ravenFeather>.firstItem, 2, 1000, 20, 5);
BloodAltar.addRecipe(<bloodmagic:inscription_tool:5>.withTag({ uses: 10 }), <midnight:ebonys_block>, 3, 3000, 20, 5);

# ----------------
# Blood Orb tooltips
# ----------------
<bloodmagic:blood_orb>.withTag({ orb: "bloodmagic:weak" }).addTooltip(format.aqua("LP Network capacity: 5,000"));
<bloodmagic:blood_orb>.withTag({ orb: "bloodmagic:apprentice" }).addTooltip(format.aqua("LP Network capacity: 25,000"));
<bloodmagic:blood_orb>.withTag({ orb: "bloodmagic:magician" }).addTooltip(format.aqua("LP Network capacity: 150,000"));
<bloodmagic:blood_orb>.withTag({ orb: "bloodmagic:master" }).addTooltip(format.aqua("LP Network capacity: 1,000,000"));
<bloodmagic:blood_orb>.withTag({ orb: "bloodmagic:archmage" }).addTooltip(format.aqua("LP Network capacity: 10,000,000"));


<bloodmagic:slate:4>.addTooltip(format.aqua("Requires a vast amount of LP to craft"));
<bloodmagic:slate:4>.addTooltip(format.aqua("Can only be crafted after obtaining an Archmage Blood Orb"));


<bloodmagic:blood_shard>.addTooltip(format.aqua("Obtained by slaying monsters with a Bound Blade"));

helpers.addAtlasTip(<bloodmagic:inversion_pillar:4>, [
    format.yellow("Found in mysterious altar structures in the Combat Simulation"),
]);

# ----------------
# Recipe removal
# ----------------
recipes.remove(<bloodmagic:altar>);
recipes.remove(<bloodmagic:soul_snare>);
recipes.remove(<bloodmagic:sacrificial_dagger>);
recipes.remove(<bloodmagic:blood_rune:3>);
recipes.remove(<bloodmagic:blood_rune:4>);
recipes.remove(<bloodmagic:incense_altar>);
recipes.remove(<bloodmagic:soul_forge>);
recipes.remove(<bloodmagic:blood_rune:8>);
recipes.remove(<bloodmagic:activation_crystal:1>);
recipes.remove(<bloodmagic:blood_rune>);

# Blank blood altar rune
recipes.addShaped("bm_blank_rune", <bloodmagic:blood_rune>, [
    [<astralsorcery:blockblackmarble>, <astralsorcery:blockblackmarble>, <astralsorcery:blockblackmarble>],
    [<ore:slateTier1>, null, <ore:slateTier1>],
    [<astralsorcery:blockblackmarble>, <astralsorcery:blockblackmarble>, <astralsorcery:blockblackmarble>]
]);

# "blanking" crafted runes
recipes.addShapeless("bm_clear_rune1", <bloodmagic:blood_rune>, [<bloodmagic:blood_rune:1>]);
# 2 isnt implemented
recipes.addShapeless("bm_clear_rune3", <bloodmagic:blood_rune>, [<bloodmagic:blood_rune:3>]);
recipes.addShapeless("bm_clear_rune4", <bloodmagic:blood_rune>, [<bloodmagic:blood_rune:4>]);
recipes.addShapeless("bm_clear_rune5", <bloodmagic:blood_rune>, [<bloodmagic:blood_rune:5>]);
recipes.addShapeless("bm_clear_rune6", <bloodmagic:blood_rune>, [<bloodmagic:blood_rune:6>]);
recipes.addShapeless("bm_clear_rune7", <bloodmagic:blood_rune>, [<bloodmagic:blood_rune:7>]);
recipes.addShapeless("bm_clear_rune8", <bloodmagic:blood_rune>, [<bloodmagic:blood_rune:8>]);
recipes.addShapeless("bm_clear_rune9", <bloodmagic:blood_rune>, [<bloodmagic:blood_rune:9>]);
recipes.addShapeless("bm_clear_rune10", <bloodmagic:blood_rune>, [<bloodmagic:blood_rune:10>]);

# Hints for how runes work, since the guide is awful
<bloodmagic:blood_rune:1>.addTooltip(format.aqua("+20% Blood Orb charging speed per Speed Rune"));
<bloodmagic:blood_rune:1>.addTooltip(format.aqua("+20% Altar crafting speed per Speed Rune"));


<bloodmagic:blood_rune:3>.addTooltip(format.aqua("+10% LP yield per Rune of Sacrifice when mob health is sacrified"));
<bloodmagic:blood_rune:3>.addTooltip(format.aqua("+0.1x Multiplier per Rune of Sacrifice in Digital Agonizer operations"));


<bloodmagic:blood_rune:4>.addTooltip(format.aqua("+10% LP yield per Rune of Self Sacrifice when Player health is sacrified"));
<bloodmagic:blood_rune:4>.addTooltip(format.aqua("Good early-game rune for altars before LP can be automated"));

<bloodmagic:blood_rune:5>.addTooltip(format.aqua("+1.2x more LP transfer rate per Displacement Rune (stacks multiplicatively)"));

<bloodmagic:blood_rune:6>.addTooltip(format.aqua("+2k LP Blood Altar tank capacity per Rune of Capacity"));

<bloodmagic:blood_rune:7>.addTooltip(format.aqua("+10% Blood Altar tank capacity per Augmented Rune of Capacity"));
<bloodmagic:blood_rune:7>.addTooltip(format.aqua("Every additional rune of this type increases the bonus multiplicatively"));
<bloodmagic:blood_rune:7>.addTooltip(format.aqua("Does not scale capacity gained from Rune of Capacity"));

<bloodmagic:blood_rune:8>.addTooltip(format.aqua("+2% Max LP that the network of Blood Orb the altar is charging can have per Rune of the Orb"));

<bloodmagic:blood_rune:9>.addTooltip(format.aqua("-1 tick between altar LP displacement operations per Acceleration Rune"));
<bloodmagic:blood_rune:9>.addTooltip(format.aqua("-1 tick between altar LP charging operations per Acceleration Rune"));
<bloodmagic:blood_rune:9>.addTooltip(format.aqua("Having more than 19 Acceleration Runes produces no additional benefit"));

<bloodmagic:blood_rune:10>.addTooltip(format.aqua("Charging Runes build a charge buffer for crafting operations"));
<bloodmagic:blood_rune:10>.addTooltip(format.aqua("Each Charging Rune grows the available charge buffer"));
<bloodmagic:blood_rune:10>.addTooltip(format.aqua("The Charge Buffer is multiplied by the max LP size of the Blood Altar"));

helpers.addAtlasTip(<bloodmagic:sigil_divination>, [
    format.yellow("Right-Clicking with this item reveals how much LP is in the players LP network"),
]);


# ----------------
# Recipes
# ----------------
val runes = [
    <bloodmagic:blood_rune:1>,
    <bloodmagic:blood_rune:5>,
    <bloodmagic:blood_rune:6>,
    <bloodmagic:blood_rune:7>,
    <bloodmagic:blood_rune:8>,
    <bloodmagic:blood_rune:9>,
    <bloodmagic:blood_rune:10>
] as IIngredient[];

for rune in runes {
    recipes.replaceAllOccurences(<ore:stone>, <astralsorcery:blockblackmarble>, rune);
}

recipes.addShaped("bm_sacrifice_rune", <bloodmagic:blood_rune:3>, [
    [<astralsorcery:blockblackmarble>, <ore:slateTier2>, <astralsorcery:blockblackmarble>],
    [<contenttweaker:blood_raven_feather>, <bloodmagic:blood_rune>, <contenttweaker:blood_raven_feather>],
    [<astralsorcery:blockblackmarble>, null, <astralsorcery:blockblackmarble>]
]);

recipes.addShaped("bm_self_sacrifice_rune", <bloodmagic:blood_rune:4>, [
    [<astralsorcery:blockblackmarble>, <contenttweaker:blood_raven_feather>, <astralsorcery:blockblackmarble>],
    [<ore:dustGlowstone>, <bloodmagic:blood_rune>, <ore:dustGlowstone>],
    [<astralsorcery:blockblackmarble>, null, <astralsorcery:blockblackmarble>]
]);

recipes.addShaped("bm_rune_of_the_orb", <bloodmagic:blood_rune:8> * 8, [
    [<bloodmagic:blood_rune>, <ore:enderpearl>, <bloodmagic:blood_rune>],
    [<ore:enderpearl>, <industrialforegoing:black_hole_tank>, <ore:enderpearl>],
    [<bloodmagic:blood_rune>, <ore:enderpearl>, <bloodmagic:blood_rune>]
]);

recipes.addShaped("bm_altar", <bloodmagic:altar>, [
    [null, <contenttweaker:blood_raven_feather>, null],
    [<ore:plateSanguineMetal>, <tconstruct:smeltery_controller>, <ore:plateSanguineMetal>],
    [<ore:blockSanguineMetal>, <immersiveengineering:metal_decoration0:7>, <ore:blockSanguineMetal>]
]);

recipes.addShaped("bm_sac_dagger", <bloodmagic:sacrificial_dagger>, [
    [null, null, <ore:ingotSanguineMetal>],
    [null, <ore:ingotSanguineMetal>, null],
    [<ore:stickIron>, null, null]
]);

recipes.addShaped("bm_soul_forge", <bloodmagic:soul_forge>, [
    [Utils.getCrystalORIngredient(false, false), null, Utils.getCrystalORIngredient(false, false)],
    [<ore:ingotBrickSeared>, <ore:blockSeared>, <ore:ingotBrickSeared>],
    [<ore:ingotBrickSeared>, <ore:plateSanguineMetal>, <ore:ingotBrickSeared>]
]);

recipes.addShaped("bm_awakened_activation_crystal", <bloodmagic:activation_crystal:1>, [
    [<ore:runeWaterB>, <ore:manaPearl>, <ore:runeFireB>],
    [<ore:ingotManasteel>, <bloodmagic:activation_crystal>, <ore:ingotManasteel>],
    [<ore:runeAirB>, <ore:manaDiamond>, <ore:runeEarthB>]
]);





