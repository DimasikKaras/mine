import scripts.helpers;

# ----------------
# Recipes
# ----------------
recipes.remove(<buildinggadgets:buildingtool>);
recipes.remove(<buildinggadgets:exchangertool>);
recipes.remove(<buildinggadgets:copypastetool>);

recipes.addShapeless("bg_exchangertool", <buildinggadgets:exchangertool>, [<astralsorcery:itemexchangewand>, <buildinggadgets:buildingtool>]);
recipes.addShapeless("bg_copypaste", <buildinggadgets:copypastetool>, [<ore:paper>, <buildinggadgets:buildingtool>]);

recipes.addShaped("bg_buildingtool", <buildinggadgets:buildingtool>, [
    [<tconstruct:large_plate>.withTag({Material: "iron"}), <ore:blockEmerald>, <tconstruct:large_plate>.withTag({Material: "iron"})],
    [<rftools:infused_diamond>, <thermalexpansion:capacitor>, <rftools:infused_diamond>],
    [<tconstruct:large_plate>.withTag({Material: "iron"}), <ore:gearSanguineMetal>, <tconstruct:large_plate>.withTag({Material: "iron"})]
]);
