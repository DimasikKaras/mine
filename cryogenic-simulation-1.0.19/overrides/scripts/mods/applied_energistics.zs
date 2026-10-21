import crafttweaker.item.IIngredient;


# ----------------
# Recipes
# ----------------
# Remove all cable recipes added by AE2
recipes.removeByRegex("^appliedenergistics2:network/cables/\\w+");


# Remove Mystical Agriculture press recipes
recipes.remove(<appliedenergistics2:material:13>);
recipes.remove(<appliedenergistics2:material:14>);
recipes.remove(<appliedenergistics2:material:15>);
recipes.remove(<appliedenergistics2:material:19>);
# Remove EnderIO recipe for enderdust
recipes.remove(<appliedenergistics2:material:46>);
# Remove disk drive recipe
recipes.remove(<appliedenergistics2:drive>);
# Remove growth accelerator
recipes.remove(<appliedenergistics2:quartz_growth_accelerator>);
# Remove default interface recipes
recipes.removeByRecipeName("appliedenergistics2:network/blocks/interfaces_interface");
recipes.removeByRecipeName("appliedenergistics2:network/blocks/fluid_interfaces_interface");
# Remove Quartz glass & Quartz fiber recipe
recipes.remove(<appliedenergistics2:quartz_glass>);
recipes.remove(<appliedenergistics2:part:140>);
# Remove storage bus recipe
recipes.remove(<appliedenergistics2:part:220>);
# Remove fluid storage bus recipe
recipes.remove(<appliedenergistics2:part:221>);
# Remove molecular assembler recipe
recipes.remove(<appliedenergistics2:molecular_assembler>);
# Remove crafting unit recipe
recipes.remove(<appliedenergistics2:crafting_unit>);
# Remove core recipes
recipes.remove(<appliedenergistics2:material:43>);
recipes.remove(<appliedenergistics2:material:44>);
# Remove Fluid/Storage components
recipes.remove(<appliedenergistics2:material:35>);
recipes.remove(<appliedenergistics2:material:36>);
recipes.remove(<appliedenergistics2:material:37>);
recipes.remove(<appliedenergistics2:material:38>);
recipes.remove(<appliedenergistics2:material:54>);
recipes.remove(<appliedenergistics2:material:55>);
recipes.remove(<appliedenergistics2:material:56>);
recipes.remove(<appliedenergistics2:material:57>);
# Remove pattern recipe
recipes.remove(<appliedenergistics2:material:52>);
recipes.remove(<aenetvistool:net_visualizer>);
# Remove security station recipe
recipes.remove(<appliedenergistics2:security_station>);
# Remove default crafting storage recipes
recipes.remove(<appliedenergistics2:crafting_storage_1k>);
recipes.remove(<appliedenergistics2:crafting_storage_4k>);
recipes.remove(<appliedenergistics2:crafting_storage_16k>);
recipes.remove(<appliedenergistics2:crafting_storage_64k>);


# No dense energy cell for wireless terminals
recipes.replaceAllOccurences(<appliedenergistics2:dense_energy_cell>, <thermalexpansion:capacitor:2>);

# Require calculation circuit for everything
recipes.replaceAllOccurences(<appliedenergistics2:material:22>, <appliedenergistics2:material:23>);
recipes.replaceAllOccurences(<appliedenergistics2:material:24>, <appliedenergistics2:material:23>);
# Require capacitors/transistors instead of formation cores
recipes.replaceAllOccurences(<appliedenergistics2:material:44>, <pneumaticcraft:capacitor>);
recipes.replaceAllOccurences(<appliedenergistics2:material:43>, <pneumaticcraft:transistor>);

recipes.addShapeless("ae2_network_tool", <appliedenergistics2:network_tool>, [<thermalfoundation:wrench>, <ore:itemIlluminatedPanel>]);
recipes.addShapeless("ae2_security_station", <appliedenergistics2:security_station>, [<appliedenergistics2:cell_workbench>, <pneumaticcraft:security_upgrade>]);

recipes.addShaped("ae2_controller", <appliedenergistics2:controller>, [
    [<ore:crystalFluix>, <appliedenergistics2:material:23>, <ore:crystalFluix>],
    [<appliedenergistics2:material:23>, <chisel:futura:2>, <appliedenergistics2:material:23>],
    [<ore:ingotIronCompressed>, <pneumaticcraft:network_component:3>, <ore:ingotIronCompressed>]
]);

