import mods.mekanism.crusher;
import mods.mekanism.infuser;
import mods.mekanism.reaction;

# --------
# Crusher
# --------
crusher.removeRecipe(<ore:itemSilicon>.firstItem);

# --------
# Infuser
# --------
infuser.removeRecipe(<mekanism:enrichedalloy>);
infuser.removeRecipe(<mekanism:controlcircuit>);
infuser.removeRecipe(<mekanism:reinforcedalloy>);
infuser.removeRecipe(<mekanism:atomicalloy>);
infuser.removeRecipe(<mekanism:otherdust:5>);

infuser.addRecipe("REDSTONE", 900, <enderio:item_basic_capacitor>, <mekanism:enrichedalloy>);
infuser.addRecipe("REDSTONE", 900, <pneumaticcraft:advanced_pcb>, <mekanism:controlcircuit>);

infuser.addRecipe("DIAMOND", 640, <mekanism:enrichedalloy>, <mekanism:reinforcedalloy>);
infuser.addRecipe("DIAMOND", 80, <ore:dustObsidian>.firstItem, <mekanism:otherdust:5>);

infuser.addRecipe("OBSIDIAN", 120, <mekanism:reinforcedalloy>, <mekanism:atomicalloy>);

# --------
# Recipes
# --------
# Remove Power cables
recipes.remove(<mekanism:transmitter>);
# Remove Fluid cables
recipes.remove(<mekanism:transmitter:1>);
recipes.remove(<mekanism:basicblock:8>);
# Remove HDPE sheet hand crafting
recipes.remove(<mekanism:polyethene:2>);
# Remove HDPE rod recipe
recipes.remove(<mekanism:polyethene:1>);
# Remove Evap block
recipes.remove(<mekanism:basicblock2>);

# Remove all plastic block recipes, get colored variants with Chisel
recipes.remove(<mekanism:plasticblock:*>);
recipes.remove(<mekanism:slickplasticblock:*>);
recipes.remove(<mekanism:glowplasticblock:*>);
recipes.remove(<mekanism:reinforcedplasticblock:*>);
recipes.remove(<mekanism:roadplasticblock:*>);
recipes.remove(<mekanism:plasticfence:*>);
recipes.remove(<mekanism:glowpanel:*>);
recipes.remove(<mekanism:balloon:*>);
recipes.remove(<mekanism:teleportationcore>);
# Remove metallurgic infuser (re-reciped)
recipes.remove(<mekanism:machineblock:8>);
# Remove energy/speed upgrades (re-reciped)
recipes.remove(<mekanism:energyupgrade>);
recipes.remove(<mekanism:speedupgrade>);
# Remove enrichment chamber(re-reciped)
recipes.remove(<mekanism:machineblock>);
# Remove pump (re-reciped)
recipes.remove(<mekanism:machineblock:12>);
# Remove evap controller (re-reciped)
recipes.remove(<mekanism:basicblock:14>);
# Remove superheating element (re-reciped)
recipes.remove(<mekanism:basicblock2:5>);
# Remove electrolytic core (re-reciped)
recipes.remove(<mekanism:electrolyticcore>);
# Remove electrolytic separator (re-reciped)
recipes.remove(<mekanism:machineblock2:4>);
# Remove Solar Neutron Activator (re-reciped)
recipes.remove(<mekanism:machineblock3:1>);
# Remove gas tank (re-reciped)
recipes.remove(<mekanism:gastank>.withTag({tier: 0}));
# Remove energy cubes
recipes.remove(<mekanism:energycube>);
# Remove cells (tier 2 re-reciped later)
recipes.remove(<mekanism:basicblock2:3>);
# Remove providers (tier 2 re-reciped later)
recipes.remove(<mekanism:basicblock2:4>);
# Remove induction casing (re-reciped)
recipes.remove(<mekanism:basicblock2:1>);
# Remove structural glass (re-reciped in induction smelter)
recipes.remove(<mekanism:basicblock:10>);
# Remove digital miner
recipes.remove(<mekanism:machineblock:4>);

