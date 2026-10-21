import loottweaker.LootTweaker;
import loottweaker.LootTable;
import loottweaker.LootPool; 
import loottweaker.Conditions;
import loottweaker.Functions;
import scripts.helpers;

# Pigs drop pigskin
var pigTable = LootTweaker.getTable("minecraft:entities/pig");
var pigskinPool = pigTable.addPool("pigskin", 1, 1, 0, 0);
pigskinPool.addItemEntry(<contenttweaker:pig_skin>, 1, 1, [
    Functions.setCount(0, 2),
    Functions.lootingEnchantBonus(0, 1, 0)
], []);

helpers.addAtlasTip(<contenttweaker:pig_skin>, [
    format.yellow("Obtained by slaying Pigs"),
    format.yellow("Looting increases the number of pigskin dropped")
]);

var ravenTable = LootTweaker.getTable("varodd:entities/raven");
var ravenMainPool = ravenTable.addPool("main", 1, 1, 0, 0);
ravenMainPool.addItemEntry(<contenttweaker:blood_raven_feather>, 1, 1, [
    Functions.setCount(1, 2),
    Functions.lootingEnchantBonus(2, 2, 0)
], []);

helpers.addAtlasTip(<contenttweaker:blood_raven_feather>, [
    format.yellow("Obtained by slaying Blood Ravens"),
    format.yellow("Looting greatly increases the number of feathers dropped")
]);

var trollTable = LootTweaker.getTable("varodd:entities/troll");
var trollMainPool = trollTable.addPool("main", 1, 1, 0, 0);
trollMainPool.addItemEntry(<contenttweaker:troll_eye>, 1, 1, [
    Functions.setCount(1, 1),
    Functions.lootingEnchantBonus(1, 2, 0)
], []);

helpers.addAtlasTip(<contenttweaker:troll_eye>, [
    format.yellow("Obtained by slaying Trolls"),
    format.yellow("Looting greatly increases the number of eyes dropped")
]);


# Scorpions drop venom glands
<entity:varodd:scorpion_giant>.addDrop(
    <contenttweaker:scorpion_venom_gland> % 60, 1, 2
);

<entity:varodd:scorpion>.addDrop(
    <contenttweaker:scorpion_venom_gland> % 60, 1, 2
);

helpers.addAtlasTip(<contenttweaker:scorpion_venom_gland>, [
    format.yellow("Obtained by slaying Scorpions")
]);

# Midnight additions
var rifterTable = LootTweaker.getTable("midnight:rifter");
var rifterMainPool = rifterTable.addPool("main", 1, 1, 0, 0);
rifterMainPool.addItemEntry(<contenttweaker:veiled_rifter_eye>, 1, 1, [
    Functions.setCount(1, 1),
    Functions.lootingEnchantBonus(1, 2, 0)
], []);

helpers.addAtlasTip(<contenttweaker:veiled_rifter_eye>, [
    format.lightPurple("Obtained by slaying Rifters")
]);

var novaTable = LootTweaker.getTable("midnight:nova");
var novaMainPool = novaTable.addPool("main", 1, 1, 0, 0);
novaMainPool.addItemEntry(<midnight:geode>, 1, 1, [
    Functions.setCount(2, 3),
    Functions.lootingEnchantBonus(2, 3, 0)
], []);


helpers.addAtlasTip(<contenttweaker:crystal_bug_larvae>, [
    format.yellow("Dreams of becoming something bigger"),
    format.yellow("Obtained by slaying Crystal Bugs")
]);

var bugTable = LootTweaker.getTable("midnight:crystal_bug");
var bugMainPool = bugTable.addPool("main", 1, 1, 0, 0);
bugMainPool.addItemEntry(<contenttweaker:crystal_bug_larvae>, 1, 1, [
    Functions.setCount(1, 1)
], []);