recipes.addShaped("ae2_disk_drive", <appliedenergistics2:drive>, [
    [<ore:crystalFluix>, <pneumaticcraft:network_component:2>, <ore:crystalFluix>],
    [<appliedenergistics2:material:23>, <ore:chestObsidian>, <appliedenergistics2:material:23>],
    [<ore:ingotIronCompressed>, <pneumaticcraft:network_component:3>, <ore:ingotIronCompressed>]
]);

recipes.addShaped("ae2_interface", <appliedenergistics2:interface> * 4, [
    [<ore:plasticLightGray>, <appliedenergistics2:material:23>, <ore:plasticLightGray>],
    [<appliedenergistics2:material:23>, <pneumaticcraft:pressure_chamber_interface>, <appliedenergistics2:material:23>],
    [<ore:plasticLightGray>, <pneumaticcraft:network_component:3>, <ore:plasticLightGray>]
]);

recipes.addShapeless("ae2_fluid_interface", <appliedenergistics2:fluid_interface>, [<appliedenergistics2:interface>, <minecraft:bucket>]);

recipes.addShaped("ae2_crafting_unit", <appliedenergistics2:crafting_unit> * 4, [
    [<ore:plasticWhite>, <appliedenergistics2:material:23>, <ore:plasticWhite>],
    [<appliedenergistics2:material:23>, <pneumaticcraft:pressure_chamber_interface>, <appliedenergistics2:material:23>],
    [<ore:plasticWhite>, <pneumaticcraft:network_component:3>, <ore:plasticWhite>]
]);

recipes.addShaped("ae2_molecular_assembler", <appliedenergistics2:molecular_assembler>, [
    [<ore:crystalFluix>, <ore:workbench>, <ore:crystalFluix>],
    [<appliedenergistics2:material:23>, <appliedenergistics2:quartz_glass>, <appliedenergistics2:material:23>],
    [<ore:ingotIronCompressed>, <pneumaticcraft:network_component:3>, <ore:ingotIronCompressed>]
]);

recipes.addShaped("ae2_quartz_fiber", <appliedenergistics2:part:140> * 8, [
    [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>],
    [<ore:dustQuartz>, <ore:dustQuartz>, <ore:dustQuartz>],
    [<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]
]);

recipes.addShaped("ae2_storage_bus", <appliedenergistics2:part:220>, [
    [<ore:chestIron>, <appliedenergistics2:interface>],
    [<ore:piston>, null]
]);

recipes.addShaped("ae2_fluid_storage_bus", <appliedenergistics2:part:221>, [
    [<thermalexpansion:tank>, <appliedenergistics2:fluid_interface>],
    [<ore:piston>, null]
]);

# Cables
recipes.addShaped("ae2_dense_cable", <appliedenergistics2:part:76>, [
    [null, <appliedenergistics2:part:56>, null],
    [<minecraft:wool>, <rftools:dimensional_shard>, <minecraft:wool>],
    [null, <appliedenergistics2:part:56>, null]
]);

recipes.addShapeless("ae2_cable_anchor", <appliedenergistics2:part:120> * 8, [<immersiveengineering:tool>, <ore:ingotSteel>]);
recipes.addShapeless("ae2_smart_cable", <appliedenergistics2:part:56> * 2, [<appliedenergistics2:part:16>, <ore:dustRedstone>, <ore:wool>, <ore:dustGlowstone>]);

# Chip crafting
recipes.addShaped("ae2_calculation_circuit", <appliedenergistics2:material:16> * 8, [
    [<appliedenergistics2:material:13>.reuse(), <minecraft:redstone_block>, <appliedenergistics2:material:1>],
    [<minecraft:quartz>, <minecraft:quartz>, <minecraft:quartz>],
    [<minecraft:quartz>, <minecraft:quartz>, <minecraft:quartz>]
]);

recipes.addShaped("ae2_silicon_circuit", <appliedenergistics2:material:20> * 8, [
    [<appliedenergistics2:material:19>.reuse(), <minecraft:comparator>, <minecraft:comparator>],
    [<ore:plasticLightGray>, <ore:plasticLightGray>, <ore:plasticLightGray>],
    [<ore:plateElectrum>.firstItem, <ore:plateElectrum>.firstItem, <ore:plateElectrum>.firstItem]
]);


########
# 1k - 64k Storage components
#########

recipes.addShaped("ae2_1k_storage_component", <appliedenergistics2:material:35>, [
    [<minecraft:redstone>, <ore:plasticLightBlue>, <minecraft:redstone>],
    [<ore:plasticLightBlue>, <appliedenergistics2:material:23>, <ore:plasticLightBlue>],
    [<minecraft:redstone>, <ore:plasticLightBlue>, <minecraft:redstone>]
]);

