import mods.enderio.SliceNSplice;
import mods.enderio.SoulBinder;
import mods.enderio.Enchanter;
import mods.enderio.Vat;
import crafttweaker.item.IIngredient;

# ---------------------------------------------
# Recipes 
# (Some disabled in the user XML files for EIO, like sagballs)
# ---------------------------------------------
# Remove quartz recolor recipes, done with a Chisel
recipes.remove(<enderio:block_dark_fused_glass:*>);
recipes.remove(<enderio:block_dark_fused_quartz:*>);
recipes.remove(<enderio:block_enlightened_fused_glass:*>);
recipes.remove(<enderio:block_enlightened_fused_quartz:*>);
recipes.remove(<enderio:block_fused_glass:*>);
recipes.remove(<enderio:block_fused_quartz:*>);
# Remove Tank recipes
recipes.remove(<enderio:block_tank>);
recipes.remove(<enderio:block_tank:1>);
# Remove EnderCore tnt recipes
recipes.removeByRecipeName("enderio:confusion_charge");
recipes.removeByRecipeName("enderio:concussion_charge");
recipes.removeByRecipeName("enderio:ender_charge");
# Remove slab to plank recipe (Tinkers construct recipe conflict)
recipes.removeByRecipeName("endercore:slabwoodoak_to_planks");
# Remove ender pearl recipe
recipes.removeByRecipeName("enderio:ender_defragmentation");
# Remove speed upgrade recipe
recipes.remove(<enderio:item_extract_speed_upgrade>);
# Remove zombie gens
recipes.remove(<enderio:block_zombie_generator>);
recipes.remove(<enderio:block_franken_zombie_generator>);
# Remove attractor obelisk
recipes.remove(<enderio:block_attractor_obelisk>);
# Remove powered spawner
recipes.remove(<enderio:block_powered_spawner>);
# Remove inventory system
recipes.remove(<enderio:block_inventory_chest_tiny>);
recipes.remove(<enderio:block_inventory_chest_small>);
recipes.remove(<enderio:block_inventory_chest_medium>);
recipes.remove(<enderio:block_inventory_chest_big>);
recipes.remove(<enderio:block_inventory_chest_large>);
recipes.remove(<enderio:block_inventory_chest_huge>);
recipes.remove(<enderio:block_inventory_chest_enormous>);
recipes.remove(<enderio:block_inventory_chest_warehouse>);
recipes.remove(<enderio:block_inventory_chest_warehouse13>);
recipes.remove(<enderio:block_inventory_panel>);
recipes.remove(<enderio:item_inventory_remote>);
recipes.remove(<enderio:item_inventory_remote:1>);
recipes.remove(<enderio:item_inventory_remote:2>);
recipes.remove(<enderio:block_inventory_panel_sensor>);
# Remove bad chargers (thermal charge faster always)
recipes.remove(<enderio:item_inventory_charger_basic>);
recipes.remove(<enderio:item_inventory_charger>);
recipes.remove(<enderio:item_inventory_charger_vibrant>);
# Remove reservoir
recipes.remove(<enderio:block_reservoir>);
# Remove generators
recipes.remove(<enderio:block_combustion_generator>);
recipes.remove(<enderio:block_enhanced_combustion_generator>);
recipes.remove(<enderio:block_stirling_generator>);
recipes.remove(<enderio:block_lava_generator>);
recipes.remove(<enderio:block_ender_generator>);
# Remove compressed grains of infinity and uncrafting to Grains of infinity
recipes.remove(<enderio:block_infinity>);
recipes.remove(<enderio:block_infinity:1>);
recipes.remove(<enderio:block_infinity:2>);
recipes.remove(<enderio:item_material:20>);
# Remove solar stuff
recipes.remove(<enderio:item_material:38>);
recipes.remove(<enderio:block_solar_panel:1>);
recipes.remove(<enderio:block_solar_panel:2>);
recipes.remove(<enderio:block_solar_panel:3>);
recipes.removeByRecipeName("enderio:dark_steel_upgrade_solar");
recipes.removeByRecipeName("enderio:dark_steel_upgrade_solar_1");
recipes.removeByRecipeName("enderio:dark_steel_upgrade_solar_2");
recipes.removeByRecipeName("enderio:dark_steel_upgrade_solar_3");
# Remove unfired death urn
recipes.remove(<enderio:item_material:81>);
# Remove chassis
recipes.remove(<enderio:item_material:66>);
recipes.remove(<enderio:item_material:55>);
# Remove industrial insulation
recipes.remove(<enderio:block_industrial_insulation>);
# Remove paper anvil
recipes.remove(<enderio:block_dark_paper_anvil>);
# Remove crafter
recipes.remove(<enderio:block_crafter>);
# Remove non-enhanced machines & enhanced machines (they need new recipes)
recipes.remove(<enderio:block_wired_charger>);
recipes.remove(<enderio:block_enhanced_wired_charger>);
recipes.remove(<enderio:block_vat>);
recipes.remove(<enderio:block_enhanced_vat>);
# Remove enhanced machine parts & machine parts (which needs new recipe)
recipes.remove(<enderio:item_material:68>);
recipes.remove(<enderio:item_material:2>);
# Remove data conduit
recipes.remove(<enderio:item_data_conduit>);
# Remove omnireservoir
recipes.remove(<enderio:block_omni_reservoir>);
# Remove vacuum chest recipe
recipes.remove(<enderio:block_vacuum_chest>);
# Remove remote awareness upgrade
recipes.remove(<enderio:item_material:64>);
# Remove conduit probe recipe
recipes.remove(<enderio:item_conduit_probe>);
# Remove basic capacitor recipe
recipes.remove(<enderio:item_basic_capacitor>);
# Remove the capacitor bank recipes (for retiering)
recipes.remove(<enderio:block_cap_bank:1>);
recipes.remove(<enderio:block_cap_bank:2>);
recipes.remove(<enderio:block_cap_bank:3>);
# Remove enchanter recipe
recipes.remove(<enderio:block_enchanter>);
# Remove recipes for pulsating/vibrant crystals
recipes.remove(<enderio:item_material:14>);
recipes.remove(<enderio:item_material:15>);
# Remove basic item filter to re-recipe
recipes.remove(<enderio:item_basic_item_filter>);

