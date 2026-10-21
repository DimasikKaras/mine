import crafttweaker.game.IGame;

# ----------------
# Русская локализация сборки Cryogenic Simulation
# Переименования предметов, блоков и жидкостей
# ----------------

#priority 998

import crafttweaker.game.IGame;

# ----------------
# Renaming
# ----------------
#priority 998

<minecraft:clay>.displayName = "Мокрая глина";
<minecraft:clay_ball>.displayName = "Мокрая глина";
<infinitewatersource:infinitewatersource>.displayName = "Устройство подачи воды";
<industrialforegoing:dryrubber>.displayName = "Сырая резина";
<industrialforegoing:tinydryrubber>.displayName = "Кусочек сырой резины";
<industrialforegoing:plastic>.displayName = "Хрупкий пластик";
<tconstruct:slime_congealed:3>.displayName = "Блок свернувшейся крови";
<appliedenergistics2:material:20>.displayName = "Основа печатной платы";
# Rename nether quartz since there is no nether.
<minecraft:quartz>.displayName = "Кварц";
# Rename netherrack to Corroded Rock
<minecraft:netherrack>.displayName = "Разъеденный камень";
<appliedenergistics2:material:3>.displayName = "Кварцевая пыль";
<minecraft:quartz_ore>.displayName = "Кварцевая руда";
<minecraft:nether_star>.displayName = "Наполненная сияющая звезда";
# AS Pristine Glass Lens
<astralsorcery:itemcraftingcomponent:3>.displayName = "Чистая стеклянная линза";
# IF Laser lens -> Pristine Ocular
<industrialforegoing:laser_lens>.displayName = "Чистая окулярная линза";
# Melon slices
<minecraft:melon>.displayName = "Ломтик арбуза";
# Dim5 portal component
<mekanism:teleportationcore>.displayName = "Высокооблученное магическое ядро";
# Mekanism frame rename
<mekanism:basicblock:8>.displayName = "Сверхнагретый корпус";

# Rename MM stuff
<modularmachinery:blockfluidinputhatch:7>.displayName = "Люк подачи жидкости";
<modularmachinery:blockfluidoutputhatch:7>.displayName = "Люк слива жидкости";
<modularmachinery:blockinputbus:6>.displayName = "Люк загрузки предметов";
<modularmachinery:blockoutputbus:6>.displayName = "Люк выгрузки предметов";
<modularmachinery:blockenergyinputhatch:6>.displayName = "Люк ввода энергии";
<modularmachinery:blockenergyoutputhatch:6>.displayName = "Люк вывода энергии";

# Enderio infinity rod not made of infinity
<enderio:item_material:71>.displayName = "Стержень из темной стали";
# Enticing crystal -> Compacted Crystal
<enderio:item_material:17>.displayName = "Кусок уплотненного кристалла";

# Rename spawn items, for example this would produce "Incubated Slime" instead of "Spawn Slime"
<minecraft:spawn_egg>.displayName = "Инкубированное";

# Entities
game.setLocalization("entity.varodd:raven.name", "Кровавый ворон");
game.setLocalization("entity.varodd:troll.name", "Тролль-провидец");

# Exnihilo
game.setLocalization("tile.witchwater.name", "Ведьмина вода");
<exnihilocreatio:block_dust>.displayName = "Мелкая пыль";

# Contenttweaker fluids
game.setLocalization("fluid.troll_eye_goop", "Жижа глаза тролля");
game.setLocalization("fluid.liquid_blaze", "Жидкий всполох");
game.setLocalization("fluid.blessed_life_essence", "Благословенная жизненная эссенция");
game.setLocalization("fluid.fish_oil", "Рыбий жир");
game.setLocalization("fluid.ammonium_nitrate", "Раствор нитрата аммония");
game.setLocalization("fluid.deep_substrate_water", "Глубоководный субстрат");
game.setLocalization("fluid.almost_molten_sand", "Полурасплавленная песчаная масса");
game.setLocalization("fluid.softened_quicklime", "Размягченная негашеная известь");
game.setLocalization("fluid.pure_calcium", "Чистый кальций");
game.setLocalization("fluid.nutrient_wyrm_milk", "Сверхпитательное молоко червя");
game.setLocalization("fluid.subterranean_nutrient_distillation", "Подземный питательный дистиллят");
game.setLocalization("fluid.shimmering_crystalline", "Мерцающий кристаллин");
game.setLocalization("fluid.superheated_miasma", "Сверхнагретая расплавленная миазма");
game.setLocalization("fluid.silica", "Расплавленный диоксид кремния");
game.setLocalization("fluid.molten_salt", "Расплавленная соль");
game.setLocalization("fluid.molten_salt_plutonium", "Плутониевое топливо на расплавленных солях");
game.setLocalization("fluid.molten_nuclear_waste", "Ядерные отходы");
game.setLocalization("fluid.star_blood", "Облученная звездная кровь");
game.setLocalization("fluid.primal_nature", "Первозданная природа");
game.setLocalization("fluid.grove_mana", "Кровь рощи");
game.setLocalization("fluid.molten_void", "Расплавленный металл пустоты");
game.setLocalization("fluid.growtein", "Гроутеин");

