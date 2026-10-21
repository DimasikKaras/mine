import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.thermalexpansion.Refinery;
import mods.thermalexpansion.RedstoneFurnace;
import mods.thermalexpansion.Centrifuge;
import mods.thermalexpansion.Crucible;
import mods.thermalexpansion.Compactor;
import mods.thermalexpansion.Transposer;
import mods.thermalexpansion.Pulverizer;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.CompressionDynamo;
import mods.thermalexpansion.Infuser;
import mods.thermalexpansion.Insolator;
import crafttweaker.oredict.IOreDictEntry;


function getModStackFromDict(oreDictEntry as IOreDictEntry, mod as string) as IItemStack {
    for item in oreDictEntry.itemArray as IItemStack[] {
        if(item.definition.owner == mod) {
            return item;
        }
    }
    # Fallback return if nothing is found
    return oreDictEntry.firstItem;
}

# ----------------
# Furnace
# ----------------
# Hot enough to melt bricks, woop woop
RedstoneFurnace.addRecipe(<minecraft:brick>, <minecraft:clay_ball>, 2000);
RedstoneFurnace.addRecipe(<minecraft:netherbrick>, <minecraft:netherrack>, 2000);
RedstoneFurnace.addRecipe(<minecraft:glass>, <minecraft:sand:*>, 2000);

# Add ore to ingot recipes that were removed from the furnace
for ore, ingot in _oreToIngot {
    RedstoneFurnace.addRecipe(ingot.firstItem, ore.firstItem, 2000);
}

# Add dust to ingot recipes
for oreDust, oreIngot in _dustToIngot {
    if(!oreDust.empty && !oreIngot.empty) {
        RedstoneFurnace.addRecipe(getModStackFromDict(oreIngot, "thermalfoundation"), oreDust.firstItem, 2000);
    }
}

# ----------------
# Pulverizer
# ----------------
# EnderIO sag mill exclusives
Pulverizer.addRecipe(<ore:itemPrecientPowder>.firstItem, <ore:itemPrecientCrystal>.firstItem, 4000);
Pulverizer.addRecipe(<ore:itemVibrantPowder>.firstItem, <ore:itemVibrantCrystal>.firstItem, 4000);
Pulverizer.addRecipe(<ore:itemPulsatingPowder>.firstItem, <ore:itemPulsatingCrystal>.firstItem, 4000);
Pulverizer.addRecipe(<ore:itemEnderCrystalPowder>.firstItem, <ore:itemEnderCrystal>.firstItem, 4000);
# Midnight Bogshroom powder
Pulverizer.addRecipe(<midnight:bogshroom_powder> * 2, <midnight:bogshroom>, 6000);
Pulverizer.addRecipe(<midnight:bogshroom_powder> * 2, <midnight:bogshroom_hat>, 6000);
Pulverizer.addRecipe(<midnight:bogshroom_powder> * 3, <midnight:bogshroom_shelf>, 6000);
Pulverizer.addRecipe(<midnight:bogshroom_powder> * 4, <midnight:double_bogshroom>, 6000);
# Midnight Viridshroom powder
Pulverizer.addRecipe(<midnight:viridshroom_powder> * 2, <midnight:viridshroom>, 6000);
Pulverizer.addRecipe(<midnight:viridshroom_powder> * 2, <midnight:viridshroom_hat>, 6000);
Pulverizer.addRecipe(<midnight:viridshroom_powder> * 3, <midnight:viridshroom_shelf>, 6000);
Pulverizer.addRecipe(<midnight:viridshroom_powder> * 4, <midnight:double_viridshroom>, 6000);
# Midnight Nightshroom powder
Pulverizer.addRecipe(<midnight:nightshroom_powder> * 2, <midnight:nightshroom>, 6000);
Pulverizer.addRecipe(<midnight:nightshroom_powder> * 2, <midnight:nightshroom_hat>, 6000);
Pulverizer.addRecipe(<midnight:nightshroom_powder> * 3, <midnight:nightshroom_shelf>, 6000);
Pulverizer.addRecipe(<midnight:nightshroom_powder> * 4, <midnight:double_nightshroom>, 6000);
# Midnight Dewshroom powder
Pulverizer.addRecipe(<midnight:dewshroom_powder> * 2, <midnight:dewshroom>, 6000);
Pulverizer.addRecipe(<midnight:dewshroom_powder> * 2, <midnight:dewshroom_hat>, 6000);
Pulverizer.addRecipe(<midnight:dewshroom_powder> * 3, <midnight:dewshroom_shelf>, 6000);
Pulverizer.addRecipe(<midnight:dewshroom_powder> * 4, <midnight:double_dewshroom>, 6000);
# Midnight rouxe rock -> rouxe crystal
Pulverizer.addRecipe(<midnight:rouxe> * 3, <midnight:rouxe_rock>, 8000);
# Midnight bloomcrystal rock -> bloomcrystal
Pulverizer.addRecipe(<midnight:bloomcrystal> * 3, <midnight:bloomcrystal_rock>, 8000);
# Dusts of midnight crystals
Pulverizer.addRecipe(<contenttweaker:dust_rouxe>, <midnight:rouxe>, 4000);
Pulverizer.addRecipe(<contenttweaker:dust_bloomcrystal>, <midnight:bloomcrystal>, 4000);
# Infused mana dust
Pulverizer.addRecipe(<contenttweaker:dust_infused_mana>, <botania:manaresource:2>, 4000);
# Kalthrite
Pulverizer.addRecipe(<contenttweaker:dust_kalthrite>, <contenttweaker:foliated_kalthrite>, 4000);
Pulverizer.addRecipe(<contenttweaker:dust_kalthrite> * 3, <contenttweaker:deep_substrate_ore>, 8000);
# Infused mana diamond dust