# Remove any autocoloring recipe
recipes.removeByRegex("^enderio:auto_.*");
# Remove holy/pasture/unholy glass block recipes
recipes.removeByRegex("^enderio:holy_.*");
recipes.removeByRegex("^enderio:unholy_.*");
recipes.removeByRegex("^enderio:pasture_.*");
# Remove holy/pasture/unholy inverted glass block recipes
recipes.removeByRegex("^enderio:not_holy_.*");
recipes.removeByRegex("^enderio:not_unholy_.*");
recipes.removeByRegex("^enderio:not_pasture_.*");


# Polymer clay instead of conduit binder
recipes.replaceAllOccurences(<enderio:item_material:4>, <deepmoblearning:polymer_clay>);

# Require the regular machine chassis instead of enhanced for everything
recipes.replaceAllOccurences(<enderio:item_material:54>, <enderio:item_material:1>);

# Grains of infinity -> Dark Steel ingot
recipes.replaceAllOccurences(<enderio:item_material:20>, <ore:ingotDarkSteel>);

# Cheaper frames for enderio "doodads"
recipes.replaceAllOccurences(<enderio:item_material:1>, <thermalexpansion:frame:64>, <enderio:block_impulse_hopper>);
recipes.replaceAllOccurences(<enderio:item_material:1>, <thermalexpansion:frame:64>, <enderio:block_power_monitor>);
recipes.replaceAllOccurences(<enderio:item_material:1>, <thermalexpansion:frame:64>, <enderio:block_advanced_power_monitor>);
recipes.replaceAllOccurences(<enderio:item_material:1>, <thermalexpansion:frame:64>, <enderio:block_painter>);


recipes.addShaped("eio_capacitor_t1", <enderio:item_basic_capacitor>, [
    [<ore:ingotElectricalSteel>, <ore:polymerClay>, <ore:ingotElectricalSteel>],
    [<appliedenergistics2:material:23>, <pneumaticcraft:capacitor>, <appliedenergistics2:material:23>],
    [<ore:ingotElectricalSteel>, <ore:polymerClay>, <ore:ingotElectricalSteel>]
]);

recipes.addShaped("eio_capacitor_bank_t1", <enderio:block_cap_bank:2>, [
    [<ore:blockEnergeticAlloy>, <ore:skullEnderResonator>, <ore:blockEnergeticAlloy>],
    [<enderio:item_basic_capacitor:1>, <rftools:powercell_advanced>, <enderio:item_basic_capacitor:1>],
    [<ore:blockEnergeticAlloy>, <pneumaticcraft:advanced_pcb>, <ore:blockEnergeticAlloy>]
]);