# Contenttweaker items
game.setLocalization("item.contenttweaker.stone_shears.name", "Каменные ножницы");
game.setLocalization("item.contenttweaker.pig_skin.name", "Свиная кожа");
game.setLocalization("item.contenttweaker.blood_raven_feather.name", "Перо кровавого ворона");
game.setLocalization("item.contenttweaker.charred_feather.name", "Кучка обугленных перьев");
game.setLocalization("item.contenttweaker.troll_eye.name", "Глаз тролля-провидца");
game.setLocalization("item.contenttweaker.seared_plate.name", "Треснувшая обожженная пластина");
game.setLocalization("item.contenttweaker.sandy_bottle.name", "Песчаная смесь для бутылей");
game.setLocalization("item.contenttweaker.soaked_fabric.name", "Пропитанная прочная ткань");
game.setLocalization("item.contenttweaker.bloody_mud.name", "Кровавая грязь");
game.setLocalization("item.contenttweaker.lubricated_gear.name", "Смазанная шестерня");
game.setLocalization("item.contenttweaker.energetic_compound.name", "Энергетический компаунд");
game.setLocalization("item.contenttweaker.scorpion_venom_gland.name", "Ядовитая железа скорпиона");
game.setLocalization("item.contenttweaker.polymer_binding_agent.name", "Полимерное связующее вещество");
game.setLocalization("item.contenttweaker.witch_dust.name", "Зловещая ведьмина пыль");
game.setLocalization("item.contenttweaker.polymer_base.name", "Полимерная основа");
game.setLocalization("item.contenttweaker.pupa.name", "Куколка возвышенного червя");
game.setLocalization("item.contenttweaker.tunneling_world_wyrm.name", "Реанимированный мировой червь");
game.setLocalization("item.contenttweaker.venerated_tunneling_world_wyrm.name", "Почитаемый мировой червь");
game.setLocalization("item.contenttweaker.bloodmoon_star.name", "Звезда Кровавой Луны");
game.setLocalization("item.contenttweaker.twinkling_star.name", "Мерцающая звезда");
game.setLocalization("item.contenttweaker.veiled_rifter_eye.name", "Завуалированный глаз разломника");
game.setLocalization("item.contenttweaker.root_of_all_evil.name", "Корень всего зла");
game.setLocalization("item.contenttweaker.midnight_idol.name", "Идол Полночи");
game.setLocalization("item.contenttweaker.arid_waste_idol.name", "Идол Засушливых пустошей");
game.setLocalization("item.contenttweaker.lunar_plane_idol.name", "Идол Лунной плоскости");
game.setLocalization("item.contenttweaker.bones_of_the_damned.name", "Кости проклятых");
game.setLocalization("item.contenttweaker.foliated_kalthrite.name", "Слоистый кальтрит");
game.setLocalization("item.contenttweaker.crystal_bug_larvae.name", "Личинки хрустального жука");
game.setLocalization("item.contenttweaker.animated_bone.name", "Костный мозг жизненной эссенции");
game.setLocalization("item.contenttweaker.sacrificial_nightstag.name", "Жертвенный ночной олень");
game.setLocalization("item.contenttweaker.sacrifice_clump.name", "Жертвенные останки");
game.setLocalization("item.contenttweaker.dust_infused_mana.name", "Алмазная мана-пыль");
game.setLocalization("item.contenttweaker.dust_rouxe.name", "Тонкая пыль рукс-кристалла");
game.setLocalization("item.contenttweaker.dust_rouxe_enderium.name", "Инопланетная подземная пыль");
game.setLocalization("item.contenttweaker.dust_bloomcrystal.name", "Тонкая пыль блумкристалла");
game.setLocalization("item.contenttweaker.dust_kalthrite.name", "Тонкое покрытие из кальтрита");
game.setLocalization("item.contenttweaker.gear_life_mana.name", "Магическая шестерня маны и жизни");
game.setLocalization("item.contenttweaker.gear_stellar.name", "Облученная шестерня маны и жизни");
game.setLocalization("item.contenttweaker.nano_capacitor.name", "Облученный наноконденсатор");
game.setLocalization("item.contenttweaker.nano_pcb.name", "Облученная наноплата");
game.setLocalization("item.contenttweaker.void_crystal.name", "Кристалл пустоты");
game.setLocalization("item.contenttweaker.neutronium_ingot.name", "Облученный нейтрониевый слиток");
game.setLocalization("item.contenttweaker.rod_packed.name", "Пустой контейнер радиации");
game.setLocalization("item.contenttweaker.nature_essence.name", "Эссенция природы");
game.setLocalization("item.contenttweaker.nuclear_waste_rod.name", "Заполненный контейнер радиации (Ядерные отходы)");
game.setLocalization("item.contenttweaker.mastery_token_sim_one.name", "Жетон мастерства: Замкнутые экосистемы");
game.setLocalization("item.contenttweaker.mastery_token_sim_two.name", "Жетон мастерства: Лунная плоскость");
game.setLocalization("item.contenttweaker.mastery_token_sim_three.name", "Жетон мастерства: Засушливые пустоши");
game.setLocalization("item.contenttweaker.mastery_token_sim_four.name", "Жетон мастерства: Боевая симуляция");
game.setLocalization("item.contenttweaker.mastery_token_sim_five.name", "Жетон мастерства: Карьерная симуляция");
game.setLocalization("item.contenttweaker.mastery_token_final.name", "Финальный жетон мастерства");
game.setLocalization("item.contenttweaker.endgame_platform_assembler.name", "Комплект нанороботов NAU-01");
game.setLocalization("item.contenttweaker.assembly_dust.name", "Сборочная пыль");
game.setLocalization("item.contenttweaker.nau_two_use_item.name", "Комплект нанороботов NAU-02");
game.setLocalization("item.contenttweaker.atlas_project_item.name", "Сосуд сдерживания черной дыры");
game.setLocalization("item.contenttweaker.soul_cluster.name", "Скопление душ");
game.setLocalization("item.contenttweaker.soul_crystal.name", "Кристалл душ");
game.setLocalization("item.contenttweaker.celestial_soul_tether.name", "Небесная привязь душ");
game.setLocalization("item.contenttweaker.pack_complete_unlocker.name", "Портал побега");

