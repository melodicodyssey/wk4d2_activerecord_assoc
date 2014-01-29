# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	# categories
	armor = Category.create(name: "Armor")
	light_armor = Category.create(name: "Light Armor")
	heavy_armor = Category.create(name: "Heavy Armor")
	shields = Category.create(name: "Shield")
	weapons = Category.create(name: "Weapons")
	blade_weapons = Category.create(name: "Blade Weapon")
	blunt_weapons = Category.create(name: "Blunt Weapon")
	melee_weapons = Category.create(name: "Melee Weapon")
	ranged_weapons = Category.create(name: "Ranged Weapon")

	
	# products
	
	 # weapons
	iron_sword = Product.create(name: "Iron Sword", price: 30.0)
	iron_axe = Product.create(name: "Iron Axe", price: 25.0)
	iron_mace = Product.create(name: "Iron Mace", price: 35.0)
	iron_greatsword = Product.create(name: "Iron Greatsword", price: 50.0)
	iron_battleaxe = Product.create(name: "Iron Battleaxe", price: 45.0)
	iron_warhammer = Product.create(name: "Iron Warhammer", price: 55.0)
	iron_bow = Product.create(name:"Iron Bow", price: 40.0)

	steel_sword = Product.create(name: "Steel Sword", price: 50.0)
	steel_axe = Product.create(name: "Steel Axe", price: 45.0)
	steel_mace = Product.create(name: "Steel Mace", price: 55.0)
	steel_greatsword = Product.create(name: "Steel GreatSword", price: 65.0)
	steel_battleaxe	= Product.create(name: "Steel BattleAxe", price: 60.0)
	steel_warhammer = Product.create(name: "Steel Warhammer", price: 65.0)
	steel_bow = Product.create(name: "Steel Bow", price: 60.0)

	dwarven_sword = Product.create(name: "Dwarven Sword", price: 80.0)
	dwarven_axe = Product.create(name: "Dwarven Axe", price: 150.0)
	dwarven_mace = Product.create(name: "Dwarven Mace", price: 80.0)
	dwarven_greatsword = Product.create(name: "Dwarven GreatSword", price: 95.0)
	dwarven_battleaxe = Product.create(name: "Dwarven BattleAxe", price: 160.0)
	dwarven_warhammer = Product.create(name: "Dwarven Warhammer", price: 100.0)
	dwarven_bow = Product.create(name: "Dwarven Bow", price: 95.0)

	elven_sword = Product.create(name: "Elven Sword", price: 120.0)
	elven_axe = Product.create(name: "Elven Axe", price: 85.0)
	elven_mace = Product.create(name: "Elven Mace", price: 85.0)
	elven_greatsword = Product.create(name: "Elven Greatsword", price: 150.0)
	elven_battleaxe = Product.create(name: "Elven Battleaxe", price: 95.0)
	elven_warhammer = Product.create(name: "Elven Warhammer", price: 90.0)
	elven_bow = Product.create(name: "Elven Bow", price: 185.0)

	orcish_sword = Product.create(name: "Orcish Sword", price: 75.0)
	orcish_axe = Product.create(name: "Orcish Axe", price: 90.0)
	orcish_mace = Product.create(name: "Orcish Mace", price: 90.0)
	orcish_greatsword = Product.create(name: "Orcish Greatsword", price: 100.0)
	orcish_battleaxe = Product.create(name: "Orcish Battleaxe", price: 130.0)
	orcish_warhammer = Product.create(name: "Orcish Warhammer", price: 125.0)
	orcish_bow = Product.create(name: "Orcish Bow", price: 80.0)

	daedric_sword = Product.create(name: "Daedric Sword", price: 5000.0)
	daedric_axe = Product.create(name: "Daedric Axe", price: 5000.0)
	daedric_mace = Product.create(name: "Daedric Mace", price: 5000.0)
	daedric_greatsword = Product.create(name: "Daedric Greatsword", price: 8000.0)
	daedric_battleaxe = Product.create(name: "Daedric BattleAxe", price: 8000.0)
	daedric_warhammer = Product.create(name: "Daedric Warhammer", price: 8000.0)
	daedric_bow = Product.create(name: "Daedric Bow", price: 8500.0)

	
	 # armor
	fur_armor = Product.create(name: "Fur Armor", price: 30.0)
	hide_armor = Product.create(name: "Hide Armor", price: 50.0)
	leather_armor = Product.create(name: "Leather Armor", price: 60.0)
	studded_leather_armor = Product.create(name: "Studded Leather Armor", price: 65.0)
	elven_armor = Product.create(name: "Elven Armor", price: 120.0)
	
	iron_armor = Product.create(name: "Iron Armor", price: 70.0)
	steel_armor = Product.create(name: "Steel Armor", price: 85.0)
	dwarven_armor = Product.create(name: "Dwarven Armor", price: 130.0)
	orcish_armor = Product.create(name: "Orcish Armor", price: 100.0)
	daedric_armor = Product.create(name: "Daedric Armor", price: 9000.0)


	 # shields
	fur_shield = Product.create(name: "Fur Shield", price: 30.0)
	hide_shield = Product.create(name: "Hide Shield", price: 35.0)
	elven_shield = Product.create(name: "Elven Shield", price: 90.0)

	iron_shield = Product.create(name: "Iron Shield", price: 120.0)
	steel_shield = Product.create(name: "Steel Shield", price: 130.0)
	dwarven_shield = Product.create(name: "Dwarven Shield", price: 200.0)
	orcish_shield = Product.create(name: "Orcish Shield", price: 160.0)
	daedric_shield = Product.create(name: "Daedric Shield", price: 9000.0)


	
	# associations
	armor.products.push(fur_armor, hide_armor, leather_armor, studded_leather_armor, elven_armor, iron_armor, steel_armor, dwarven_armor, orcish_armor, daedric_armor, fur_shield, hide_shield, elven_shield, iron_shield, steel_shield, dwarven_shield, orcish_shield, daedric_shield)
	
	weapons.products.push(iron_sword, iron_axe, iron_mace, iron_greatsword, iron_battleaxe, iron_warhammer, iron_bow, steel_sword, steel_axe, steel_mace, steel_greatsword, steel_battleaxe, steel_warhammer, steel_bow, elven_sword, elven_axe, elven_mace, elven_greatsword, elven_battleaxe, elven_warhammer, elven_bow, dwarven_sword, dwarven_axe, dwarven_mace, dwarven_greatsword, dwarven_battleaxe, dwarven_warhammer, dwarven_bow, orcish_sword, orcish_axe, orcish_mace, orcish_greatsword, orcish_battleaxe, orcish_warhammer, orcish_bow, daedric_sword, daedric_axe, daedric_mace, daedric_greatsword, daedric_battleaxe, daedric_warhammer, daedric_bow)

	shields.products.push(fur_shield, hide_shield, elven_shield, iron_shield, steel_shield, dwarven_shield, orcish_shield, daedric_shield)

	blade_weapons.products.push(iron_sword, iron_axe, iron_greatsword, iron_battleaxe, steel_sword, steel_axe, steel_greatsword, steel_battleaxe, dwarven_sword, dwarven_axe, dwarven_greatsword, dwarven_battleaxe, elven_sword, elven_axe, elven_greatsword, elven_battleaxe, orcish_sword, orcish_axe, orcish_greatsword, orcish_battleaxe, daedric_sword, daedric_axe, daedric_greatsword, daedric_battleaxe)

	blunt_weapons.products.push(iron_mace, iron_warhammer, steel_mace, steel_warhammer, dwarven_mace, dwarven_warhammer, elven_mace, elven_warhammer, orcish_mace, orcish_warhammer, daedric_mace, daedric_warhammer)

	melee_weapons.products.push(iron_sword, iron_axe, iron_mace, iron_greatsword, iron_battleaxe, iron_warhammer, steel_sword, steel_axe, steel_mace, steel_greatsword, steel_battleaxe, steel_warhammer, elven_sword, elven_axe, elven_mace, elven_greatsword, elven_battleaxe, elven_warhammer, dwarven_sword, dwarven_axe, dwarven_mace, dwarven_greatsword, dwarven_battleaxe, dwarven_warhammer, orcish_sword, orcish_axe, orcish_mace, orcish_greatsword, orcish_battleaxe, orcish_warhammer, daedric_sword, daedric_axe, daedric_mace, daedric_greatsword, daedric_battleaxe, daedric_warhammer)

	ranged_weapons.products.push(iron_bow, steel_bow, dwarven_bow, elven_bow, orcish_bow, daedric_bow)

	light_armor.products.push(fur_armor, hide_armor, leather_armor, studded_leather_armor, elven_armor)

	heavy_armor.products.push(iron_armor, steel_armor, dwarven_armor, orcish_armor, daedric_armor)