# Add pulverizer recipe for arid waste rock
Pulverizer.addRecipe(<contenttweaker:red_canyon_dust>, <traverse:red_rock_cobblestone>, 4000);
Pulverizer.addRecipe(<contenttweaker:red_canyon_dust>, <traverse:red_rock>, 4000);


# ----------------
# Crucible
# ----------------
# Remove redstone/glowstone/ender pearl melting (re-add below)
Crucible.removeRecipe(<minecraft:redstone>);
Crucible.removeRecipe(<minecraft:redstone_block>);
Crucible.removeRecipe(<minecraft:glowstone_dust>);
Crucible.removeRecipe(<minecraft:glowstone>);
Crucible.removeRecipe(<minecraft:ender_pearl>);

# Cheaper melting of redstone
Crucible.addRecipe(<liquid:redstone> * 100, <minecraft:redstone>, 4000);
Crucible.addRecipe(<liquid:redstone> * 900, <minecraft:redstone_block>, 24000);
# Cheaper melting of glowstone
Crucible.addRecipe(<liquid:glowstone> * 250, <minecraft:glowstone_dust>, 9000);
Crucible.addRecipe(<liquid:glowstone> * 1000, <minecraft:glowstone>, 36000);
# Cheaper melting of ender pearls
Crucible.addRecipe(<liquid:ender> * 250, <minecraft:ender_pearl>, 9000);

# DML matter -> essence
Crucible.addRecipe(<liquid:essence> * 400, <deepmoblearning:living_matter_overworldian>, 1600);
Crucible.addRecipe(<liquid:essence> * 600, <deepmoblearning:living_matter_hellish>, 1600);
Crucible.addRecipe(<liquid:essence> * 800, <deepmoblearning:living_matter_extraterrestrial>, 1600);

# Sinister witch dust -> witchwater
Crucible.addRecipe(<liquid:witchwater> * 250, <contenttweaker:witch_dust>, 9000);

# Mana for botania
Crucible.addRecipe(<liquid:mana> * 250, <thermalfoundation:material:1028>, 60000);

Crucible.addRecipe(<liquid:liquid_blaze> * 2000, <contenttweaker:block_blaze_powder>, 11000);
Crucible.addRecipe(<liquid:troll_eye_goop> * 4000, <contenttweaker:troll_eye>, 8000);

# Semi-Liquified Sand. Start of silicon processing
Crucible.addRecipe(<liquid:almost_molten_sand> * 250, <minecraft:sand>, 16000);

# Molten salt for reactors
Crucible.addRecipe(<liquid:molten_salt> * 250, <ore:blockSalt>.firstItem, 16000);

# Molten uranium fuel
Crucible.addRecipe(<liquid:uranium> * 144, <ore:ingotUranium>.firstItem, 16000);
Crucible.addRecipe(<liquid:uranium> * 1296, <ore:blockUranium>.firstItem, 144000);

Crucible.addRecipe(<liquid:molten_void> * 288, <contenttweaker:transdimensional_ore>, 32000);

# Remelt End Steel to Molten End Steel (compat fix, theres a bug that makes the original compat melt this into ELECTRICAL steel)
Crucible.addRecipe(<liquid:end_steel> * 1296, <enderio:block_alloy:8>, 36000);


# Resmelt plastics
Crucible.addRecipe(<liquid:plastic> * 250, <pneumaticcraft:plastic>, 3000);
Crucible.addRecipe(<liquid:plastic> * 250, <pneumaticcraft:plastic:1>, 3000);
Crucible.addRecipe(<liquid:plastic> * 250, <pneumaticcraft:plastic:2>, 3000);
Crucible.addRecipe(<liquid:plastic> * 250, <pneumaticcraft:plastic:3>, 3000);
Crucible.addRecipe(<liquid:plastic> * 250, <pneumaticcraft:plastic:4>, 3000);
Crucible.addRecipe(<liquid:plastic> * 250, <pneumaticcraft:plastic:5>, 3000);
Crucible.addRecipe(<liquid:plastic> * 250, <pneumaticcraft:plastic:6>, 3000);
Crucible.addRecipe(<liquid:plastic> * 250, <pneumaticcraft:plastic:7>, 3000);
Crucible.addRecipe(<liquid:plastic> * 250, <pneumaticcraft:plastic:8>, 3000);
Crucible.addRecipe(<liquid:plastic> * 250, <pneumaticcraft:plastic:9>, 3000);
Crucible.addRecipe(<liquid:plastic> * 250, <pneumaticcraft:plastic:10>, 3000);
Crucible.addRecipe(<liquid:plastic> * 250, <pneumaticcraft:plastic:11>, 3000);
Crucible.addRecipe(<liquid:plastic> * 250, <pneumaticcraft:plastic:12>, 3000);
Crucible.addRecipe(<liquid:plastic> * 250, <pneumaticcraft:plastic:13>, 3000);
Crucible.addRecipe(<liquid:plastic> * 250, <pneumaticcraft:plastic:14>, 3000);
Crucible.addRecipe(<liquid:plastic> * 250, <pneumaticcraft:plastic:15>, 3000);

