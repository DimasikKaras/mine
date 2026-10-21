import scripts.helpers;

# ----------------
# Recipe removal
# ----------------
recipes.remove(<midnight:bogshroom_powder>);
recipes.remove(<midnight:nightshroom_powder>);
recipes.remove(<midnight:dewshroom_powder>);
recipes.remove(<midnight:viridshroom_powder>);


# ----------------
# Shroom sapling craft
# ----------------
recipes.addShapeless("viridshroom_sapling", <midnight:viridshroom>, [
    <midnight:viridshroom_hat>, <midnight:viridshroom_hat>, <midnight:viridshroom_hat>, <ore:mushroomAny>, <ore:mushroomAny>
]);

recipes.addShapeless("dewshroom_sapling", <midnight:dewshroom>, [
    <midnight:dewshroom_hat>, <midnight:dewshroom_hat>, <midnight:dewshroom_hat>, <ore:mushroomAny>, <ore:mushroomAny>
]);

recipes.addShapeless("nightshroom_sapling", <midnight:nightshroom>, [
    <midnight:nightshroom_hat>, <midnight:nightshroom_hat>, <midnight:nightshroom_hat>, <ore:mushroomAny>, <ore:mushroomAny>
]);

recipes.addShapeless("bogshroom_sapling", <midnight:bogshroom>, [
    <midnight:bogshroom_hat>, <midnight:bogshroom_hat>, <midnight:bogshroom_hat>, <ore:mushroomAny>, <ore:mushroomAny>
]);

# ----------
# Tooltips
# ----------
helpers.addAtlasTip(<midnight:ghost_plant>, [
    format.yellow("Found in the Midnight")
]);

helpers.addAtlasTip(<midnight:dark_pearl>, [
    format.yellow("Rare drop from Dark Pearl Ore"),
    format.yellow("Can also be acquired by throwing Geodes")
]);


helpers.addAtlasTip(<midnight:archaic_ore>, [
    format.yellow("Found rarely inside Trenchstone clusters")
]);


helpers.addAtlasTip(<midnight:dewshroom>, [
    format.yellow("Can be grown in the Midnight"),
    format.yellow("Grows on Nightstone, Midnight Grass and Midnight Mycelium")
]);

helpers.addAtlasTip(<midnight:viridshroom>, [
    format.yellow("Can be grown in the Midnight"),
    format.yellow("Grows on Nightstone, Midnight Grass and Midnight Mycelium")
]);

helpers.addAtlasTip(<midnight:nightshroom>, [
    format.yellow("Can be grown in the Midnight"),
    format.yellow("Grows on Nightstone, Midnight Grass and Midnight Mycelium")
]);

helpers.addAtlasTip(<forge:bucketfilled>.withTag({FluidName: "dark_water", Amount: 1000}), [
    format.yellow("Found in bodies of water the Midnight"),
    format.yellow("Later on it can be produced in the Dark Steel Fluid Mixer")
]);


<midnight:bogshroom>.addTooltip("Can only be grown in a Phytogenic Insolator");
<midnight:bogshroom>.addTooltip(format.red("Cannot be grown in the Midnight like Dew/Virid/Nightshrooms"));