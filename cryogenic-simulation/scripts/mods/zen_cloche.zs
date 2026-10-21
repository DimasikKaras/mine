import crafttweaker.item.IItemStack;
import scripts.helpers;
import mods.smokeythebandicoot.zencloche.GardenCloche;
import mods.jei.JEI;

# Remove all registered default fertilizers
GardenCloche.removeAllItemFertilizers();

# ----------------
# Liquid fertilizer
# ----------------
GardenCloche.registerFluidFertilizer(<liquid:troll_eye_goop>, 2.0);
GardenCloche.registerFluidFertilizer(<liquid:ammonium_nitrate>, 3.0);
addClocheTooltip(<forge:bucketfilled>.withTag({FluidName: "troll_eye_goop", Amount: 1000}), 2.0);
addClocheTooltip(<forge:bucketfilled>.withTag({FluidName: "ammonium_nitrate", Amount: 1000}), 3.0);

# ----------------
# Item fertilizer
# ----------------
var existingItemFertilizers = {
    <minecraft:dye:15>: 1.5,
    <thermalfoundation:fertilizer>: 2.5,
    <thermalfoundation:fertilizer:1>: 3.5,
    <thermalfoundation:fertilizer:2>: 4.0
} as float[IItemStack];

var customItemFertilizers = {
    <industrialforegoing:fertilizer>: 2.5,
    <bloodmagic:component:5>: 7.0
 } as float[IItemStack];

 for item, modifier in existingItemFertilizers {
    GardenCloche.registerItemFertilizer(item, modifier);
    addClocheTooltip(item, modifier);
}

for item, modifier in customItemFertilizers {
    GardenCloche.registerItemFertilizer(item, modifier);
    addClocheTooltip(item, modifier);
}

function addClocheTooltip(item as IItemStack, modifier as float) {
    helpers.addAtlasTip(item, [
        format.yellow("Garden Cloche modifier: ") + format.white("" + modifier)
    ]);
}


# Blessed sapling growth
GardenCloche.registerCrop(
    <cryosimadditions:blessed_sapling>,
    [<cryosimadditions:blood_resin_log> * 1] as IItemStack[],
    <botania:altgrass:3>,
    <blockstate:traverse:red_autumnal_sapling>
);
# Apple sapling growth
GardenCloche.registerCrop(
    <minecraft:sapling>,
    [<minecraft:apple> * 2] as IItemStack[],
    <minecraft:dirt>,
    <blockstate:minecraft:sapling>
);


JEI.addDescription([<cryosimadditions:blessed_sapling>, <botania:altgrass:3>], "Can be grown in a Garden Cloche when planted on Scorched Grass");

helpers.addAtlasTip(<cryosimadditions:blessed_sapling>, [
    format.yellow("Can only be grown in a Garden Cloche"),
    format.yellow("when planted on ") + format.red("Scorched Grass")
]);


helpers.addAtlasTip(<minecraft:red_mushroom>, [
    format.yellow("Can be grown in a Garden Cloche on Mycelium"),
]);

helpers.addAtlasTip(<minecraft:brown_mushroom>, [
    format.yellow("Can be grown in a Garden Cloche on Mycelium"),
]);


# Midnight rouxe crystal growth
GardenCloche.registerCrop(
    <midnight:rouxe>,
    [<midnight:rouxe> * 1] as IItemStack[],
    <midnight:rouxe_rock>,
    <blockstate:midnight:rouxe>
);

helpers.addAtlasTip(<midnight:rouxe>, [
    format.yellow("Can only be grown in a Garden Cloche"),
    format.yellow("when planted on ") + format.red("Rouxe Rock")
]);

# Midnight bloomcrystal growth
GardenCloche.registerCrop(
    <midnight:bloomcrystal>,
    [<midnight:bloomcrystal> * 1] as IItemStack[],
    <midnight:bloomcrystal_rock>,
    <blockstate:midnight:bloomcrystal>
);

helpers.addAtlasTip(<midnight:bloomcrystal>, [
    format.yellow("Can only be grown in a Garden Cloche"),
    format.yellow("when planted on ") + format.lightPurple("Bloomcrystal Rock")
]);

GardenCloche.registerCrop(
    <midnight:dragon_nest>,
    [<midnight:dragon_nest> * 1] as IItemStack[],
    <midnight:midnight_mycelium>,
    <blockstate:midnight:dragon_nest>
);

helpers.addAtlasTip(<midnight:dragon_nest>, [
    format.yellow("Can only be grown in a Garden Cloche"),
    format.yellow("when planted on ") + format.lightPurple("Midnight Mycelium")
]);


# ----------------
# kept for example, MA no longer in pack
# ----------------
/* GardenCloche.registerCrop(
    <mysticalagriculture:tier1_inferium_seeds>,
    [<mysticalagriculture:crafting> * 1] as IItemStack[],
    <minecraft:dirt>,
    <blockstate:mysticalagriculture:tier1_inferium_crop>
); */

