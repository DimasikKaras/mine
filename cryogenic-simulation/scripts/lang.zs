import crafttweaker.game.IGame;

# ----------------
# Renaming
# ----------------
#priority 998

<minecraft:clay>.displayName = "Wet Clay";
<minecraft:clay_ball>.displayName = "Wet Clay";
<infinitewatersource:infinitewatersource>.displayName = "Water Supply Gadget";
<industrialforegoing:dryrubber>.displayName = "Wet Rubber";
<industrialforegoing:tinydryrubber>.displayName = "Tiny Wet Rubber";
<industrialforegoing:plastic>.displayName = "Brittle Plastic";
<tconstruct:slime_congealed:3>.displayName = "Coagulated Blood Block";
<appliedenergistics2:material:20>.displayName = "Printed Circuit Base";
# Rename nether quartz since there is no nether.
<minecraft:quartz>.displayName = "Quartz";
# Rename netherrack to Corroded Rock
<minecraft:netherrack>.displayName = "Corroded Rock";
<appliedenergistics2:material:3>.displayName = "Quartz Dust";
<minecraft:quartz_ore>.displayName = "Quartz Ore";
<minecraft:nether_star>.displayName = "Infused Radiant Star";
# AS Pristine Glass Lens
<astralsorcery:itemcraftingcomponent:3>.displayName = "Pristine Glass Lens";
# IF Laser lens -> Pristine Ocular
<industrialforegoing:laser_lens>.displayName = "Pristine Ocular Lens";
# Melon slices
<minecraft:melon>.displayName = "Melon Slice";
# Dim5 portal component
<mekanism:teleportationcore>.displayName = "Highly Irradiated Magical Core";
# Mekanism frame rename
<mekanism:basicblock:8>.displayName = "Superheated Frame";

# Rename MM stuff
<modularmachinery:blockfluidinputhatch:7>.displayName = "Fluid Input Hatch";
<modularmachinery:blockfluidoutputhatch:7>.displayName = "Fluid Output Hatch";
<modularmachinery:blockinputbus:6>.displayName = "Item Input Hatch";
<modularmachinery:blockoutputbus:6>.displayName = "Item Output Hatch";
<modularmachinery:blockenergyinputhatch:6>.displayName = "Energy Input Hatch";
<modularmachinery:blockenergyoutputhatch:6>.displayName = "Energy Output Hatch";

# Enderio infinity rod not made of infinity
<enderio:item_material:71>.displayName = "Dark Steel Rod";
# Enticing crystal -> Compacted Crystal
<enderio:item_material:17>.displayName = "Compacted Crystal Chunk";

# Rename spawn items, for example this would produce "Incubated Slime" instead of "Spawn Slime"
<minecraft:spawn_egg>.displayName = "Incubated";

# Entities
game.setLocalization("entity.varodd:raven.name", "Blood Raven");
game.setLocalization("entity.varodd:troll.name", "Troll Seer");

# Exnihilo
game.setLocalization("tile.witchwater.name", "Witchwater");
<exnihilocreatio:block_dust>.displayName = "Fine Dust";

# Contenttweaker fluids
game.setLocalization("fluid.troll_eye_goop", "Troll Eye Goop");
game.setLocalization("fluid.liquid_blaze", "Liquid Blaze");
game.setLocalization("fluid.blessed_life_essence", "Blessed Life Essence");
game.setLocalization("fluid.fish_oil", "Fish Oil");
game.setLocalization("fluid.ammonium_nitrate", "Ammonium Nitrate Solution");
game.setLocalization("fluid.deep_substrate_water", "Deep Substrate Water");
game.setLocalization("fluid.almost_molten_sand", "Semi-Liquified Sand Goop");
game.setLocalization("fluid.softened_quicklime", "Softened Quicklime");
game.setLocalization("fluid.pure_calcium", "Pure Calcium");
game.setLocalization("fluid.nutrient_wyrm_milk", "Hypernutritious Wyrm Milk");
game.setLocalization("fluid.subterranean_nutrient_distillation", "Subterranean Nutrient Distillation");
game.setLocalization("fluid.shimmering_crystalline", "Shimmering Crystalline");
game.setLocalization("fluid.superheated_miasma", "Molten Superheated Miasma");
game.setLocalization("fluid.silica", "Molten Silica");
game.setLocalization("fluid.molten_salt", "Molten Salt");
game.setLocalization("fluid.molten_salt_plutonium", "Molten Salt Plutonium Fuel");
game.setLocalization("fluid.molten_nuclear_waste", "Nuclear Waste");
game.setLocalization("fluid.star_blood", "Irradiated Star Blood");
game.setLocalization("fluid.primal_nature", "Primal Nature");
game.setLocalization("fluid.grove_mana", "Groveblood");
game.setLocalization("fluid.molten_void", "Molten Void Metal");
game.setLocalization("fluid.growtein", "Growtein");