# Meat -> Liquid meat
Crucible.addRecipe(<liquid:meat> * 3000, <midnight:cook_stag_flank>, 3000);
Crucible.addRecipe(<liquid:meat> * 500, <minecraft:cooked_mutton>, 3000);
Crucible.addRecipe(<liquid:meat> * 500, <minecraft:cooked_rabbit>, 3000);
Crucible.addRecipe(<liquid:meat> * 500, <minecraft:cooked_chicken>, 3000);
Crucible.addRecipe(<liquid:meat> * 500, <minecraft:cooked_beef>, 3000);
Crucible.addRecipe(<liquid:meat> * 500, <minecraft:cooked_fish:1>, 3000);
Crucible.addRecipe(<liquid:meat> * 500, <minecraft:cooked_fish>, 3000);
Crucible.addRecipe(<liquid:meat> * 500, <minecraft:cooked_porkchop>, 3000);
Crucible.addRecipe(<liquid:meat> * 500, <tconstruct:edible:10>, 3000);
Crucible.addRecipe(<liquid:meat> * 500, <tconstruct:edible:11>, 3000);
Crucible.addRecipe(<liquid:meat> * 500, <tconstruct:edible:12>, 3000);
Crucible.addRecipe(<liquid:meat> * 500, <tconstruct:edible:13>, 3000);
Crucible.addRecipe(<liquid:meat> * 500, <tconstruct:edible:14>, 3000);
Crucible.addRecipe(<liquid:meat> * 500, <tconstruct:edible:15>, 3000);
Crucible.addRecipe(<liquid:meat> * 500, <tconstruct:edible:20>, 3000);
Crucible.addRecipe(<liquid:meat> * 500, <tconstruct:edible:21>, 3000);
Crucible.addRecipe(<liquid:meat> * 500, <tconstruct:edible:22>, 3000);
Crucible.addRecipe(<liquid:meat> * 500, <tconstruct:edible:23>, 3000);

# Melt enderio metals
Crucible.addRecipe(<liquid:electrical_steel> * 144, <ore:ingotElectricalSteel>.firstItem, 8000);
Crucible.addRecipe(<liquid:energetic_alloy> * 144, <ore:ingotEnergeticAlloy>.firstItem, 8000);
Crucible.addRecipe(<liquid:vibrant_alloy> * 144, <ore:ingotVibrantAlloy>.firstItem, 8000);
Crucible.addRecipe(<liquid:redstone_alloy> * 144, <ore:ingotRedstoneAlloy>.firstItem, 8000);
Crucible.addRecipe(<liquid:conductive_iron> * 144, <ore:ingotConductiveIron>.firstItem, 8000);
Crucible.addRecipe(<liquid:pulsating_iron> * 144, <ore:ingotPulsatingIron>.firstItem, 8000);
Crucible.addRecipe(<liquid:dark_steel> * 144, <ore:ingotDarkSteel>.firstItem, 8000);
Crucible.addRecipe(<liquid:soularium> * 144, <ore:ingotSoularium>.firstItem, 8000);
Crucible.addRecipe(<liquid:end_steel> * 144, <ore:ingotEndSteel>.firstItem, 8000);

Crucible.addRecipe(<liquid:electrical_steel> * 1296, <ore:blockEndSteel>.firstItem, 36000);
Crucible.addRecipe(<liquid:energetic_alloy> * 1296, <ore:blockEnergeticAlloy>.firstItem, 36000);
Crucible.addRecipe(<liquid:vibrant_alloy> * 1296, <ore:blockVibrantAlloy>.firstItem, 36000);
Crucible.addRecipe(<liquid:redstone_alloy> * 1296, <ore:blockRedstoneAlloy>.firstItem, 36000);
Crucible.addRecipe(<liquid:conductive_iron> * 1296, <ore:blockConductiveIron>.firstItem, 36000);
Crucible.addRecipe(<liquid:pulsating_iron> * 1296, <ore:blockPulsatingIron>.firstItem, 36000);
Crucible.addRecipe(<liquid:dark_steel> * 1296, <ore:blockDarkSteel>.firstItem, 36000);
Crucible.addRecipe(<liquid:soularium> * 1296, <ore:blockSoularium>.firstItem, 36000);
Crucible.addRecipe(<liquid:end_steel> * 1296, <ore:blockEndSteel>.firstItem, 36000);

# ----------------
# Centrifugal Separator
# ----------------
for stack in <ore:fish>.items { 
    Centrifuge.addRecipe([<minecraft:bone> % 50], stack, <liquid:fish_oil> * 500, 9000);
}

# Remove enderium/signalum decrafting
Centrifuge.removeRecipe(<thermalfoundation:material:103> * 4);
Centrifuge.removeRecipe(<thermalfoundation:material:101> * 4);

# ----------------
# Transposer
# ----------------
Transposer.removeFillRecipe(<thermaldynamics:duct_64>, <liquid:ender>);
Transposer.removeFillRecipe(<thermaldynamics:duct_64:3>, <liquid:aerotheum>);