recipes.addShapeless("ae2_4k_storage_component", <appliedenergistics2:material:36>, [
    <appliedenergistics2:material:35>, <ore:chestIron>, <ore:chestIron>
]);

recipes.addShapeless("ae2_16k_storage_component", <appliedenergistics2:material:37>, [
    <appliedenergistics2:material:36>, <ore:chestGold>, <ore:chestGold>
]);

recipes.addShapeless("ae2_64k_storage_component", <appliedenergistics2:material:38>, [
    <appliedenergistics2:material:37>, <ore:chestDiamond>, <ore:chestDiamond>
]);


########
# 1k - 64k Fluid components
#########
recipes.addShaped("ae2_1k_fluid_component", <appliedenergistics2:material:54>, [
    [<minecraft:dye:4>, <ore:plasticLime>, <minecraft:dye:4>],
    [<ore:plasticLime>, <appliedenergistics2:material:23>, <ore:plasticLime>],
    [<minecraft:dye:4>, <ore:plasticLime>, <minecraft:dye:4>]
]);

recipes.addShaped("ae2_4k_fluid_component", <appliedenergistics2:material:55>, [
    [<minecraft:dye:4>, <appliedenergistics2:material:54>, <minecraft:dye:4>],
    [<appliedenergistics2:material:54>, <appliedenergistics2:material:23>, <appliedenergistics2:material:54>],
    [<minecraft:dye:4>, <appliedenergistics2:material:54>, <minecraft:dye:4>]
]);

recipes.addShaped("ae2_16k_fluid_component", <appliedenergistics2:material:56>, [
    [<minecraft:dye:4>, <appliedenergistics2:material:55>, <minecraft:dye:4>],
    [<appliedenergistics2:material:55>, <appliedenergistics2:material:23>, <appliedenergistics2:material:55>],
    [<minecraft:dye:4>, <appliedenergistics2:material:55>, <minecraft:dye:4>]
]);

recipes.addShaped("ae2_64k_fluid_component", <appliedenergistics2:material:57>, [
    [<minecraft:dye:4>, <appliedenergistics2:material:56>, <minecraft:dye:4>],
    [<appliedenergistics2:material:56>, <appliedenergistics2:material:23>, <appliedenergistics2:material:56>],
    [<minecraft:dye:4>, <appliedenergistics2:material:56>, <minecraft:dye:4>]
]);

# Pattern
recipes.addShaped("ae2_pattern", <appliedenergistics2:material:52> * 4, [
    [<ore:plasticLightGray>, <ore:plasticLightGray>, <ore:plasticLightGray>],
    [<ore:plasticLightGray>, <rftools:dimensional_shard>, <ore:plasticLightGray>],
    [<ore:plasticLightGray>, <ore:plasticLightGray>, <ore:plasticLightGray>]
]);

# Glass cable
recipes.addShaped("ae2_glass_cable", <appliedenergistics2:part:16> * 16, [
    [<appliedenergistics2:part:140>, <appliedenergistics2:part:140>, <appliedenergistics2:part:140>],
    [<appliedenergistics2:part:140>, <ore:crystalFluix>, <appliedenergistics2:part:140>],
    [<appliedenergistics2:part:140>, <appliedenergistics2:part:140>, <appliedenergistics2:part:140>]
]);


########
# 1k - 64k Crafting Storage blocks
#########

recipes.addShapeless("ae2_1k_crafting_storage", <appliedenergistics2:crafting_storage_1k>, [<appliedenergistics2:crafting_unit>, <appliedenergistics2:material:35>]);

recipes.addShapeless("ae2_4k_crafting_storage", <appliedenergistics2:crafting_storage_4k>, [<appliedenergistics2:crafting_unit>, <appliedenergistics2:material:36>]);

recipes.addShapeless("ae2_16k_crafting_storage", <appliedenergistics2:crafting_storage_16k>, [<appliedenergistics2:crafting_unit>, <appliedenergistics2:material:37>]);

recipes.addShapeless("ae2_64k_crafting_storage", <appliedenergistics2:crafting_storage_64k>, [<appliedenergistics2:crafting_unit>, <appliedenergistics2:material:38>]);

# Network vis tool
recipes.addShapeless("ae2_network_visualizer_tool", <aenetvistool:net_visualizer>, [<pickletweaks:nightvision_goggles>, <appliedenergistics2:material:23>]);