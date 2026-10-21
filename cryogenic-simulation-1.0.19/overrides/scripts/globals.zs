import crafttweaker.item.IItemStack;

#priority 998

global g_blessedMachineFrame as IItemStack = <thermalexpansion:frame>.withTag({ench: [{lvl: 1 as short, id: 11 as short}], madeInChina: true});
global g_blessedServo as IItemStack = <thermalfoundation:material:512>.withTag({ench: [{lvl: 1 as short, id: 11 as short}], madeInChina: true});
global g_blessedConnector as IItemStack = <immersiveengineering:connector:4>.withTag({ench: [{lvl: 1 as short, id: 11 as short}], madeInChina: true});

global g_blessedManaLifeGear as IItemStack = <contenttweaker:gear_life_mana>.withTag({ench: [{lvl: 1 as short, id: 11 as short}], madeInChina: true});



global g_worthyLarvae as IItemStack = <contenttweaker:crystal_bug_larvae>.withTag({ench: [{lvl: 1 as short, id: 12 as short}], madeInChina: true});

global g_soulClusterSubdued as IItemStack = <contenttweaker:soul_cluster>.withTag({ench: [{lvl: 1 as short, id: 13 as short}], madeInChina: true});

global g_anointedFlesh as IItemStack = <contenttweaker:sacrifice_clump>.withTag({ench: [{lvl: 1 as short, id: 14 as short}], madeInChina: true});

global g_treeCutter3000 as IItemStack = <stevescarts:modularcart>.withTag({Data2: 100 as byte, Modules: [81, 70, 80, 2, 66, 63, 63] as byte[] as byte[], CartVersion: 2 as byte, display: {Name: "Treecutter 3000"}});
