#loader contenttweaker

import mods.contenttweaker.enchantments.EnchantmentBuilder;
import crafttweaker.enchantments.IEnchantmentDefinition;


var blessed = EnchantmentBuilder.create("blessed");
blessed.allowedOnBooks = false;
blessed.setDomain("contenttweaker");
blessed.setRarityVeryRare();
blessed.setTreasure(false);
blessed.register();

var worthy = EnchantmentBuilder.create("worthy");
worthy.allowedOnBooks = false;
worthy.setDomain("contenttweaker");
worthy.setRarityVeryRare();
worthy.setTreasure(false);
worthy.register();

var subduedSoul = EnchantmentBuilder.create("subduedsoul");
subduedSoul.allowedOnBooks = false;
subduedSoul.setDomain("contenttweaker");
subduedSoul.setRarityVeryRare();
subduedSoul.setTreasure(false);
subduedSoul.register();

var anointedFlesh = EnchantmentBuilder.create("anointedflesh");
anointedFlesh.allowedOnBooks = false;
anointedFlesh.setDomain("contenttweaker");
anointedFlesh.setRarityVeryRare();
anointedFlesh.setTreasure(false);
anointedFlesh.register();