# Contenttweaker items
game.setLocalization("item.contenttweaker.stone_shears.name", "Stone Shears");
game.setLocalization("item.contenttweaker.pig_skin.name", "Pigskin");
game.setLocalization("item.contenttweaker.blood_raven_feather.name", "Blood Raven Feather");
game.setLocalization("item.contenttweaker.charred_feather.name", "Charred Feather Pile");
game.setLocalization("item.contenttweaker.troll_eye.name", "Troll Seer Eye");
game.setLocalization("item.contenttweaker.seared_plate.name", "Cracked Seared Plate");
game.setLocalization("item.contenttweaker.sandy_bottle.name", "Sandy Bottle Compound");
game.setLocalization("item.contenttweaker.soaked_fabric.name", "Soaked Tough Fabric");
game.setLocalization("item.contenttweaker.bloody_mud.name", "Bloody Mud");
game.setLocalization("item.contenttweaker.lubricated_gear.name", "Lubricated Gear");
game.setLocalization("item.contenttweaker.energetic_compound.name", "Energetic Compound");
game.setLocalization("item.contenttweaker.scorpion_venom_gland.name", "Scorpion Venom Gland");
game.setLocalization("item.contenttweaker.polymer_binding_agent.name", "Polymer Binding Agent");
game.setLocalization("item.contenttweaker.witch_dust.name", "Sinister Witch Dust");
game.setLocalization("item.contenttweaker.polymer_base.name", "Polymer Base");
game.setLocalization("item.contenttweaker.pupa.name", "Ascendant Wyrm Pupa");
game.setLocalization("item.contenttweaker.tunneling_world_wyrm.name", "Reanimated World Wyrm");
game.setLocalization("item.contenttweaker.venerated_tunneling_world_wyrm.name", "Venerated World Wyrm");
game.setLocalization("item.contenttweaker.bloodmoon_star.name", "Star of the Blood Moon");
game.setLocalization("item.contenttweaker.twinkling_star.name", "Twinkling Star");
game.setLocalization("item.contenttweaker.veiled_rifter_eye.name", "Veiled Rifter Eye");
game.setLocalization("item.contenttweaker.root_of_all_evil.name", "Root of All Evil");
game.setLocalization("item.contenttweaker.midnight_idol.name", "Midnight Idol");
game.setLocalization("item.contenttweaker.arid_waste_idol.name", "Arid Waste Idol");
game.setLocalization("item.contenttweaker.lunar_plane_idol.name", "Lunar Plane Idol");
game.setLocalization("item.contenttweaker.bones_of_the_damned.name", "Bones of the Damned");
game.setLocalization("item.contenttweaker.foliated_kalthrite.name", "Foliated Kalthrite");
game.setLocalization("item.contenttweaker.crystal_bug_larvae.name", "Crystal Bug Larvae");
game.setLocalization("item.contenttweaker.animated_bone.name", "Life Essence Marrow");
game.setLocalization("item.contenttweaker.sacrificial_nightstag.name", "Sacrificial Nightstag");
game.setLocalization("item.contenttweaker.sacrifice_clump.name", "Sacrifice Remains");
game.setLocalization("item.contenttweaker.dust_infused_mana.name", "Mana Diamond Dust");
game.setLocalization("item.contenttweaker.dust_rouxe.name", "Fine Rouxecrystal Dust");
game.setLocalization("item.contenttweaker.dust_rouxe_enderium.name", "Alien Subterranean Dust");
game.setLocalization("item.contenttweaker.dust_bloomcrystal.name", "Fine Bloomcrystal Dust");
game.setLocalization("item.contenttweaker.dust_kalthrite.name", "Fine Kalthrite Coating");
game.setLocalization("item.contenttweaker.gear_life_mana.name", "Magical Gear of Mana and Life");
game.setLocalization("item.contenttweaker.gear_stellar.name", "Irradiated Gear of Mana and Life");
game.setLocalization("item.contenttweaker.nano_capacitor.name", "Irradiated Nano Capacitor");
game.setLocalization("item.contenttweaker.nano_pcb.name", "Irradiated Nano PCB");
game.setLocalization("item.contenttweaker.void_crystal.name", "Void Crystal");
game.setLocalization("item.contenttweaker.neutronium_ingot.name", "Irradiated Neutronium Ingot");
game.setLocalization("item.contenttweaker.rod_packed.name", "Empty Radiation Container");
game.setLocalization("item.contenttweaker.nature_essence.name", "Nature Essence");
game.setLocalization("item.contenttweaker.nuclear_waste_rod.name", "Filled Radiation Container (Nuclear Waste)");
game.setLocalization("item.contenttweaker.mastery_token_sim_one.name", "Mastery Token: Contained Ecosystems");
game.setLocalization("item.contenttweaker.mastery_token_sim_two.name", "Mastery Token: Lunar Plane");
game.setLocalization("item.contenttweaker.mastery_token_sim_three.name", "Mastery Token: The Arid Waste");
game.setLocalization("item.contenttweaker.mastery_token_sim_four.name", "Mastery Token: The Combat Simulation");
game.setLocalization("item.contenttweaker.mastery_token_sim_five.name", "Mastery Token: Mineral Quarry Simulation");
game.setLocalization("item.contenttweaker.mastery_token_final.name", "Finalized Mastery Token");
game.setLocalization("item.contenttweaker.endgame_platform_assembler.name", "NAU-01 Nanobot Kit");
game.setLocalization("item.contenttweaker.assembly_dust.name", "Assembly Dust");
game.setLocalization("item.contenttweaker.nau_two_use_item.name", "NAU-02 Nanobot Kit");
game.setLocalization("item.contenttweaker.atlas_project_item.name", "Black Hole Containment Vessel");
game.setLocalization("item.contenttweaker.soul_cluster.name", "Soul Cluster");
game.setLocalization("item.contenttweaker.soul_crystal.name", "Soul Crystal");
game.setLocalization("item.contenttweaker.celestial_soul_tether.name", "Celestial Soul Tether");
game.setLocalization("item.contenttweaker.pack_complete_unlocker.name", "Escape Portal");

