import mods.botania.Apothecary;
import mods.botania.PureDaisy;
import mods.botania.RuneAltar;
import scripts.helpers;
import mods.botania.ManaInfusion;
import mods.botania.ElvenTrade;

# ----------
# Tooltips
# ----------
helpers.addAtlasTip(<botania:flower>, [
    format.yellow("Crafted by transmuting Ghost Plants with the Resonating Wand")
]);

helpers.addAtlasTip(<botania:storage:3>, [
    format.yellow("Can be sacrificed in the Mark of the Falling Tower ritual")
]);

# ----------------
# Recipes
# ----------------
recipes.remove(<botania:altar>);
recipes.remove(<botania:pool:*>);
recipes.remove(<botania:runealtar>);
recipes.remove(<botania:spreader>);
recipes.remove(<botania:fertilizer>);
recipes.remove(<botania:manatablet>);
recipes.remove(<botania:pylon>);
recipes.remove(<botania:spark>);

# Remove floating gen flowers
recipes.removeByRecipeName("botania:floating_");
recipes.removeByRecipeName("botania:floating_endoflame");
recipes.removeByRecipeName("botania:floating_hydroangeas");
recipes.removeByRecipeName("botania:floating_entropinnyum");
recipes.removeByRecipeName("botania:floating_thermalily");
recipes.removeByRecipeName("botania:floating_dandelifeon");
recipes.removeByRecipeName("botania:floating_arcanerose");
recipes.removeByRecipeName("botania:floating_shulk_me_not");
recipes.removeByRecipeName("botania:floating_gourmaryllis");
recipes.removeByRecipeName("botania:floating_kekimurus");
recipes.removeByRecipeName("botania:floating_munchdew");
recipes.removeByRecipeName("botania:floating_rafflowsia");
# Remove floating orechid
recipes.removeByRecipeName("botania:floating_orechid");
recipes.removeByRecipeName("botania:floating_orechidignem");

recipes.addShapeless("botania_floral_fertilizer", <botania:fertilizer> * 4, [<minecraft:dye:15>, <ore:livingMatterOverworld>, <botania:petal:*>]);

recipes.addShaped("botania_petal_apothecary", <botania:altar>, [
    [null, <forge:bucketfilled>.withTag({FluidName: "dark_water", Amount: 1000}).onlyWithTag({FluidName: "dark_water", Amount: 1000}), null],
    [<ore:petalWhite>, <midnight:nightstone>, <ore:petalWhite>],
    [<midnight:nightstone>, <midnight:nightstone>, <midnight:nightstone>]
]);

recipes.addShaped("botania_mana_tablet", <botania:manatablet>.withTag({ mana: 0 }), [
    [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>],
    [<botania:livingrock>, <ore:slateTier4>, <botania:livingrock>],
    [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>]
]);

recipes.addShaped("botania_mana_pool", <botania:pool>, [
    [null, null, null],
    [<ore:livingrock>, <bloodmagic:altar>, <ore:livingrock>],
    [<ore:livingrock>, <ore:livingrock>, <ore:livingrock>]
]);

recipes.addShaped("botania_fab_mana_pool", <botania:pool:3>, [
    [null, null, null],
    [<botania:shimmerrock>, <bloodmagic:altar>, <botania:shimmerrock>],
    [<botania:shimmerrock>, <botania:shimmerrock>, <botania:shimmerrock>]
]);

recipes.addShaped("botania_diluted_mana_pool", <botania:pool:2>, [
    [<botania:livingrock0slab>, null, <botania:livingrock0slab>],
    [<botania:livingrock0slab>, null, <botania:livingrock0slab>],
    [<botania:livingrock0slab>, <bloodmagic:altar>, <botania:livingrock0slab>]
]);

recipes.addShaped("botania_mana_spreader", <botania:spreader>, [
    [<ore:livingwood>, <ore:livingwood>, <ore:livingwood>],
    [<contenttweaker:troll_eye>, <botania:petal:*>, <thermalfoundation:upgrade:33>],
    [<ore:livingwood>, <ore:livingwood>, <ore:livingwood>]
]);