Transposer.addFillRecipe(<astralsorcery:itemusabledust> * 4, <ore:dustGlowstone>.firstItem, <liquid:astralsorcery.liquidstarlight> * 500, 4000);
Transposer.addFillRecipe(<contenttweaker:lubricated_gear>, <pneumaticcraft:compressed_iron_gear>, <liquid:lubricant> * 400, 4000);
# Sand -> Clay
Transposer.addFillRecipe(<minecraft:clay>, <minecraft:sand>, <liquid:water> * 2500, 4000);
# Polymer Clay
Transposer.addFillRecipe(<ore:polymerClay>.firstItem, <contenttweaker:polymer_base>, <liquid:plastic> * 250, 4000);
# Signalum/Lumium/Enderium
Transposer.addFillRecipe(<ore:ingotSignalum>.firstItem, <ore:ingotElectrum>.firstItem, <liquid:redstone> * 500, 8000);
Transposer.addFillRecipe(<ore:ingotLumium>.firstItem, <ore:ingotSilver>.firstItem, <liquid:glowstone> * 500, 8000);
Transposer.addFillRecipe(<ore:ingotEnderium>.firstItem, <ore:ingotAstralStarmetal>.firstItem, <liquid:ender> * 500, 12000);
# Mana tablet
Transposer.addFillRecipe(<botania:manatablet>.withTag({mana: 500000}), <botania:manatablet>.withTag({ mana: 0 }), <liquid:mana> * 4000, 128000);
# Nocturnal powder
Transposer.addFillRecipe(<astralsorcery:itemusabledust:1>, <astralsorcery:itemusabledust>, <liquid:witchwater> * 100, 8000);
# Cursed earth
Transposer.addFillRecipe(<extrautils2:cursedearth>, <minecraft:grass>, <liquid:witchwater> * 1000, 16000);
# Rouxe fill / Ender crystal
Transposer.addFillRecipe(<contenttweaker:dust_rouxe_enderium>, <contenttweaker:dust_rouxe> * 4, <liquid:ender> * 50, 16000);
Transposer.addFillRecipe(<ore:itemEnderCrystal>.firstItem, <deepmoblearning:pristine_matter_enderman>, <liquid:shimmering_crystalline> * 300, 32000);
# Filling waste rods
Transposer.addFillRecipe(
    <contenttweaker:nuclear_waste_rod>,
    <contenttweaker:rod_packed>,
    <liquid:molten_nuclear_waste> * 1000,
    128000
);

# Tenebrum/Nagrilite/Ebonite
Transposer.addFillRecipe(
    <midnight:nagrilite_block>,
    <ore:blockPlatinum>.firstItem,
    <liquid:molten_nuclear_waste> * 1000,
    32000
);

Transposer.addFillRecipe(
    <midnight:ebonys_block>,
    <ore:blockIridium>.firstItem,
    <liquid:molten_nuclear_waste> * 1000,
    32000
);

Transposer.addFillRecipe(
    <midnight:tenebrum_block>,
    <ore:blockUranium>.firstItem,
    <liquid:molten_nuclear_waste> * 1000,
    32000
);

# Fill lead crystals into void crystals
Transposer.addFillRecipe(<contenttweaker:void_crystal>, <mekanism:crystal:6> * 64, <liquid:molten_void> * 288, 16000);

# ----------------
# Induction Smelter
# ----------------

# Remove clock/compass for rich slag, they do not work
InductionSmelter.removeRecipe(<minecraft:clock>, <minecraft:sand>);
InductionSmelter.removeRecipe(<minecraft:compass>, <minecraft:sand>);


# Charred terracotta
InductionSmelter.addRecipe(<ore:charredTerracotta>.firstItem * 8, <contenttweaker:charred_feather>, <tconstruct:materials> * 8, 3000);
# Charred Feather Pile Qol recipe
InductionSmelter.addRecipe(<contenttweaker:charred_feather> * 8, <ore:ravenFeather>.firstItem, <ore:dustCoal>.firstItem, 3000);
# Pigiron QoL recipe
InductionSmelter.addRecipe(<ore:ingotPigiron>.firstItem, <ore:ingotIron>.firstItem, <contenttweaker:bloody_mud>, 3000);
# Steel from coke dust
InductionSmelter.addRecipe(<ore:ingotSteel>.firstItem, <ore:ingotIron>.firstItem, <ore:dustCoke>.firstItem, 3000);

# Metal chests cheaper recipes
InductionSmelter.addRecipe(<ore:chestIron>.firstItem, <ore:ingotIron>.firstItem * 4, <minecraft:chest>, 5000);
InductionSmelter.addRecipe(<ore:chestGold>.firstItem, <ore:ingotGold>.firstItem * 4, <ore:chestIron>.firstItem, 5000);
InductionSmelter.addRecipe(<ore:chestDiamond>.firstItem, <ore:gemDiamond>.firstItem * 4, <ore:chestGold>.firstItem, 5000);
InductionSmelter.addRecipe(<ore:chestObsidian>.firstItem, <ore:obsidian>.firstItem * 4, <ore:chestDiamond>.firstItem, 5000);