# Contenttweaker blocks
game.setLocalization("tile.contenttweaker.block_ash.name", "Ash");
game.setLocalization("tile.contenttweaker.block_golden_dust.name", "Golden Residue Dust");
game.setLocalization("tile.contenttweaker.block_silver_dust.name", "Silver Residue Dust");
game.setLocalization("tile.contenttweaker.block_blaze_powder.name", "Blaze Powder Block");
game.setLocalization("tile.contenttweaker.block_charred_terracotta.name", "Charred Terracotta");
game.setLocalization("tile.contenttweaker.faux_steel.name", "Reinforced Steel");
game.setLocalization("tile.contenttweaker.blessed_portal_stone.name", "Blessed Portal Stone");
game.setLocalization("tile.contenttweaker.red_canyon_dust.name", "Red Canyon Dust");
game.setLocalization("tile.contenttweaker.combat_simulation_portal_block.name", "Combat Simulation Portal Block");
game.setLocalization("tile.contenttweaker.dim_five_block.name", "Radioactive Magical Portal Block");
game.setLocalization("tile.contenttweaker.mineral_bed.name", "Mineral Bed");
game.setLocalization("tile.contenttweaker.mineral_soil.name", "Moist Mineral Soil");
game.setLocalization("tile.contenttweaker.deep_substrate_ore.name", "Deep Substrate Ore");
game.setLocalization("tile.contenttweaker.transdimensional_ore.name", "Starless Void Ore");
game.setLocalization("tile.contenttweaker.crystallized_soul.name", "Crystallized Human Souls");
game.setLocalization("tile.contenttweaker.block_calcium.name", "Calcified Mineral Soil");
game.setLocalization("tile.contenttweaker.endgame_platform_unlocker.name", "Nanobot Assembling Unit NAU-01");
game.setLocalization("tile.contenttweaker.escape_platform_unlocker.name", "Nanobot Assembling Unit NAU-02");
game.setLocalization("tile.contenttweaker.escape_portal_block.name", "Escape Portal Block");
game.setLocalization("tile.contenttweaker.nature_block.name", "Dense Chlorophyll Sap");
game.setLocalization("tile.contenttweaker.endgame_mm_core.name", "Star Engine Cornerstone Casing");
game.setLocalization("tile.contenttweaker.endgame_mm_cpu.name", "Star Engine Processing Unit");
game.setLocalization("tile.contenttweaker.endgame_mm_mechanical.name", "Star Engine Mechanical Casing");
game.setLocalization("tile.contenttweaker.endgame_mm_casing.name", "Star Engine Casing");
game.setLocalization("tile.contenttweaker.inert_endgame_casing.name", "Star Engine Casing (Inert)");

# Midnight fluid localization
game.setLocalization("tile.midnight.dark_water.name", "Dark Water");

# Spore Mana Dust
<thermalfoundation:material:1028>.displayName = "Spore Mana Dust";

# Contenttweaker Enchantments
game.setLocalization("enchantment.blessed", "Blessed");
game.setLocalization("enchantment.worthy", "Worthy of Ascension");
game.setLocalization("enchantment.subduedsoul", "Subdued Souls");
game.setLocalization("enchantment.anointedflesh", "Anointed Flesh");