recipes.addShaped("botania_runic_altar", <botania:runealtar>, [
    [<botania:livingrock0slab>, <ore:manaPearl>, <botania:livingrock0slab>],
    [<ore:slateTier4>, <bloodmagic:altar>, <ore:slateTier4>],
    [<ore:livingrock>, <ore:livingrock>, <ore:livingrock>]
]);

recipes.addShaped("botania_pylon_t1", <botania:pylon>, [
    [<botania:rune:3>, <botania:storage>, <botania:rune:3>],
    [<thermalfoundation:upgrade:33>, <botania:storage:3>, <thermalfoundation:upgrade:33>],
    [<botania:rune:2>, <botania:storage>, <botania:rune:2>]
]);

recipes.addShaped("botania_spark", <botania:spark>, [
    [<botania:manaresource:1>, <botania:rune:3>, <botania:manaresource:1>],
    [<thermalfoundation:material:1024>, <midnight:dark_pearl_block>, <thermalfoundation:material:1024>],
    [<astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemusabledust>, <astralsorcery:itemcraftingcomponent:4>]
]);


# ------------------
# Petal Apothecary
# ------------------
# Remove generating flowers
Apothecary.removeRecipe(<botania:specialflower>.withTag({ type: "endoflame" }));
Apothecary.removeRecipe(<botania:specialflower>.withTag({ type: "hydroangeas" }));
Apothecary.removeRecipe(<botania:specialflower>.withTag({ type: "entropinnyum" }));
Apothecary.removeRecipe(<botania:specialflower>.withTag({ type: "thermalily" }));
Apothecary.removeRecipe(<botania:specialflower>.withTag({ type: "dandelifeon" }));
Apothecary.removeRecipe(<botania:specialflower>.withTag({ type: "arcanerose" }));
Apothecary.removeRecipe(<botania:specialflower>.withTag({ type: "shulk_me_not" }));
Apothecary.removeRecipe(<botania:specialflower>.withTag({ type: "gourmaryllis" }));
Apothecary.removeRecipe(<botania:specialflower>.withTag({ type: "narslimmus" }));
Apothecary.removeRecipe(<botania:specialflower>.withTag({ type: "spectrolus" }));
Apothecary.removeRecipe(<botania:specialflower>.withTag({ type: "kekimurus" }));
Apothecary.removeRecipe(<botania:specialflower>.withTag({ type: "munchdew" }));
Apothecary.removeRecipe(<botania:specialflower>.withTag({ type: "rafflowsia" }));

Apothecary.removeRecipe(<botania:specialflower>.withTag({ type: "orechid" }));
Apothecary.removeRecipe(<botania:specialflower>.withTag({ type: "orechidIgnem" }));

Apothecary.removeRecipe(<botania:specialflower>.withTag({type: "puredaisy"}));

Apothecary.addRecipe("puredaisy", [<ore:petalWhite>, <ore:petalWhite>, <ore:petalWhite>, <ore:petalWhite>, <contenttweaker:twinkling_star>]);

# ------------------
# Pure Daisy
# ------------------
PureDaisy.removeRecipe(<botania:livingwood>);
PureDaisy.removeRecipe(<botania:livingrock>);

PureDaisy.addRecipe(<cryosimadditions:blood_resin_log>, <botania:livingwood>);
PureDaisy.addRecipe(<midnight:nightstone>, <botania:livingrock>);

# Mineral bed
PureDaisy.addRecipe(<chisel:limestone2:7>, <contenttweaker:mineral_bed>);

# ------------------
# Runic Altar
# ------------------
RuneAltar.removeRecipe(<botania:rune>);
RuneAltar.removeRecipe(<botania:rune:1>);
RuneAltar.removeRecipe(<botania:rune:2>);
RuneAltar.removeRecipe(<botania:rune:3>);
RuneAltar.removeRecipe(<botania:rune:7>);