# Ardite/Cobalt ore doubling
InductionSmelter.addRecipe(<ore:ingotArdite>.firstItem * 2, <ore:sand>.firstItem, <ore:oreArdite>.firstItem, 4000, <thermalfoundation:material:865>, 15);
InductionSmelter.addRecipe(<ore:ingotCobalt>.firstItem * 2, <ore:sand>.firstItem, <ore:oreCobalt>.firstItem, 4000, <thermalfoundation:material:865>, 15);
# Ardite/Cobalt ore tripling
InductionSmelter.addRecipe(<ore:ingotArdite>.firstItem * 3, <thermalfoundation:material:865>, <ore:oreArdite>.firstItem, 4000, <thermalfoundation:material:864>, 75);
InductionSmelter.addRecipe(<ore:ingotCobalt>.firstItem * 3, <thermalfoundation:material:865>, <ore:oreCobalt>.firstItem, 4000, <thermalfoundation:material:864>, 75);

# Uranium ore doubling
InductionSmelter.addRecipe(<ore:ingotUranium>.firstItem * 2, <ore:sand>.firstItem, <ore:oreUranium>.firstItem, 4000, <thermalfoundation:material:865>, 15);
# Uranium ore tripling
InductionSmelter.addRecipe(<ore:ingotUranium>.firstItem * 3, <thermalfoundation:material:865>, <ore:oreUranium>.firstItem, 4000, <thermalfoundation:material:864>, 75);

# Polymer base 
InductionSmelter.addRecipe(<contenttweaker:polymer_base>, <ore:ingotBrickDried>.firstItem, <contenttweaker:polymer_binding_agent>, 3000);

# AE2 Circuits
InductionSmelter.addRecipe(<appliedenergistics2:material:23>, <appliedenergistics2:material:20>, <appliedenergistics2:material:16>, 4000);

# EnderIO Alloys
InductionSmelter.addRecipe(<ore:ingotPulsatingIron>.firstItem, <ore:ingotIron>.firstItem, <ore:enderpearl>.firstItem, 9000);
InductionSmelter.addRecipe(<ore:ingotSoularium>.firstItem, <ore:ingotElectricalSteel>.firstItem, <minecraft:soul_sand>, 9000);
InductionSmelter.addRecipe(<ore:ingotEndSteel>.firstItem, <ore:ingotDarkSteel>.firstItem, <ore:endstone>.firstItem, 9000);
InductionSmelter.addRecipe(<ore:ingotConductiveIron>.firstItem, <ore:ingotIron>.firstItem, <ore:dustRedstone>.firstItem, 9000);
InductionSmelter.addRecipe(<ore:ingotRedstoneAlloy>.firstItem, <ore:ingotSanguineMetal>.firstItem, <ore:dustRedstone>.firstItem, 9000);
InductionSmelter.addRecipe(<ore:ingotElectricalSteel>.firstItem, <ore:ingotSteel>.firstItem, <ore:itemSilicon>.firstItem, 9000);
InductionSmelter.addRecipe(<ore:ingotEnergeticAlloy>.firstItem, <ore:ingotElectricalSteel>.firstItem, <contenttweaker:energetic_compound>, 9000);
InductionSmelter.addRecipe(<ore:ingotVibrantAlloy>.firstItem, <ore:ingotEnergeticAlloy>.firstItem, <ore:enderpearl>.firstItem, 9000);
InductionSmelter.addRecipe(<ore:ingotDarkSteel>.firstItem, <ore:ingotElectricalSteel>.firstItem, <chisel:voidstone>, 9000);
# Lategame alternative for HOP graphite
InductionSmelter.addRecipe(<ore:ingotHOPGraphite>.firstItem, <ore:ingotDarkSteel>.firstItem, <ore:dustPyrotheum>.firstItem * 8, 36000);

# EnderIO Gears
InductionSmelter.addRecipe(<ore:gearIronInfinity>.firstItem, <contenttweaker:lubricated_gear>, <ore:ingotElectricalSteel>.firstItem * 4, 9000);
InductionSmelter.addRecipe(<ore:gearEnergized>.firstItem, <ore:gearIronInfinity>.firstItem, <ore:ingotEnergeticAlloy>.firstItem * 4, 9000);
InductionSmelter.addRecipe(<ore:gearVibrant>.firstItem, <ore:gearEnergized>.firstItem, <ore:ingotVibrantAlloy>.firstItem * 4, 9000);
InductionSmelter.addRecipe(<ore:gearDark>.firstItem, <ore:gearIronInfinity>.firstItem, <ore:ingotDarkSteel>.firstItem * 4, 9000);
# EnderIO machine parts
InductionSmelter.addRecipe(<enderio:item_material:2> * 8, <ore:gearIronInfinity>.firstItem, <rftools:machine_frame>, 32000);