# Contenttweaker blocks
game.setLocalization("tile.contenttweaker.block_ash.name", "Пепел");
game.setLocalization("tile.contenttweaker.block_golden_dust.name", "Золотистый остаточный порошок");
game.setLocalization("tile.contenttweaker.block_silver_dust.name", "Серебристый остаточный порошок");
game.setLocalization("tile.contenttweaker.block_blaze_powder.name", "Блок огненного порошка");
game.setLocalization("tile.contenttweaker.block_charred_terracotta.name", "Обугленная терракота");
game.setLocalization("tile.contenttweaker.faux_steel.name", "Армированная сталь");
game.setLocalization("tile.contenttweaker.blessed_portal_stone.name", "Благословенный портальный камень");
game.setLocalization("tile.contenttweaker.red_canyon_dust.name", "Пыль красного каньона");
game.setLocalization("tile.contenttweaker.combat_simulation_portal_block.name", "Портальный блок Боевой симуляции");
game.setLocalization("tile.contenttweaker.dim_five_block.name", "Радиоактивный магический портальный блок");
game.setLocalization("tile.contenttweaker.mineral_bed.name", "Минеральный пласт");
game.setLocalization("tile.contenttweaker.mineral_soil.name", "Влажная минеральная почва");
game.setLocalization("tile.contenttweaker.deep_substrate_ore.name", "Руда глубокого субстрата");
game.setLocalization("tile.contenttweaker.transdimensional_ore.name", "Руда беззвездной пустоты");
game.setLocalization("tile.contenttweaker.crystallized_soul.name", "Кристаллизованные человеческие души");
game.setLocalization("tile.contenttweaker.block_calcium.name", "Обызвествленная минеральная почва");
game.setLocalization("tile.contenttweaker.endgame_platform_unlocker.name", "Модуль сборки нанороботов NAU-01");
game.setLocalization("tile.contenttweaker.escape_platform_unlocker.name", "Модуль сборки нанороботов NAU-02");
game.setLocalization("tile.contenttweaker.escape_portal_block.name", "Портальный блок побега");
game.setLocalization("tile.contenttweaker.nature_block.name", "Густой хлорофилловый сок");
game.setLocalization("tile.contenttweaker.endgame_mm_core.name", "Краеугольный корпус Звездного двигателя");
game.setLocalization("tile.contenttweaker.endgame_mm_cpu.name", "Вычислительный блок Звездного двигателя");
game.setLocalization("tile.contenttweaker.endgame_mm_mechanical.name", "Механический корпус Звездного двигателя");
game.setLocalization("tile.contenttweaker.endgame_mm_casing.name", "Корпус Звездного двигателя");
game.setLocalization("tile.contenttweaker.inert_endgame_casing.name", "Корпус Звездного двигателя (Инертный)");

# Midnight fluid localization
game.setLocalization("tile.midnight.dark_water.name", "Темная вода");

# Spore Mana Dust
<thermalfoundation:material:1028>.displayName = "Споровая мана-пыль";

# Contenttweaker Enchantments
game.setLocalization("enchantment.blessed", "Благословение");
game.setLocalization("enchantment.worthy", "Достойный вознесения");
game.setLocalization("enchantment.subduedsoul", "Покоренные души");
game.setLocalization("enchantment.anointedflesh", "Помазанная плоть");