# Rune of Water
RuneAltar.addRecipe(<botania:rune> * 2, [
    <ore:slateTier3>.firstItem,
    <ore:ingotEnderium>.firstItem,
    <ore:ingotManasteel>.firstItem,
    <ore:manaDiamond>.firstItem,
    <ore:manaPearl>.firstItem,
    <midnight:geode>,
    <infinitewatersource:infinitewatersource>,
    <minecraft:fish:3>,
    <minecraft:fish>
], 8000);

# Rune of Fire
RuneAltar.addRecipe(<botania:rune:1> * 2, [
    <ore:slateTier3>.firstItem,
    <ore:ingotEnderium>.firstItem,
    <ore:ingotManasteel>.firstItem,
    <ore:manaDiamond>.firstItem,
    <ore:manaPearl>.firstItem,
    <midnight:geode>,
    <ore:livingMatterHell>.firstItem,
    <ore:dustPyrotheum>.firstItem,
    <minecraft:tnt>
], 8000);

# Rune of Earth
RuneAltar.addRecipe(<botania:rune:2> * 2, [
    <ore:slateTier3>.firstItem,
    <ore:ingotEnderium>.firstItem,
    <ore:ingotManasteel>.firstItem,
    <ore:manaDiamond>.firstItem,
    <ore:manaPearl>.firstItem,
    <midnight:geode>,
    <ore:livingMatterOverworld>.firstItem,
    <midnight:midnight_dirt>,
    <astralsorcery:blockblackmarble>
], 8000);

# Rune of Air
RuneAltar.addRecipe(<botania:rune:3> * 2, [
    <ore:slateTier3>.firstItem,
    <ore:ingotEnderium>.firstItem,
    <ore:ingotManasteel>.firstItem,
    <ore:manaDiamond>.firstItem,
    <ore:manaPearl>.firstItem,
    <midnight:geode>,
    <ore:ravenFeather>.firstItem,
    <ore:manaString>.firstItem,
    <immersiveengineering:material:12>
], 8000);

# Rune of Winter
RuneAltar.addRecipe(<botania:rune:7>, [
    <ore:runeWaterB>.firstItem,
    <ore:runeEarthB>.firstItem,
    <ore:blockPackedIce>.firstItem,
    <ore:blockPackedIce>.firstItem,
    <ore:blockPackedIce>.firstItem,
    <minecraft:snow>,
    <minecraft:snow>,
    <minecraft:snow>
], 12000);

# Dim 5 portal component
RuneAltar.addRecipe(<mekanism:teleportationcore>, [
    <botania:storage:1>,
    <botania:storage:2>,
    <botania:storage:4>,
    <ore:blockPlatinum>.firstItem,
    <ore:blockIridium>.firstItem,
    <ore:blockUranium>.firstItem,
    <ore:runePrideB>.firstItem,
    <ore:runeManaB>.firstItem,
    <ore:runeWrathB>.firstItem
], 50000);


# ------------------
# Mana pool
# ------------------
ManaInfusion.removeRecipe(<botania:manaresource>);
ManaInfusion.removeRecipe(<botania:manaresource:2>);
ManaInfusion.removeRecipe(<botania:storage>);
ManaInfusion.removeRecipe(<botania:storage:3>);

ManaInfusion.addInfusion(<botania:manaresource>, <ore:ingotSteel>, 3000);
ManaInfusion.addInfusion(<botania:storage>, <ore:blockSteel>, 27000);

ManaInfusion.addInfusion(<botania:manaresource:2>, <ore:gemInfusedDiamond>, 12000);

ManaInfusion.addInfusion(<ore:gearMithril>.firstItem, <ore:gearVibrant>, 30000);

# Growth reagent
ManaInfusion.addConjuration(<bloodmagic:component:5>, <thermalfoundation:fertilizer:2>, 3000);


# ------------------
# Trade Portal
# ------------------
ElvenTrade.addRecipe([<contenttweaker:sacrifice_clump>], [<contenttweaker:sacrificial_nightstag>]);