# Fused Quartz
InductionSmelter.addRecipe(<enderio:block_fused_quartz>, <minecraft:glass>, <ore:gemQuartz>.firstItem * 4, 4000);
InductionSmelter.addRecipe(<enderio:block_enlightened_fused_quartz>, <enderio:block_fused_quartz>, <ore:dustGlowstone>.firstItem * 4, 4000);
InductionSmelter.addRecipe(<enderio:block_dark_fused_quartz>, <enderio:block_fused_quartz>, <ore:dustObsidian>.firstItem * 4, 4000);
# Quartz glass
InductionSmelter.addRecipe(<appliedenergistics2:quartz_glass>, <minecraft:glass>, <ore:dustQuartz>.firstItem * 2, 4000);
# Infused Diamond
InductionSmelter.addRecipe(<ore:gemInfusedDiamond>.firstItem, <rftools:dimensional_shard> * 8, <ore:gemDiamond>.firstItem, 4000);
# Structural glass
InductionSmelter.addRecipe(<mekanism:basicblock:10> * 4, <appliedenergistics2:quartz_glass> * 4, <mekanism:basicblock>, 16000);
# Obsidian
InductionSmelter.addRecipe(<minecraft:obsidian>, <thermalfoundation:material:770> * 4, <minecraft:netherrack>, 4000);
# Nature block
InductionSmelter.addRecipe(<contenttweaker:nature_block>, <ore:singularityNature>.firstItem * 24, <botania:altgrass:2>, 144000);

# ----------------
# Compactor
# ----------------
Compactor.addStorageRecipe(<ore:slimeballBlood>.firstItem, <cryosimadditions:blood_resin_log>, 4000);
Compactor.addStorageRecipe(<industrialforegoing:dryrubber>, <industrialforegoing:tinydryrubber> * 6, 4000);
Compactor.addStorageRecipe(<tconstruct:large_plate>.withTag({Material: "ardite"}), <ore:ingotArdite>.firstItem * 8, 19500);
Compactor.addStorageRecipe(<tconstruct:large_plate>.withTag({Material: "cobalt"}), <ore:ingotCobalt>.firstItem * 8, 19500);
Compactor.addStorageRecipe(<tconstruct:large_plate>.withTag({Material: "silver"}), <ore:plateSilver>.firstItem * 8, 19500);
Compactor.addStorageRecipe(<tconstruct:large_plate>.withTag({Material: "iron"}), <ore:plateIron>.firstItem * 8, 19500);

# Remove irrelevant mana infused stuff
Compactor.removeGearRecipe(<ore:ingotMithril>.firstItem * 4);
Compactor.removeStorageRecipe(<ore:ingotMithril>.firstItem);

# ------------------
# Refinery (Distill)
# ------------------
Refinery.addRecipe(<liquid:lubricant> * 100, <ore:dustSalt>.firstItem % 20, <liquid:fish_oil> * 1000, 5000);
Refinery.addRecipe(<liquid:coal> * 50, <ore:itemSilicon>.firstItem, <liquid:silica> * 250, 50000);

# ----------------
# Dynamo Tweaks
# ----------------
# Remove unrefined oil as a useable fuel source (near limitless supply from Arid Waste dim)
CompressionDynamo.removeFuel(<liquid:oil>);

# ----------------
# Energetic Infuser
# ----------------
# Remove bait recipe
Infuser.removeRecipe(<thermalfoundation:bait:1>);

# ---------------------
# Phytogenic Insolator
# ---------------------
# Shrooms + phytogro tier 0
Insolator.addRecipe(<midnight:bogshroom_hat> * 6, <thermalfoundation:fertilizer>, <midnight:bogshroom>, 12000, <midnight:bogshroom>, 20);
Insolator.addRecipe(<midnight:nightshroom_hat> * 6, <thermalfoundation:fertilizer>, <midnight:nightshroom>, 12000, <midnight:nightshroom>, 20);
Insolator.addRecipe(<midnight:viridshroom_hat> * 6, <thermalfoundation:fertilizer>, <midnight:viridshroom>, 12000, <midnight:viridshroom>, 20);
Insolator.addRecipe(<midnight:dewshroom_hat> * 6, <thermalfoundation:fertilizer>, <midnight:dewshroom>, 12000, <midnight:dewshroom>, 20);
# Shrooms + phytogro tier 1
Insolator.addRecipe(<midnight:bogshroom_hat> * 10, <thermalfoundation:fertilizer:1>, <midnight:bogshroom>, 15000, <midnight:bogshroom>, 30);
Insolator.addRecipe(<midnight:nightshroom_hat> * 10, <thermalfoundation:fertilizer:1>, <midnight:nightshroom>, 15000, <midnight:nightshroom>, 30);
Insolator.addRecipe(<midnight:viridshroom_hat> * 10, <thermalfoundation:fertilizer:1>, <midnight:viridshroom>, 15000, <midnight:viridshroom>, 30);
Insolator.addRecipe(<midnight:dewshroom_hat> * 10, <thermalfoundation:fertilizer:1>, <midnight:dewshroom>, 15000, <midnight:dewshroom>, 30);
# Shrooms + phytogro tier 2
Insolator.addRecipe(<midnight:bogshroom_hat> * 18, <thermalfoundation:fertilizer:2>, <midnight:bogshroom>, 18000, <midnight:bogshroom>, 50);
Insolator.addRecipe(<midnight:nightshroom_hat> * 18, <thermalfoundation:fertilizer:2>, <midnight:nightshroom>, 18000, <midnight:nightshroom>, 50);
Insolator.addRecipe(<midnight:viridshroom_hat> * 18, <thermalfoundation:fertilizer:2>, <midnight:viridshroom>, 18000, <midnight:viridshroom>, 50);
Insolator.addRecipe(<midnight:dewshroom_hat> * 18, <thermalfoundation:fertilizer:2>, <midnight:dewshroom>, 18000, <midnight:dewshroom>, 50);