# Remove all bins except ultimate
recipes.remove(<mekanism:basicblock:6>.withTag({tier: 0}));
recipes.remove(<mekanism:basicblock:6>.withTag({tier: 1}));
recipes.remove(<mekanism:basicblock:6>.withTag({tier: 2}));
recipes.remove(<mekanism:basicblock:6>.withTag({tier: 3}));

# Remove rotary condensentrator (re-reciped)
recipes.remove(<mekanism:machineblock2>);
# Remove pressurized tube (re-reciped)
recipes.remove(<mekanism:transmitter:2>.withTag({tier: 0}));

# Remove charcoal block recipe
recipes.remove(<mekanism:basicblock:3>);


# Change laser recipe
recipes.replaceAllOccurences(<mekanism:basicblock:8>, <industrialforegoing:laser_lens>, <mekanism:machineblock2:13>);


recipes.replaceAllOccurences(<mekanism:energycube>, <rftools:powercell_advanced>);

recipes.replaceAllOccurences(<mekanism:teleportationcore>, <rftools:shape_card:2>, <mekanism:machineblock:4>);


recipes.addShaped("mekanism_ultimate_bin", <mekanism:basicblock:6>.withTag({tier: 3}), [
    [<ore:compressed3xCobblestone>, <ore:circuitElite>, <ore:compressed3xCobblestone>],
    [<ore:alloyUltimate>, <storagedrawers:compdrawers>, <ore:alloyUltimate>],
    [<ore:compressed3xCobblestone>, <ore:compressed3xCobblestone>, <ore:compressed3xCobblestone>]
]);

recipes.addShaped("mekanism_thermal_evaporation_block", <mekanism:basicblock2> * 64, [
    [<enderio:block_alloy:6>, <enderio:item_alloy_ingot:6>, <enderio:block_alloy:6>],
    [<enderio:item_alloy_ingot:6>, <ore:singularityCopper>, <enderio:item_alloy_ingot:6>],
    [<enderio:block_alloy:6>, <enderio:item_alloy_ingot:6>, <enderio:block_alloy:6>]
]);

recipes.addShaped("mekanism_plasticblock", <mekanism:plasticblock:15> * 4, [
    [<mekanism:polyethene:2>, <mekanism:polyethene:2>, <mekanism:polyethene:2>],
    [<mekanism:polyethene:2>, null, <mekanism:polyethene:2>],
    [<mekanism:polyethene:2>, <mekanism:polyethene:2>, <mekanism:polyethene:2>]
]);

recipes.addShaped("mekanism_plasticblock_glow", <mekanism:glowplasticblock:15> * 3, [
    [<mekanism:plasticblock:15>, <mekanism:plasticblock:15>],
    [<mekanism:plasticblock:15>, <ore:dustGlowstone>]
]);

recipes.addShaped("mekanism_reinforced_plasticblock", <mekanism:reinforcedplasticblock:15> * 4, [
    [null, <mekanism:plasticblock:15>, null],
    [<mekanism:plasticblock:15>, <ore:dustOsmium>, <mekanism:plasticblock:15>],
    [null, <mekanism:plasticblock:15>, null]
]);

recipes.addShaped("mekanism_road_plasticblock", <mekanism:roadplasticblock:15> * 3, [
    [<ore:sand>, <ore:sand>, <ore:sand>],
    [<mekanism:slickplasticblock:15>, <mekanism:slickplasticblock:15>, <mekanism:slickplasticblock:15>],
    [<ore:sand>, <ore:sand>, <ore:sand>]
]);

recipes.addShaped("mekanism_plastic_fence", <mekanism:plasticfence:15> * 3, [
    [<mekanism:plasticblock:15>, <mekanism:polyethene:3>, <mekanism:slickplasticblock:15>],
    [<mekanism:plasticblock:15>, <mekanism:polyethene:3>, <mekanism:plasticblock:15>]
]);

