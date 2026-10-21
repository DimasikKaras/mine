#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;

var blockAsh = VanillaFactory.createBlock("block_ash", <blockmaterial:sand>);
blockAsh.setBlockHardness(0.8);
blockAsh.setBlockResistance(0.8);
blockAsh.setToolLevel(0);
blockAsh.setToolClass("shovel");
blockAsh.setBlockSoundType(<soundtype:sand>);
blockAsh.register();

var blockGoldenDust = VanillaFactory.createBlock("block_golden_dust", <blockmaterial:sand>);
blockGoldenDust.setBlockHardness(0.8);
blockGoldenDust.setBlockResistance(0.8);
blockGoldenDust.setToolLevel(0);
blockGoldenDust.setToolClass("shovel");
blockGoldenDust.setBlockSoundType(<soundtype:sand>);
blockGoldenDust.register();

var blockBlazePowder = VanillaFactory.createBlock("block_blaze_powder", <blockmaterial:sand>);
blockBlazePowder.setBlockHardness(0.8);
blockBlazePowder.setBlockResistance(0.8);
blockBlazePowder.setToolLevel(0);
blockBlazePowder.setToolClass("shovel");
blockBlazePowder.setBlockSoundType(<soundtype:sand>);
blockBlazePowder.register();

var blockSilverDust = VanillaFactory.createBlock("block_silver_dust", <blockmaterial:sand>);
blockSilverDust.setBlockHardness(0.8);
blockSilverDust.setBlockResistance(0.8);
blockSilverDust.setToolLevel(0);
blockSilverDust.setToolClass("shovel");
blockSilverDust.setBlockSoundType(<soundtype:sand>);
blockSilverDust.register();

var blockCharredTerracotta = VanillaFactory.createBlock("block_charred_terracotta", <blockmaterial:rock>);
blockCharredTerracotta.setBlockHardness(2.0);
blockCharredTerracotta.setBlockResistance(2.0);
blockCharredTerracotta.setToolLevel(0);
blockCharredTerracotta.setToolClass("pickaxe");
blockCharredTerracotta.setBlockSoundType(<soundtype:stone>);
blockCharredTerracotta.register();

var fauxSteel = VanillaFactory.createBlock("faux_steel", <blockmaterial:iron>);
fauxSteel.setBlockHardness(2.0);
fauxSteel.setBlockResistance(500.0);
fauxSteel.setToolLevel(2);
fauxSteel.setToolClass("pickaxe");
fauxSteel.setBlockSoundType(<soundtype:metal>);
fauxSteel.register();

var blessedPortalStone = VanillaFactory.createBlock("blessed_portal_stone", <blockmaterial:rock>);
blessedPortalStone.setBlockHardness(2.5);
blessedPortalStone.setBlockResistance(500.0);
blessedPortalStone.setToolLevel(3);
blessedPortalStone.setToolClass("pickaxe");
blessedPortalStone.setBlockSoundType(<soundtype:stone>);
blessedPortalStone.register();

var redCanyonDust = VanillaFactory.createBlock("red_canyon_dust", <blockmaterial:sand>);
redCanyonDust.setBlockHardness(0.8);
redCanyonDust.setBlockResistance(0.8);
redCanyonDust.setToolLevel(0);
redCanyonDust.setToolClass("shovel");
redCanyonDust.setBlockSoundType(<soundtype:sand>);
redCanyonDust.register();

var combatSimulationPortalBlock = VanillaFactory.createBlock("combat_simulation_portal_block", <blockmaterial:rock>);
combatSimulationPortalBlock.setBlockHardness(2.5);
combatSimulationPortalBlock.setBlockResistance(500.0);
combatSimulationPortalBlock.setToolLevel(3);
combatSimulationPortalBlock.setToolClass("pickaxe");
combatSimulationPortalBlock.setBlockSoundType(<soundtype:stone>);
combatSimulationPortalBlock.register();

var dimFiveBlock = VanillaFactory.createBlock("dim_five_block", <blockmaterial:rock>);
dimFiveBlock.setBlockHardness(2.5);
dimFiveBlock.setBlockResistance(500.0);
dimFiveBlock.setToolLevel(3);
dimFiveBlock.setToolClass("pickaxe");
dimFiveBlock.setBlockSoundType(<soundtype:stone>);
dimFiveBlock.register();

var mineralBed = VanillaFactory.createBlock("mineral_bed", <blockmaterial:rock>);
mineralBed.setBlockHardness(1.5);
mineralBed.setBlockResistance(2.0);
mineralBed.setToolLevel(2);
mineralBed.setToolClass("pickaxe");
mineralBed.setBlockSoundType(<soundtype:stone>);
mineralBed.register();

var mineralSoil = VanillaFactory.createBlock("mineral_soil", <blockmaterial:rock>);
mineralSoil.setBlockHardness(1.0);
mineralSoil.setBlockResistance(2.0);
mineralSoil.setToolLevel(2);
mineralSoil.setToolClass("pickaxe");
mineralSoil.setBlockSoundType(<soundtype:stone>);
mineralSoil.register();

var deepSubstrateOre = VanillaFactory.createBlock("deep_substrate_ore", <blockmaterial:rock>);
deepSubstrateOre.setBlockHardness(2.5);
deepSubstrateOre.setBlockResistance(500.0);
deepSubstrateOre.setToolLevel(3);
deepSubstrateOre.setToolClass("pickaxe");
deepSubstrateOre.setBlockSoundType(<soundtype:stone>);
deepSubstrateOre.register();

