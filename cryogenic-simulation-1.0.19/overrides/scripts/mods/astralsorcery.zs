import mods.astralsorcery.Lightwell;
import mods.astralsorcery.Altar;
import mods.contenttweaker.Color;
import mods.astralsorcery.StarlightInfusion;
import mods.astralsorcery.LightTransmutation;
import scripts.helpers;

# ----------------
# Lightwell
# ----------------
Lightwell.addLiquefaction(<contenttweaker:troll_eye>, <liquid:troll_eye_goop>, 1.2, 6, 13542773);

# ----------------
# Altar
# ----------------
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/tool_basicwand");
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/illuminationpowder");
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/marble_black_raw");
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/illuminator");
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/starlightinfuser");
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier3");
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier4");

Altar.addDiscoveryAltarRecipe("cryogenic:bm/arcane_ashes", <bloodmagic:arcane_ashes>, 400, 80, [
    null, <astralsorcery:itemusabledust>, null,
    <contenttweaker:charred_feather>, <minecraft:dye:15>, <contenttweaker:charred_feather>,
    null, <minecraft:blaze_powder>, null,
]);

# Final portal piece to Arid waste
Altar.addAttunementAltarRecipe("cryogenic:ct/portal_stone", <contenttweaker:blessed_portal_stone>, 1700, 240, [
    <contenttweaker:troll_eye>, <ore:ingotAstralStarmetal>, <contenttweaker:troll_eye>,
    <ore:slateTier2>, <extrautils2:compressedcobblestone:3>, <ore:slateTier2>,
    <ore:blockManyullyn>, <ore:ingotAstralStarmetal>, <ore:blockManyullyn>,
    <astralsorcery:blockblackmarble>, <astralsorcery:blockblackmarble>, <astralsorcery:blockblackmarble>, <astralsorcery:blockblackmarble>
]);

# HOP Graphite
Altar.addAttunementAltarRecipe("cryogenic:ct/hop_graphite", <immersiveengineering:material:19>, 400, 120, [
    <ore:dustCoal>, <ore:dustCoal>, <ore:dustCoal>,
    <astralsorcery:itemusabledust:1>, <ore:ingotSteel>, <astralsorcery:itemusabledust:1>,
    <ore:dustCoal>, <ore:dustCoal>, <ore:dustCoal>,
    <minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>, <minecraft:blaze_powder>
]);

Altar.addAttunementAltarRecipe("cryogenic:as/cave_illuminator", <astralsorcery:blockworldilluminator>, 1200, 160, [
    <astralsorcery:blockmarble:3>, <astralsorcery:itemusabledust>, <astralsorcery:blockmarble:3>,
    <ore:blockGlowstone>, <deepmoblearning:pristine_matter_witch>, <ore:blockGlowstone>,
    <astralsorcery:blockmarble:3>, <astralsorcery:itemusabledust>, <astralsorcery:blockmarble:3>,
    <ore:glassLensPristine>, <ore:glassLensPristine>, <ore:glassLensPristine>, <ore:glassLensPristine>
]);

Altar.addAttunementAltarRecipe("cryogenic:as/tier3_celestial_altar", <astralsorcery:blockaltar:2>, 1200, 300, [
    <ore:gemAquamarine>, null, <ore:gemAquamarine>,
    <astralsorcery:blockinfusedwood:5>, <astralsorcery:itemrockcrystalsimple>, <astralsorcery:blockinfusedwood:5>,
    <astralsorcery:blockmarble:2>, <ore:ingotAstralStarmetal>, <astralsorcery:blockmarble:2>,
    <thermalfoundation:upgrade:33>, <thermalfoundation:upgrade:33>, <astralsorcery:blockmarble:4>, <astralsorcery:blockmarble:4>
]);

Altar.addConstellationAltarRecipe("cryogenic:as/bloodmoon_star", <contenttweaker:bloodmoon_star>, 800, 120, [
    <astralsorcery:itemcraftingcomponent:4>, <deepmoblearning:pristine_matter_shulker>, <astralsorcery:itemcraftingcomponent:4>,
    <deepmoblearning:pristine_matter_zombie>, <minecraft:nether_star>, <deepmoblearning:pristine_matter_thermal_elemental>,
    <astralsorcery:itemcraftingcomponent:4>, <deepmoblearning:pristine_matter_ghast>, <astralsorcery:itemcraftingcomponent:4>,
    <bloodmagic:decorative_brick:1>, <bloodmagic:decorative_brick:1>, <deepmoblearning:glitch_heart>, <deepmoblearning:glitch_heart>,
    <ore:slateTier4>, <ore:slateTier4>,
    <ore:slateTier4>, <ore:slateTier4>,
    <ore:slateTier4>, <ore:slateTier4>,
    <ore:slateTier4>, <ore:slateTier4>
]);