recipes.addShaped("mekanism_glow_panel", <mekanism:glowpanel:15> * 4, [
    [<ore:paneGlass>, <mekanism:polyethene:2>, <ore:paneGlass>],
    [<mekanism:polyethene:2>, null, <mekanism:polyethene:2>],
    [<ore:dustGlowstone>, <mekanism:polyethene:2>, <ore:dustGlowstone>]
]);

recipes.addShaped("mekanism_enrichment_chamber", <mekanism:machineblock>, [
    [<ore:itemChassiParts>, <thermalexpansion:machine:3>, <ore:itemChassiParts>],
    [<ore:circuitBasic>, <enderio:item_material:1>, <ore:circuitBasic>],
    [<ore:blockOsmium>, <thermalexpansion:machine:3>, <ore:blockOsmium>]
]);

recipes.addShaped("mekanism_metallurgic_infuser", <mekanism:machineblock:8>, [
    [<ore:itemChassiParts>, <thermalexpansion:machine:9>, <ore:itemChassiParts>],
    [<ore:gearDark>, <enderio:item_material:1>, <ore:gearDark>],
    [<ore:blockOsmium>, <thermalexpansion:machine:9>, <ore:blockOsmium>]
]);

recipes.addShaped("mekanism_pump", <mekanism:machineblock:12>, [
    [<ore:itemChassiParts>, <industrialforegoing:fluid_pump>, <ore:itemChassiParts>],
    [<ore:gearDark>, <enderio:item_material:1>, <ore:gearDark>],
    [<ore:blockOsmium>, <ore:blockOsmium>, <ore:blockOsmium>]
]);

recipes.addShaped("mekanism_evap_controller", <mekanism:basicblock:14>, [
    [<ore:circuitAdvanced>, <ore:alloyElite>, <ore:circuitAdvanced>],
    [<ore:gearDark>, <mekanism:basicblock2:5>, <ore:gearDark>],
    [<mekanism:basicblock2>, <mekanism:basicblock2>, <mekanism:basicblock2>]
]);

recipes.addShaped("mekanism_superheating_element", <mekanism:basicblock2:5>, [
    [<pneumaticcraft:heat_frame>, <ore:gearDark>, <pneumaticcraft:heat_frame>],
    [<ore:gearDark>, <mekanism:basicblock:8>, <ore:gearDark>],
    [<pneumaticcraft:heat_frame>, <ore:gearDark>, <pneumaticcraft:heat_frame>]
]);

recipes.addShaped("mekanism_electrolytic_core", <mekanism:electrolyticcore>, [
    [null, <ore:circuitAdvanced>, null],
    [<ore:alloyElite>, <ore:doubleCapacitor>, <ore:alloyElite>],
    [null, <ore:circuitAdvanced>, null]
]);

recipes.addShaped("mekanism_electro_separator", <mekanism:machineblock2:4>, [
    [<ore:itemChassiParts>, <mekanism:electrolyticcore>, <ore:itemChassiParts>],
    [<ore:gearVibrant>, <mekanism:basicblock:8>, <ore:gearVibrant>],
    [<ore:blockOsmium>, <thermalexpansion:machine:8>, <ore:blockOsmium>]
]);

recipes.addShaped("mekanism_solar_activator", <mekanism:machineblock3:1>, [
    [<ore:runeSummerB>, <ore:itemIlluminatedPanel>, <ore:runeSummerB>],
    [<ore:circuitElite>, <mekanism:basicblock:8>, <ore:circuitElite>],
    [<ore:blockOsmium>, <ore:blockOsmium>, <ore:blockOsmium>]
]);

recipes.addShaped("mekanism_rotary_cons", <mekanism:machineblock2>, [
    [<pneumaticcraft:advanced_pressure_tube>, <ore:circuitBasic>, <pneumaticcraft:advanced_pressure_tube>],
    [<ore:gearVibrant>, <mekanism:basicblock:8>, <ore:gearVibrant>],
    [<ore:blockOsmium>, <thermalexpansion:tank>, <ore:blockOsmium>]
]);