var transdimensionalOre = VanillaFactory.createBlock("transdimensional_ore", <blockmaterial:rock>);
transdimensionalOre.setBlockHardness(50.0);
transdimensionalOre.setBlockResistance(500.0);
transdimensionalOre.setToolLevel(3);
transdimensionalOre.setToolClass("pickaxe");
transdimensionalOre.setBlockSoundType(<soundtype:stone>);
transdimensionalOre.register();

var blockCalcium = VanillaFactory.createBlock("block_calcium", <blockmaterial:rock>);
blockCalcium.setBlockHardness(0.8);
blockCalcium.setBlockResistance(2.0);
blockCalcium.setToolLevel(0);
blockCalcium.setToolClass("pickaxe");
blockCalcium.setBlockSoundType(<soundtype:stone>);
blockCalcium.register();

var endgamePlatformUnlocker = VanillaFactory.createBlock("endgame_platform_unlocker", <blockmaterial:rock>);
endgamePlatformUnlocker.setBlockHardness(-1.0);
endgamePlatformUnlocker.setBlockResistance(500.0);
endgamePlatformUnlocker.setToolLevel(3);
endgamePlatformUnlocker.setToolClass("pickaxe");
endgamePlatformUnlocker.setBlockSoundType(<soundtype:stone>);
endgamePlatformUnlocker.register();

var escapePlatformUnlocker = VanillaFactory.createBlock("escape_platform_unlocker", <blockmaterial:rock>);
escapePlatformUnlocker.setBlockHardness(-1.0);
escapePlatformUnlocker.setBlockResistance(500.0);
escapePlatformUnlocker.setToolLevel(3);
escapePlatformUnlocker.setToolClass("pickaxe");
escapePlatformUnlocker.setBlockSoundType(<soundtype:stone>);
escapePlatformUnlocker.register();

var natureBlock = VanillaFactory.createBlock("nature_block", <blockmaterial:grass>);
natureBlock.setBlockHardness(50.0);
natureBlock.setBlockResistance(500.0);
natureBlock.setToolLevel(3);
natureBlock.setToolClass("shovel");
natureBlock.setBlockSoundType(<soundtype:ground>);
natureBlock.register();


var inertEndgameCasing = VanillaFactory.createBlock("inert_endgame_casing", <blockmaterial:rock>);
inertEndgameCasing.setBlockHardness(25.0);
inertEndgameCasing.setBlockResistance(500.0);
inertEndgameCasing.setToolLevel(3);
inertEndgameCasing.setToolClass("pickaxe");
inertEndgameCasing.setBlockSoundType(<soundtype:stone>);
inertEndgameCasing.setLightValue(15);
inertEndgameCasing.register();

var endgameMMCasing = VanillaFactory.createBlock("endgame_mm_casing", <blockmaterial:rock>);
endgameMMCasing.setBlockHardness(25.0);
endgameMMCasing.setBlockResistance(500.0);
endgameMMCasing.setToolLevel(3);
endgameMMCasing.setToolClass("pickaxe");
endgameMMCasing.setBlockSoundType(<soundtype:stone>);
endgameMMCasing.setLightValue(15);
endgameMMCasing.register();

var endgameMMCPU = VanillaFactory.createBlock("endgame_mm_cpu", <blockmaterial:rock>);
endgameMMCPU.setBlockHardness(25.0);
endgameMMCPU.setBlockResistance(500.0);
endgameMMCPU.setToolLevel(3);
endgameMMCPU.setToolClass("pickaxe");
endgameMMCPU.setBlockSoundType(<soundtype:stone>);
endgameMMCPU.setLightValue(15);
endgameMMCPU.register();

var endgameMMMechanical = VanillaFactory.createBlock("endgame_mm_mechanical", <blockmaterial:rock>);
endgameMMMechanical.setBlockHardness(25.0);
endgameMMMechanical.setBlockResistance(500.0);
endgameMMMechanical.setToolLevel(3);
endgameMMMechanical.setToolClass("pickaxe");
endgameMMMechanical.setBlockSoundType(<soundtype:stone>);
endgameMMMechanical.setLightValue(15);
endgameMMMechanical.register();

var endgameMMMCore = VanillaFactory.createBlock("endgame_mm_core", <blockmaterial:rock>);
endgameMMMCore.setBlockHardness(-1.0);
endgameMMMCore.setBlockResistance(500.0);
endgameMMMCore.setToolLevel(3);
endgameMMMCore.setToolClass("pickaxe");
endgameMMMCore.setBlockSoundType(<soundtype:stone>);
endgameMMMCore.setLightValue(15);
endgameMMMCore.register();

var crystallizedSoul = VanillaFactory.createBlock("crystallized_soul", <blockmaterial:ice>);
crystallizedSoul.setBlockHardness(15.0);
crystallizedSoul.setBlockResistance(500.0);
crystallizedSoul.setToolLevel(3);
crystallizedSoul.setToolClass("pickaxe");
crystallizedSoul.setBlockSoundType(<soundtype:glass>);
crystallizedSoul.register();

var simulationEscapePortalBlock = VanillaFactory.createBlock("escape_portal_block", <blockmaterial:rock>);
simulationEscapePortalBlock.setBlockHardness(-1.0);
simulationEscapePortalBlock.setBlockResistance(500.0);
simulationEscapePortalBlock.setToolLevel(3);
simulationEscapePortalBlock.setToolClass("pickaxe");
simulationEscapePortalBlock.setBlockSoundType(<soundtype:stone>);
simulationEscapePortalBlock.setLightValue(15);
simulationEscapePortalBlock.register();