Altar.addConstellationAltarRecipe("cryogenic:as/starlight_infuser", <astralsorcery:blockstarlightinfuser>, 1800, 300, [
    <thermalfoundation:upgrade:33>, <ore:ingotAstralStarmetal>, <thermalfoundation:upgrade:33>,
    <ore:gemAquamarine>, <forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000}), <ore:gemAquamarine>,
    <astralsorcery:blockmarble:4>, <industrialforegoing:laser_lens>, <astralsorcery:blockmarble:4>,
    null, null, <astralsorcery:blockmarble:2>, <astralsorcery:blockmarble:2>,
	null, null,
	<astralsorcery:blockmarble:5>, <astralsorcery:blockmarble:5>,
	<astralsorcery:blockmarble:2>, <astralsorcery:blockmarble:2>,
	<astralsorcery:blockmarble:2>, <astralsorcery:blockmarble:2>
]);

Altar.addConstellationAltarRecipe("cryogenic:as/iridescent_altar", <astralsorcery:blockaltar:3>, 2000, 300, [
    <astralsorcery:blockmarble:6>, <industrialforegoing:laser_lens>, <astralsorcery:blockmarble:6>,
    <astralsorcery:itemcraftingcomponent:4>, <bloodmagic:blood_shard>, <astralsorcery:itemcraftingcomponent:4>,
    <astralsorcery:blockmarble:6>, <astralsorcery:blockblackmarble>, <astralsorcery:blockmarble:6>,
    <astralsorcery:blockmarble:6>, <astralsorcery:blockmarble:6>, <astralsorcery:blockmarble:6>, <astralsorcery:blockmarble:6>,
	<astralsorcery:blockblackmarble>, <astralsorcery:blockblackmarble>,
	<astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>,
	<bloodmagic:decorative_brick:1>, <bloodmagic:decorative_brick:1>,
	<bloodmagic:decorative_brick:1>, <bloodmagic:decorative_brick:1>
]);




# ------------------
# Starlight infusion
# ------------------
StarlightInfusion.removeInfusion(<minecraft:gunpowder>);

StarlightInfusion.addInfusion(<contenttweaker:sacrifice_clump>, g_anointedFlesh, false, 1.0, 80);

# ------------------
# Starlight TRANSMUTATION
# ------------------
LightTransmutation.addTransmutation(<contenttweaker:inert_endgame_casing>, <contenttweaker:endgame_mm_casing>, 200);

# ----------------
# Tooltips
# ----------------
helpers.addAtlasTip(<astralsorcery:blockblackmarble>, [
    format.yellow("Found on the Lunar Plane")
]);

helpers.addAtlasTip(<astralsorcery:itemlinkingtool>, [
    format.yellow("When linking against a Crystal"),
    format.yellow("Make sure it has a clear view of the sky")
]);

helpers.addAtlasTip(<astralsorcery:blockinfusedwood>, [
    format.yellow("Crafted by throwing wood into Liquid Starlight.")
]);


# Tooltip about disabled rituals
helpers.addAtlasTip(<astralsorcery:blockcelestialcollectorcrystal>.withTag({astralsorcery: { constellationName: "astralsorcery.constellation.horologium" }}), [
    format.yellow("Cannot be used to perform the Horologium Ritual")
]);

helpers.addAtlasTip(<astralsorcery:itemtunedcelestialcrystal>.withTag({astralsorcery: { constellationName: "astralsorcery.constellation.horologium" }}), [
    format.yellow("Cannot be used to perform the Horologium Ritual")
]);


helpers.addAtlasTip(<astralsorcery:blockritualpedestal>, [
    format.yellow("Disabled rituals:"),
    format.yellow("Horologium"),
    format.yellow(""),
    format.yellow("Mineralis ritual changes:"),
    format.yellow("Mineralis converts Moist Mineral Soil instead of Stone"),
    format.yellow("Mineralis ritual turns stone into ores from the first Simulation. (Also Aluminum Ore, and no lapis)"),
]);

# ----------------
# Recipe Removal
# ----------------
recipes.remove(<astralsorcery:blockaltar>);
recipes.remove(<astralsorcery:itemwand>);
recipes.remove(<astralsorcery:blockblackmarble>);

# ----------------
# Recipes
# ----------------
recipes.addShaped("as_resonating_wand", <astralsorcery:itemwand>.withTag({astralsorcery: {}}), [
    [null, <ore:gemAquamarine>, <ore:gemPrismarine>],
    [null, <ore:blockMarble>, <ore:gemAquamarine>],
    [<ore:blockMarble>, null, null],
]);

recipes.addShapeless("as_marble_convert", <astralsorcery:blockmarble>, [<chisel:marble2:7>]);

recipes.addShapeless("as_lightwell_dupe", <astralsorcery:blockwell> * 2, [<astralsorcery:blockwell>, <ore:stoneMarble>, <ore:stoneMarble>, <astralsorcery:itemcraftingcomponent:4>]);