recipes.addShaped("mekanism_gas_tank", <mekanism:gastank>, [
    [<ore:blockOsmium>, <pneumaticcraft:pressure_tube>, <ore:blockOsmium>],
    [<ore:gearIronInfinity>, <thermalexpansion:tank>, <ore:gearIronInfinity>],
    [<ore:blockOsmium>, <pneumaticcraft:pressure_tube>, <ore:blockOsmium>]
]);

recipes.addShaped("mekanism_pressurized_tube", <mekanism:transmitter:2>.withTag({tier: 0}) * 8, [
    [<pneumaticcraft:pressure_tube>, <pneumaticcraft:pressure_tube>, <pneumaticcraft:pressure_tube>],
    [<pneumaticcraft:pressure_tube>, <ore:ingotElectricalSteel>, <pneumaticcraft:pressure_tube>],
    [<pneumaticcraft:pressure_tube>, <pneumaticcraft:pressure_tube>, <pneumaticcraft:pressure_tube>]
]);


recipes.addShaped("mekanism_induction_casing", <mekanism:basicblock2:1> * 8, [
    [<ore:blockOsmium>, <mekanism:polyethene:2>, <ore:blockOsmium>],
    [<ore:gearIronInfinity>, <ore:singularityTin>, <ore:gearIronInfinity>],
    [<ore:blockOsmium>, <mekanism:polyethene:2>, <ore:blockOsmium>]
]);

recipes.addShaped("mekanism_adv_induction_cell", <mekanism:basicblock2:3>.withTag({tier: 1}), [
    [<ore:singularityRedstone>, <ore:circuitElite>, <ore:singularityRedstone>],
    [<ore:octadicCapacitor>, <enderio:block_cap_bank:3>, <ore:octadicCapacitor>],
    [<ore:singularityRedstone>, <ore:circuitElite>, <ore:singularityRedstone>]
]);

recipes.addShaped("mekanism_adv_induction_provider", <mekanism:basicblock2:4>.withTag({tier: 1}), [
    [<ore:octadicCapacitor>, <ore:circuitElite>, <ore:octadicCapacitor>],
    [<enderio:item_power_conduit:2>, <modularmachinery:blockenergyoutputhatch:6>, <enderio:item_power_conduit:2>],
    [<ore:octadicCapacitor>, <ore:circuitElite>, <ore:octadicCapacitor>]
]);

recipes.addShaped("mekanism_speedupgrade", <mekanism:speedupgrade> * 4, [
    [null, <enderio:item_extract_speed_upgrade>, null],
    [<enderio:item_extract_speed_upgrade>, <ore:alloyElite>, <enderio:item_extract_speed_upgrade>],
    [null, <enderio:item_extract_speed_upgrade>, null]
]);


recipes.addShaped("mekanism_energyupgrade", <mekanism:energyupgrade> * 4, [
    [null, <teslacorelib:energy_tier2>, null],
    [<teslacorelib:energy_tier2>, <ore:alloyElite>, <teslacorelib:energy_tier2>],
    [null, <teslacorelib:energy_tier2>, null]
]);

recipes.addShapeless("mekanism_balloon", <mekanism:balloon:15> * 2, [<ore:leather>, <ore:string>, <ore:dyeWhite>]);


#############################
# Pressurized Reaction Chamber
##############################
reaction.removeRecipe(<mekanism:substrate>, <gas:oxygen>);
reaction.removeRecipe(<mekanism:substrate>, <gas:ethene>);

reaction.addRecipe(
    <mekanism:biofuel> * 32,
    <liquid:plastic> * 5000,
    <gas:hydrogen> * 5000,
    <mekanism:substrate>,
    <gas:ethene> * 50,
    2000.0,
    120
);
