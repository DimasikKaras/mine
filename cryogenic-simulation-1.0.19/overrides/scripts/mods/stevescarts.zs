import scripts.helpers;
import mods.jei.JEI;

# Remove all
recipes.removeByMod("stevescarts");
# Remove furnace recipes
furnace.remove(<stevescarts:modulecomponents:12>);
furnace.remove(<stevescarts:modulecomponents:19>);
furnace.remove(<stevescarts:modulecomponents:22>);
furnace.remove(<stevescarts:modulecomponents:47>);
furnace.remove(<stevescarts:modulecomponents:49>);

JEI.addItem(g_treeCutter3000);

helpers.addAtlasTip(g_treeCutter3000, [
    format.yellow("Runs on water and lava"),
    format.yellow("No tree is safe!"),
    format.yellow("Muhaha")
]);


# Add recipes for managers
recipes.addShapeless("steve_manager", <stevescarts:blockcargomanager>, [<rftools:machine_frame>, <minecraft:minecart>, <metalchests:metal_chest:1>, <ore:blockRedstone>]);
recipes.addShapeless("steve_liq_manager", <stevescarts:blockliquidmanager>, [<rftools:machine_frame>, <minecraft:minecart>, <thermalexpansion:tank>, <ore:blockRedstone>]);
recipes.addShapeless("steve_distrib", <stevescarts:blockdistributor>, [<rftools:machine_frame>, <minecraft:minecart>, <storagedrawers:controller>, <ore:blockRedstone>]);

# Galgadorian hull
recipes.addShaped("steve_galg_hull", <stevescarts:cartmodule:81>, [
    [<astralsorcery:itemcraftingcomponent:1>, null, <astralsorcery:itemcraftingcomponent:1>],
    [<minecraft:netherbrick>, <minecraft:minecart>, <minecraft:netherbrick>],
    [<ore:slateTier2>, <tconstruct:large_plate>.withTag({Material: "manyullyn"}), <ore:slateTier2>],
]);

# Rails
recipes.addShapeless("steve_detect_rail", <stevescarts:blockadvdetector>, [<minecraft:activator_rail>, <pneumaticcraft:capacitor>]);
recipes.addShapeless("steve_junc_rail", <stevescarts:blockjunction>, [<minecraft:activator_rail>, <minecraft:redstone_block>]);
