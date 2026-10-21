import mods.inworldcrafting.FluidToItem;
import mods.inworldcrafting.FluidToFluid;
import mods.inworldcrafting.ExplosionCrafting;



# --------------
# Fluid to item
# --------------
# Drop Fir planks in creosote -> Treated wood
FluidToItem.transform(<immersiveengineering:treated_wood> * 64, <liquid:creosote>, [<traverse:fir_planks> * 64], true);

# Drop gravel in creosote -> Grout
FluidToItem.transform(<tconstruct:soil> * 64, <liquid:creosote>, [<ore:gravel> * 64], true);

# Drop fabric in creosote -> Soaked Fabric
FluidToItem.transform(<contenttweaker:soaked_fabric> * 8, <liquid:creosote>, [<immersiveengineering:material:5> * 8], true);

# Drop any Crafting Table in Liquid Starlight -> Luminous Crafting Table
FluidToItem.transform(<astralsorcery:blockaltar>, <liquid:astralsorcery.liquidstarlight>, [<ore:workbench>], true);

# Drop Red rock cobblestone into acid to make Netherrack
FluidToItem.transform(<ore:netherrack>.firstItem, <liquid:etchacid>, [<traverse:red_rock_cobblestone>]);

# Drop regular mycelium in dark water to get midnight mycelium
FluidToItem.transform(<midnight:midnight_mycelium> * 16, <liquid:dark_water>, [<minecraft:mycelium> * 16], true);

# -------------------
# Explosion Crafting
# -------------------
# Explode Certus Quartz Ore -> Certus Quartz Crystal
ExplosionCrafting.explodeBlockRecipe(<appliedenergistics2:material> * 4, <appliedenergistics2:quartz_ore>, 100);

# Explode Charged Certus Quartz Ore -> Charged Certus Quartz Crystal
ExplosionCrafting.explodeBlockRecipe(<appliedenergistics2:material:1> * 4, <appliedenergistics2:charged_quartz_ore>, 100);