# ----------------
# Recipe removals
# ----------------
# Remove Thermal Foundation Servos/Coils/Tool casing
recipes.remove(<thermalfoundation:material:512>);
recipes.remove(<thermalfoundation:material:513>);
recipes.remove(<thermalfoundation:material:514>);
recipes.remove(<thermalfoundation:material:515>);
recipes.remove(<thermalfoundation:material:640>);
# Remove Frames
recipes.remove(<thermalfoundation:material:22>);
recipes.remove(<thermalfoundation:material:23>);
recipes.remove(<thermalexpansion:frame:128>);
# Remove the machine frame, later added by IE blueprint
recipes.remove(<thermalexpansion:frame>);
recipes.remove(<thermalexpansion:frame:64>);
# Remove Foundation Gears from crafting
recipes.remove(<thermalfoundation:material:26>);
recipes.remove(<thermalfoundation:material:27>);
# Remove acquatic entangler in favor of the industrial foregoing machine
recipes.remove(<thermalexpansion:device:4>);
# Remove bait recipes
recipes.remove(<thermalfoundation:bait>);
recipes.remove(<thermalfoundation:bait:1>);
recipes.remove(<thermalexpansion:cell>);
# Remove capacitor recipes
recipes.remove(<thermalexpansion:capacitor>);
recipes.remove(<thermalexpansion:capacitor:1>);
recipes.remove(<thermalexpansion:capacitor:2>);
recipes.remove(<thermalexpansion:capacitor:3>);
recipes.remove(<thermalexpansion:capacitor:4>);
# Remove blends (Signalum/Lumium/Enderium)
recipes.remove(<thermalfoundation:material:101>);
recipes.remove(<thermalfoundation:material:102>);
recipes.remove(<thermalfoundation:material:103>);

# ----------------
# Recipes
# ----------------
# Require a Blessed frame for all machines
recipes.replaceAllOccurences(<thermalexpansion:frame>, g_blessedMachineFrame);
# Require Blessed servos instead of servos
recipes.replaceAllOccurences(<thermalfoundation:material:512>, g_blessedServo);
# Require only the electrum based coil
recipes.replaceAllOccurences(<thermalfoundation:material:514>, <thermalfoundation:material:515>);
recipes.replaceAllOccurences(<thermalfoundation:material:513>, <thermalfoundation:material:515>);

# Change compactor recipe
recipes.replaceAllOccurences(<ore:ingotBronze>, <ore:ingotHOPGraphite>, <thermalexpansion:machine:5>);
recipes.replaceAllOccurences(<ore:gearCopper>, <ore:gearBronze>, <thermalexpansion:machine:5>);

# Change magma crucible recipe
recipes.replaceAllOccurences(<minecraft:nether_brick>, <ore:blockMagma>, <thermalexpansion:machine:6>);

# Retrievers
recipes.replaceAllOccurences(<ore:pearlEnderEye>, <ore:teleportationEye>, <thermaldynamics:retriever:*>);

# Remove Thermal Mediator
recipes.remove(<thermalexpansion:device:2>);


# Swap cryotheum to final kit tier, use blazing pyrotheum for signalum instead
recipes.replaceAllOccurences(<thermalfoundation:material:1025>, <thermalfoundation:material:1024>, <thermalfoundation:upgrade:2>);
recipes.replaceAllOccurences(<thermalfoundation:material:1024>, <thermalfoundation:material:1025>, <thermalfoundation:upgrade:3>);


# Induction smelter
recipes.remove(<thermalexpansion:machine:3>);
recipes.addShaped("te_induction_smelter", <thermalexpansion:machine:3>, [
    [<industrialforegoing:plastic>, <ore:gearInvar>, <industrialforegoing:plastic>],
    [<ore:sand>, g_blessedMachineFrame, <ore:sand>], 
    [<ore:gearCopper>, <thermalfoundation:material:515>, <ore:gearCopper>]
]);

recipes.addShaped("te_flux_capacitor", <thermalexpansion:capacitor>, [
    [null, <ore:blockCopper>, null],
    [<ore:blockLead>, g_blessedServo, <ore:blockLead>], 
    [<ore:blockRedstone>, <thermalfoundation:material:1024>, <ore:blockRedstone>]
]);

recipes.addShaped("te_flux_capacitor_hardened", <thermalexpansion:capacitor:1>, [
    [null, <ore:blockRedstone>, null],
    [<ore:blockInvar>, <thermalexpansion:capacitor>, <ore:blockInvar>], 
    [<ore:blockRedstone>, <ore:blockTin>, <ore:blockRedstone>]
]);

recipes.addShaped("te_flux_capacitor_reinforced", <thermalexpansion:capacitor:2>, [
    [null, <ore:blockRedstone>, null],
    [<ore:blockElectrum>, <thermalexpansion:capacitor:1>, <ore:blockElectrum>], 
    [<ore:blockRedstone>, <ore:blockGlassHardened>, <ore:blockRedstone>]
]);