recipes.addShaped("eio_capacitor_bank_t2", <enderio:block_cap_bank:3>, [
    [<ore:blockVibrantAlloy>, <ore:skullEnderResonator>, <ore:blockVibrantAlloy>],
    [<ore:octadicCapacitor>, <enderio:block_cap_bank:2>, <ore:octadicCapacitor>],
    [<ore:blockVibrantAlloy>, <pneumaticcraft:advanced_pcb>, <ore:blockVibrantAlloy>]
]);

recipes.addShaped("eio_tank", <enderio:block_tank>, [
    [<ore:ingotSteel>, <minecraft:iron_bars>, <ore:ingotSteel>],
    [<pneumaticcraft:pressure_tube>, <ore:fusedQuartz>, <pneumaticcraft:pressure_tube>],
    [<ore:ingotSteel>, <minecraft:iron_bars>, <ore:ingotSteel>]
]);

recipes.addShaped("eio_pressurized_tank", <enderio:block_tank:1>, [
    [<ore:ingotDarkSteel>, <enderio:block_dark_iron_bars>, <ore:ingotDarkSteel>],
    [<enderio:block_dark_iron_bars>, <enderio:block_tank>, <enderio:block_dark_iron_bars>],
    [<ore:ingotDarkSteel>, <enderio:block_dark_iron_bars>, <ore:ingotDarkSteel>]
]);

recipes.addShaped("eio_vacuum_chest", <enderio:block_vacuum_chest>, [
    [<ore:ingotElectricalSteel>, <deepmoblearning:polymer_clay>, <ore:ingotElectricalSteel>],
    [<deepmoblearning:polymer_clay>, <thermalexpansion:device:12>, <deepmoblearning:polymer_clay>],
    [<ore:ingotElectricalSteel>, <ore:itemPulsatingCrystal>, <ore:ingotElectricalSteel>]
]);

# Frames, just slightly more expensive than mekanism superheated frames. 
recipes.addShaped("eio_machine_chassis", <enderio:item_material:1>, [
    [<ore:slateTier4>, <enderio:item_material:2>, <ore:slateTier4>],
    [<ore:blockOsmium>, <deepmoblearning:machine_casing>, <ore:blockOsmium>],
    [<ore:blockDarkSteel>, <enderio:item_material:2>, <ore:blockDarkSteel>]
]);

recipes.addShaped("eio_soul_machine_chassis", <enderio:item_material:53>, [
    [<ore:slateTier4>, <enderio:item_material:2>, <ore:slateTier4>],
    [<ore:blockOsmium>, <deepmoblearning:machine_casing>, <ore:blockOsmium>],
    [<ore:blockSoularium>, <enderio:item_material:2>, <ore:blockSoularium>]
]);

# VAT recipes
recipes.addShaped("eio_vat", <enderio:block_vat>, [
    [<ore:ingotDarkSteel>, <ore:blockIridium>, <ore:ingotDarkSteel>],
    [<thermalexpansion:machine:8>, <enderio:item_material:1>, <thermalexpansion:machine:8>],
    [<ore:ingotDarkSteel>, <ore:blockPlatinum>, <ore:ingotDarkSteel>]
]);

recipes.addShapeless("eio_vat_enhance", <enderio:block_enhanced_vat>, [<enderio:block_vat>, <ore:doubleCapacitor>]);

# Enhanced Charger
recipes.addShaped("eio_enhanced_charger", <enderio:block_enhanced_wired_charger>, [
    [<ore:ingotDarkSteel>, <ore:blockEnergeticAlloy>, <ore:ingotDarkSteel>],
    [<thermalexpansion:machine:9>, g_blessedMachineFrame, <thermalexpansion:machine:9>],
    [<ore:ingotDarkSteel>, <ore:blockEnergeticAlloy>, <ore:ingotDarkSteel>]
]);

# Enchanter
recipes.addShaped("eio_enchanter", <enderio:block_enchanter>, [
    [<industrialforegoing:enchantment_invoker>, <minecraft:writable_book>, <industrialforegoing:enchantment_invoker>],
    [<ore:gearIronInfinity>, <openblocks:auto_enchantment_table>, <ore:gearIronInfinity>],
    [<ore:blockDarkSteel>, <enderio:item_material:1>, <ore:blockDarkSteel>]
]);


