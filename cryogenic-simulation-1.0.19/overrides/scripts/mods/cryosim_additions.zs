import scripts.helpers;

# Disable blood logs
furnace.setFuel(<cryosimadditions:blood_resin_log>, 0);


# ----------------
# Recipes
# ----------------

# Leaves to red dye
recipes.addShapeless("csa_red_dye", <minecraft:dye:1>, [<cryosimadditions:blood_leaves>, <cryosimadditions:blood_leaves>]);