recipes.addShaped("te_flux_capacitor_signalum", <thermalexpansion:capacitor:3>, [
    [null, <ore:blockRedstone>, null],
    [<ore:blockSignalum>, <thermalexpansion:capacitor:2>, <ore:blockSignalum>], 
    [<ore:blockRedstone>, <ore:dustCryotheum>, <ore:blockRedstone>]
]);

recipes.addShaped("te_flux_capacitor_enderium", <thermalexpansion:capacitor:4>, [
    [null, <ore:blockRedstone>, null],
    [<ore:blockEnderium>, <thermalexpansion:capacitor:3>, <ore:blockEnderium>], 
    [<ore:blockRedstone>, <rftools:powercell_advanced>, <ore:blockRedstone>]
]);




# Remove dynamo upgrades
val dynamoAugments = [
    <thermalexpansion:augment:512>,
    <thermalexpansion:augment:513>,
    <thermalexpansion:augment:514>,
    <thermalexpansion:augment:515>,
    <thermalexpansion:augment:576>,
    <thermalexpansion:augment:640>,
    <thermalexpansion:augment:656>,
    <thermalexpansion:augment:672>,
    <thermalexpansion:augment:673>,
    <thermalexpansion:augment:674>,
    <thermalexpansion:augment:688>,
    <thermalexpansion:augment:704>,
    <thermalexpansion:augment:720>
] as IItemStack[];

for augment in dynamoAugments {
    recipes.remove(augment);
}



# ----------------
# Induction Smelter EnderIO Fused quartz
# ----------------
addFusedHardenedRecipe(<enderio:block_fused_quartz>);


function addFusedHardenedRecipe(inputQuartz as IItemStack) {
    InductionSmelter.addRecipe(
        <thermalfoundation:glass> * 2,
        inputQuartz,
        <ore:dustCopper>.firstItem,
        6000,
        <thermalfoundation:material:865>,
        15
    );

    InductionSmelter.addRecipe(
        <thermalfoundation:glass:1> * 2,
        inputQuartz,
        <ore:dustTin>.firstItem,
        6000,
        <thermalfoundation:material:865>,
        15
    );

    InductionSmelter.addRecipe(
        <thermalfoundation:glass:2> * 2,
        inputQuartz,
        <ore:dustSilver>.firstItem,
        6000,
        <thermalfoundation:material:865>,
        15
    );

    InductionSmelter.addRecipe(
        <thermalfoundation:glass:3> * 2,
        inputQuartz,
        <ore:dustLead>.firstItem,
        6000,
        <thermalfoundation:material:865>,
        15
    );

    InductionSmelter.addRecipe(
        <thermalfoundation:glass:4> * 2,
        inputQuartz,
        <ore:dustAluminum>.firstItem,
        6000,
        <thermalfoundation:material:865>,
        15
    );

    InductionSmelter.addRecipe(
        <thermalfoundation:glass:5> * 2,
        inputQuartz,
        <ore:dustNickel>.firstItem,
        6000,
        <thermalfoundation:material:865>,
        15
    );

    InductionSmelter.addRecipe(
        <thermalfoundation:glass:6> * 2,
        inputQuartz,
        <ore:dustPlatinum>.firstItem,
        6000,
        <thermalfoundation:material:865>,
        15
    );

    InductionSmelter.addRecipe(
        <thermalfoundation:glass:7> * 2,
        inputQuartz,
        <ore:dustIridium>.firstItem,
        6000,
        <thermalfoundation:material:865>,
        15
    );

    InductionSmelter.addRecipe(
        <thermalfoundation:glass_alloy> * 2,
        inputQuartz,
        <ore:dustSteel>.firstItem,
        6000,
        <thermalfoundation:material:865>,
        15
    );

    InductionSmelter.addRecipe(
        <thermalfoundation:glass_alloy:1> * 2,
        inputQuartz,
        <ore:dustElectrum>.firstItem,
        6000,
        <thermalfoundation:material:865>,
        15
    );

    InductionSmelter.addRecipe(
        <thermalfoundation:glass_alloy:2> * 2,
        inputQuartz,
        <ore:dustInvar>.firstItem,
        6000,
        <thermalfoundation:material:865>,
        15
    );

    InductionSmelter.addRecipe(
        <thermalfoundation:glass_alloy:3> * 2,
        inputQuartz,
        <ore:dustBronze>.firstItem,
        6000,
        <thermalfoundation:material:865>,
        15
    );

    InductionSmelter.addRecipe(
        <thermalfoundation:glass_alloy:4> * 2,
        inputQuartz,
        <ore:dustConstantan>.firstItem,
        6000,
        <thermalfoundation:material:865>,
        15
    );

    InductionSmelter.addRecipe(
        <thermalfoundation:glass_alloy:5> * 2,
        inputQuartz,
        <ore:dustSignalum>.firstItem,
        6000,
        <thermalfoundation:material:865>,
        15
    );

    InductionSmelter.addRecipe(
        <thermalfoundation:glass_alloy:6> * 2,
        inputQuartz,
        <ore:dustLumium>.firstItem,
        6000,
        <thermalfoundation:material:865>,
        15
    );

    InductionSmelter.addRecipe(
        <thermalfoundation:glass_alloy:7> * 2,
        inputQuartz,
        <ore:dustEnderium>.firstItem,
        6000,
        <thermalfoundation:material:865>,
        15
    );
}