# Conduit recipes
recipes.addShaped("eio_item_conduit", <enderio:item_item_conduit> * 16, [
    [<ore:itemduct>, <deepmoblearning:polymer_clay>, <ore:itemduct>],
    [<deepmoblearning:polymer_clay>, <contenttweaker:lubricated_gear>, <deepmoblearning:polymer_clay>],
    [<ore:itemduct>, <deepmoblearning:polymer_clay>, <ore:itemduct>]
]);

recipes.addShaped("eio_energy_conduit_t1", <enderio:item_power_conduit> * 16, [
    [<ore:fluxduct>, <deepmoblearning:polymer_clay>, <ore:fluxduct>],
    [<deepmoblearning:polymer_clay>, <contenttweaker:lubricated_gear>, <deepmoblearning:polymer_clay>],
    [<ore:fluxduct>, <deepmoblearning:polymer_clay>, <ore:fluxduct>]
]);

recipes.addShaped("eio_energy_conduit_t2", <enderio:item_power_conduit:1> * 4, [
    [<enderio:item_power_conduit>, <deepmoblearning:polymer_clay>, <enderio:item_power_conduit>],
    [<deepmoblearning:polymer_clay>, <ore:ingotEnergeticAlloy>, <deepmoblearning:polymer_clay>],
    [<enderio:item_power_conduit>, <deepmoblearning:polymer_clay>, <enderio:item_power_conduit>]
]);

recipes.addShaped("eio_energy_conduit_t3", <enderio:item_power_conduit:2> * 4, [
    [<enderio:item_power_conduit:1>, <deepmoblearning:polymer_clay>, <enderio:item_power_conduit:1>],
    [<deepmoblearning:polymer_clay>, <ore:ingotVibrantAlloy>, <deepmoblearning:polymer_clay>],
    [<enderio:item_power_conduit:1>, <deepmoblearning:polymer_clay>, <enderio:item_power_conduit:1>]
]);

recipes.addShaped("eio_fluid_conduit_t1", <enderio:item_liquid_conduit:1> * 16, [
    [<ore:fluiduct>, <deepmoblearning:polymer_clay>, <ore:fluiduct>],
    [<deepmoblearning:polymer_clay>, <contenttweaker:lubricated_gear>, <deepmoblearning:polymer_clay>],
    [<ore:fluiduct>, <deepmoblearning:polymer_clay>, <ore:fluiduct>]
]);

recipes.addShaped("eio_fluid_conduit_t2", <enderio:item_liquid_conduit:2> * 4, [
    [<enderio:item_liquid_conduit:1>, <ore:fusedQuartz>, <enderio:item_liquid_conduit:1>],
    [<ore:fusedQuartz>, <ore:ingotVibrantAlloy>, <ore:fusedQuartz>],
    [<enderio:item_liquid_conduit:1>, <ore:fusedQuartz>, <enderio:item_liquid_conduit:1>]
]);

recipes.addShaped("eio_basic_upgrade", <enderio:item_basic_item_filter>, [
    [<ore:plateIron>, <ore:polymerClay>, <ore:plateIron>],
    [<ore:plateIron>, <ore:paper>, <ore:plateIron>],
    [<ore:plateIron>, <ore:polymerClay>, <ore:plateIron>]
]);

recipes.addShaped("eio_speed_upgrade", <enderio:item_extract_speed_upgrade> * 4, [
    [null, <enderio:item_basic_item_filter>, null],
    [<enderio:item_basic_item_filter>, <pneumaticcraft:speed_upgrade>, <enderio:item_basic_item_filter>],
    [null, <enderio:item_basic_item_filter>, null]
]);

recipes.addShaped("eio_dark_steel_upgrade", <enderio:item_dark_steel_upgrade>, [
    [null, <ore:ingotDarkSteel>, null],
    [<ore:ingotDarkSteel>, <enderio:item_basic_item_filter>, <ore:ingotDarkSteel>],
    [null, <ore:ingotDarkSteel>, null]
]);

