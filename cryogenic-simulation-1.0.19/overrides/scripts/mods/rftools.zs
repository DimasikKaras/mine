import crafttweaker.item.IItemStack;

# ----------------
# Recipe removals
# ----------------
recipes.remove(<rftools:machine_frame>);
recipes.remove(<rftools:builder>);
recipes.remove(<rftools:shape_card:2>);
recipes.remove(<rftools:machine_base>);
recipes.remove(<rftools:dimensional_shard>);
recipes.remove(<rftools:powercell_simple>);
recipes.remove(<rftools:powercell_card>);
recipes.remove(<rftools:infused_diamond>);
recipes.remove(<rftools:powercell>);
recipes.remove(<rftools:powercell_advanced>);
recipes.remove(<rftools:machine_infuser>);
recipes.remove(<rftools:coalgenerator>);
recipes.remove(<rftools:endergenic>);
recipes.remove(<rftools:pearl_injector>);
recipes.remove(<rftools:storage_scanner>);
# Remove pump cards
recipes.remove(<rftools:shape_card:8>);
recipes.remove(<rftools:shape_card:9>);
# Remove spawner
recipes.remove(<rftools:spawner>);
recipes.remove(<rftools:matter_beamer>);
recipes.removeByRecipeName("rftools:powercell_normal");

# ----------------
# Recipes
# ----------------
recipes.replaceAllOccurences(<minecraft:ender_pearl>, <ore:teleportationEye>, <rftools:redstone_receiver_block>);
recipes.replaceAllOccurences(<minecraft:ender_pearl>, <ore:teleportationEye>, <rftools:redstone_transmitter_block>);


recipes.addShaped("rft_storage_scanner", <rftools:storage_scanner>, [
    [<minecraft:redstone_block>, <ore:teleportationEye>, <minecraft:redstone_block>],
    [<ore:chestDiamond>, <rftools:machine_base>, <ore:chestDiamond>],
    [<minecraft:redstone_block>, <storagedrawers:controller>, <minecraft:redstone_block>]
]);

recipes.addShaped("rft_machine_frame", <rftools:machine_frame>, [
    [<ore:itemRubber>, <ore:plateSteel>, <ore:itemRubber>],
    [<ore:plateSteel>, <immersiveengineering:metal_decoration0:5>, <ore:plateSteel>],
    [<ore:itemRubber>, <ore:dustAstralStarmetal>, <ore:itemRubber>]
]);

recipes.addShaped("rft_builder", <rftools:builder>, [
    [<ore:ingotBrickDried>, <bloodmagic:inscription_tool:3>, <ore:ingotBrickDried>],
    [<ore:slateTier1>, <rftools:machine_frame>, <ore:slateTier1>],
    [<ore:ingotBrickDried>, <ore:gemAquamarine>, <ore:ingotBrickDried>]
]);

recipes.addShaped("rft_quarry_card", <rftools:shape_card:2>, [
    [<astralsorcery:itemcraftingcomponent:5>, <minecraft:diamond_pickaxe>, <astralsorcery:itemcraftingcomponent:5>],
    [<ore:dustAstralStarmetal>, <rftools:shape_card>, <ore:dustAstralStarmetal>],
    [<ore:slateTier3>, <ore:blockManyullyn>, <ore:slateTier3>]
]);

recipes.addShaped("rft_quarry_card_clearing_to_replace", <rftools:shape_card:2>, [
    [<minecraft:dirt>, <minecraft:dirt>, <minecraft:dirt>],
    [<minecraft:dirt>, <rftools:shape_card:5>.marked("card"), <minecraft:dirt>],
    [<minecraft:dirt>, <minecraft:dirt>, <minecraft:dirt>]
], function(output, input, cInfo) {
        return output.withTag(input.card.tag);
}, null);

recipes.addShaped("rft_machine_base", <rftools:machine_base> * 3, [
    [<ore:ingotInvar>, <ore:ingotInvar>, <ore:ingotInvar>],
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]
]);

recipes.addShaped("rft_dimensional_shard", <rftools:dimensional_shard> * 16, [
    [<minecraft:diamond>, <minecraft:prismarine_shard>, <appliedenergistics2:material:1>],
    [<minecraft:quartz>, <minecraft:quartz>, <minecraft:quartz>]
]);

recipes.addShaped("rft_powercell", <rftools:powercell>, [
    [<immersiveengineering:metal_decoration0:3>, <ore:teleportationEye>, <immersiveengineering:metal_decoration0:3>],
    [<rftools:infused_diamond>, <immersiveengineering:metal_device0>, <rftools:infused_diamond>],
    [<immersiveengineering:metal_decoration0:3>, <rftools:machine_frame>, <immersiveengineering:metal_decoration0:3>]
]);

recipes.addShaped("rft_powercell_advanced", <rftools:powercell_advanced>, [
    [<pneumaticcraft:transistor>, <pneumaticcraft:network_component:2>, <pneumaticcraft:transistor>],
    [<ore:gemInfusedDiamond>, <rftools:powercell>, <ore:gemInfusedDiamond>],
    [<pneumaticcraft:transistor>, <ore:gemInfusedDiamond>, <pneumaticcraft:transistor>]
]);

recipes.addShaped("rft_powercell_card", <rftools:powercell_card> * 2, [
    [<minecraft:redstone_block>, <astralsorcery:itemcraftingcomponent:5>, <minecraft:redstone_block>],
    [<ore:teleportationEye>, <industrialforegoing:range_addon:7>, <ore:teleportationEye>],
    [<minecraft:redstone_block>, <astralsorcery:itemcraftingcomponent:5>, <minecraft:redstone_block>]
]);

recipes.addShaped("rft_machine_infuser", <rftools:machine_infuser>, [
    [<rftools:infused_diamond>, <ore:slateTier3>, <rftools:infused_diamond>],
    [<pneumaticcraft:transistor>, <rftools:machine_frame>, <pneumaticcraft:transistor>],
    [<rftools:infused_diamond>, <thermalexpansion:machine:9>, <rftools:infused_diamond>]
]);



recipes.replaceAllOccurences(<ore:ingotBrick>, <ore:ingotBrickSeared>, <rftools:shape_card>);