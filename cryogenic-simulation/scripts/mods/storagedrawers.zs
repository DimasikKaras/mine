# ----------------
# Recipe removals
# ----------------
recipes.remove(<storagedrawers:controller>);
recipes.remove(<storagedrawers:compdrawers>);
recipes.remove(<storagedrawers:upgrade_template>);
# Removeall drawer upgrade tiers to encourage black hole units / bins
recipes.remove(<storagedrawers:upgrade_storage>);
recipes.remove(<storagedrawers:upgrade_storage:1>);
recipes.remove(<storagedrawers:upgrade_storage:2>);
recipes.remove(<storagedrawers:upgrade_storage:3>);
recipes.remove(<storagedrawers:upgrade_storage:4>);
# Remove void upgrade, replaced with cheaper recipe
recipes.remove(<storagedrawers:upgrade_void>);
# Remove unidict conversion upgrade, we have normalization of metals already.
recipes.remove(<storagedrawers:upgrade_conversion>);


recipes.addShapeless("sd_void_upgrade", <storagedrawers:upgrade_void>, [<storagedrawers:upgrade_template>, <minecraft:obsidian>]);

# Drawer Controller
recipes.addShaped("sd_upgrade_template", <storagedrawers:upgrade_template> * 4, [
    [<ore:stickTreatedWood>, <ore:plankTreatedWood>, <ore:stickTreatedWood>],
    [<ore:plankTreatedWood>, <ore:drawerBasic>, <ore:plankTreatedWood>],
    [<ore:stickTreatedWood>, <ore:plankTreatedWood>, <ore:stickTreatedWood>],
]);

# Drawer Controller
recipes.addShaped("sd_controller", <storagedrawers:controller>, [
    [<ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>],
    [<ore:plateSanguineMetal>, <ore:drawerBasic>, <ore:plateSanguineMetal>],
    [<immersiveengineering:metal_decoration0:5>, <ore:gemDiamond>, <immersiveengineering:metal_decoration0:5>],
]);

# Compacting Drawer
recipes.addShaped("sd_compacting", <storagedrawers:compdrawers> * 2, [
    [<ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>],
    [<ore:piston>, <ore:drawerBasic>, <ore:piston>],
    [<ore:compressed1xCobblestone>, <ore:plateSteel>, <ore:compressed1xCobblestone>],
]);



# Fir wood planks drawers
recipes.addShaped("sd_full_drawer_fir", <storagedrawers:basicdrawers>.withTag({material: "oak"}), [
    [<traverse:fir_planks>, <traverse:fir_planks>, <traverse:fir_planks>],
    [null, <ore:chestWood>, null],
    [<traverse:fir_planks>, <traverse:fir_planks>, <traverse:fir_planks>],
]);

# Fir wood planks drawers 1x2
recipes.addShaped("sd_half_drawer_fir", <storagedrawers:basicdrawers:1>.withTag({material: "oak"}) * 2, [
    [<traverse:fir_planks>, <ore:chestWood>, <traverse:fir_planks>],
    [<traverse:fir_planks>, <traverse:fir_planks>, <traverse:fir_planks>],
    [<traverse:fir_planks>, <ore:chestWood>, <traverse:fir_planks>],
]);

# Fir wood planks drawers 2x2
recipes.addShaped("sd_quarter_drawer_fir", <storagedrawers:basicdrawers:2>.withTag({material: "oak"}) * 4, [
    [<ore:chestWood>, <traverse:fir_planks>, <ore:chestWood>],
    [<traverse:fir_planks>, <traverse:fir_planks>, <traverse:fir_planks>],
    [<ore:chestWood>, <traverse:fir_planks>, <ore:chestWood>],
]);