recipes.addShapeless("eio_advanced_filter", <enderio:item_advanced_item_filter>, [<enderio:item_basic_item_filter>, <rftools:infused_diamond>]);
recipes.addShapeless("eio_solar_gearupgrade", <enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderiomachines:solar3"}), [<enderio:item_dark_steel_upgrade>, <mekanism:machineblock3:1>]);

recipes.addShapeless("eio_conduit_probe", <enderio:item_conduit_probe>, [<theoneprobe:probe>, <enderio:item_basic_item_filter>]);

recipes.addShapeless("eio_quite_clear_enlightened_glass", <enderio:block_enlightened_fused_glass> * 4, [
    <enderio:block_fused_glass>, <enderio:block_fused_glass>, <enderio:block_fused_glass>, <ore:dustGlowstone>
]);

recipes.addShapeless("eio_quite_clear_dark_glass", <enderio:block_dark_fused_glass> * 4, [
    <enderio:block_fused_glass>, <enderio:block_fused_glass>, <enderio:block_fused_glass>, <ore:dustObsidian>
]);

###############
# Soulbinder
##############
SoulBinder.removeRecipe(<enderio:item_material:17>);
SoulBinder.removeRecipe(<enderio:item_broken_spawner>);
SoulBinder.removeRecipe(<enderio:item_material:16>);
SoulBinder.removeRecipe(<enderio:item_material:78>);
SoulBinder.removeRecipe(<enderio:item_material:79>);
SoulBinder.removeRecipe(<enderio:item_material:80>);
SoulBinder.removeRecipe(<enderio:item_material:44>);

SoulBinder.addRecipe(
    g_soulClusterSubdued,
    <contenttweaker:soul_cluster>,
    ["midnight:rifter"],
    100000,
    8
);

SoulBinder.addRecipe(
    <contenttweaker:sacrificial_nightstag>,
    <minecraft:golden_horse_armor>,
    ["midnight:nightstag"],
    100000,
    5
);

###############
# Slice n splice
##############
SliceNSplice.removeRecipe(<enderio:item_material:40>);


SliceNSplice.addRecipe(
    <ore:itemVibrantCrystal>.firstItem,
    [
        <ore:ingotVibrantAlloy>, <contenttweaker:dust_rouxe_enderium>, <ore:ingotVibrantAlloy>,
        <ore:elvenDragonstone>, <ore:itemEnderCrystal>, <ore:elvenDragonstone>
    ],
    20000
);

SliceNSplice.addRecipe(
    <ore:itemPulsatingCrystal>.firstItem,
    [
        <ore:ingotPulsatingIron>, <contenttweaker:dust_rouxe_enderium>, <ore:ingotPulsatingIron>,
        <ore:elvenDragonstone>, <ore:itemEnderCrystal>, <ore:elvenDragonstone>
    ],
    20000
);

SliceNSplice.addRecipe(
    <contenttweaker:soul_crystal>,
    [
        <ore:ingotSoularium>, <enderio:block_enderman_skull:2>, <ore:ingotSoularium>,
        g_soulClusterSubdued, <contenttweaker:void_crystal>, g_soulClusterSubdued
    ],
    30000
);


###############
# Enchanter
##############
Enchanter.removeRecipe(<enchantment:minecraft:infinity>);


###############
# Vat
##############
Vat.removeRecipe(<liquid:nutrient_distillation>);

# Readd nutrient distilattion, require deep substrate water
Vat.addRecipe(
    <liquid:nutrient_distillation>,
    1.0,
    <liquid:deep_substrate_water>,
    [<midnight:dragon_nest>],
    [1.0],
    [<ore:mushroomAny>],
    [1.0]
);

Vat.addRecipe(
    <liquid:subterranean_nutrient_distillation>,
    1.0,
    <liquid:nutrient_distillation>,
    [<contenttweaker:dust_kalthrite>],
    [1.0],
    [<contenttweaker:dust_rouxe_enderium>],
    [1.0]
);

Vat.addRecipe(
    <liquid:pure_calcium>,
    1.5,
    <liquid:softened_quicklime>,
    [<contenttweaker:animated_bone>],
    [1.0],
    [<contenttweaker:block_calcium>],
    [1.0]
);

Vat.addRecipe(
    <liquid:star_blood>,
    2.0,
    <liquid:grove_mana>,
    [<minecraft:nether_star>],
    [1.0],
    [<contenttweaker:nuclear_waste_rod>],
    [1.0]
);

Vat.addRecipe(
    <liquid:growtein>,
    1.0,
    <liquid:if.protein>,
    [<contenttweaker:nature_essence>],
    [1.0],
    [<contenttweaker:nature_essence>],
    [1.0]
);
