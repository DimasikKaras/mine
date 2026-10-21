
# ----------
# Recipes 
# ----------
recipes.remove(<extrautils2:ineffableglass>);
recipes.remove(<extrautils2:ineffableglass:2>);
recipes.remove(<extrautils2:ineffableglass:3>);
# Remove crafter recipe
recipes.remove(<extrautils2:crafter>);
# Remove Stone Drum
recipes.remove(<extrautils2:drum>);
# Remove Creative Drum recipe
recipes.remove(<extrautils2:drum:4>);
# Remove User recipe
recipes.remove(<extrautils2:user>);
# Remove Mechanical Miner recipe
recipes.remove(<extrautils2:miner>);
# Remove higher tier drums (and iron, to put another recipe)
recipes.remove(<extrautils2:drum:1>);
recipes.remove(<extrautils2:drum:2>);
recipes.remove(<extrautils2:drum:3>);
# Remove higher-tiers of compressed cobble
recipes.remove(<extrautils2:compressedcobblestone:4>);
recipes.remove(<extrautils2:compressedcobblestone:5>);
recipes.remove(<extrautils2:compressedcobblestone:6>);
recipes.remove(<extrautils2:compressedcobblestone:7>);


# ----------------
# Recipes
# ----------------
recipes.addShaped("eu2_iron_drum", <extrautils2:drum:1>, [
    [<thermalfoundation:material:32>, <minecraft:cauldron>, <thermalfoundation:material:32>],
    [<thermalfoundation:material:32>, <tconstruct:seared_tank>, <thermalfoundation:material:32>],
    [<thermalfoundation:material:32>, <minecraft:cauldron>, <thermalfoundation:material:32>]
]);

recipes.addShaped("eu2_mechuser", <extrautils2:user>, [
    [<immersiveengineering:metal_decoration0:3>, g_blessedServo],
    [<exnihilocreatio:hammer_diamond>, null]
]);

recipes.addShaped("eu2_miner", <extrautils2:miner>, [
    [<immersiveengineering:metal_decoration0:3>, <minecraft:iron_pickaxe>],
    [<ore:gearStone>, null]
]);

recipes.addShaped("eu2_crafter", <extrautils2:crafter>, [
    [<immersiveengineering:metal_decoration0:3>, <ore:workbench>],
    [<ore:gearStone>, null]
]);

recipes.addShaped("eu2_ethereal_glass", <extrautils2:ineffableglass> * 8, [
    [<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
    [<minecraft:glass>, <chisel:cloud>, <minecraft:glass>],
    [<minecraft:glass>, <minecraft:glass>, <minecraft:glass>]
]);

recipes.addShaped("eu2_ineffable_glass", <extrautils2:ineffableglass:2> * 8, [
    [<tconstruct:clear_glass>, <tconstruct:clear_glass>, <tconstruct:clear_glass>],
    [<tconstruct:clear_glass>, <chisel:cloud>, <tconstruct:clear_glass>],
    [<tconstruct:clear_glass>, <tconstruct:clear_glass>, <tconstruct:clear_glass>]
]);

recipes.addShaped("eu2_dark_ineffable_glass", <extrautils2:ineffableglass:3> * 8, [
    [<pickletweaks:dark_glass>, <pickletweaks:dark_glass>, <pickletweaks:dark_glass>],
    [<pickletweaks:dark_glass>, <chisel:cloud>, <pickletweaks:dark_glass>],
    [<pickletweaks:dark_glass>, <pickletweaks:dark_glass>, <pickletweaks:dark_glass>]
]);
