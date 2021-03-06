-- Crafting for homedecor mod (includes folding) by Vanessa Ezekowitz
-- 2012-06-12
--
-- Mostly my own code; overall template borrowed from game default
--
-- License: GPL
--

-- ====================================
-- Smelting recipes and resultant items

minetest.register_craftitem("homedecor:roof_tile_terracotta", {
	description = "Terracotta Roof Tile",
	inventory_image = "homedecor_roof_tile_terracotta.png",
})

minetest.register_craft({
	type = "cooking",
	output = "homedecor:roof_tile_terracotta 4",
	recipe = "default:dirt",
})

minetest.register_craft( {
	output = 'homedecor:shingles_terracotta',
	recipe = {
		{ 'homedecor:roof_tile_terracotta', 'homedecor:roof_tile_terracotta'},
		{ 'homedecor:roof_tile_terracotta', 'homedecor:roof_tile_terracotta'},
	}
})

minetest.register_craft( {
	output = 'homedecor:flower_pot_terracotta',
	recipe = {
		{ 'homedecor:roof_tile_terracotta', 'default:dirt', 'homedecor:roof_tile_terracotta' },
		{ 'homedecor:roof_tile_terracotta', 'homedecor:roof_tile_terracotta', 'homedecor:roof_tile_terracotta' },
	}
})

--

minetest.register_craftitem("homedecor:plastic_sheeting", {
	description = "Plastic sheet",
	inventory_image = "homedecor_plastic_sheeting.png",
})

minetest.register_craft({
	type = "cooking",
	output = "homedecor:plastic_sheeting",
	recipe = "default:junglegrass",
})

minetest.register_craft({
	type = 'fuel',
	recipe = 'homedecor:plastic_sheeting',
	burntime = 30,
})

minetest.register_craft( {
	output = 'homedecor:flower_pot_green',
	recipe = {
		{ '', 'dye:dark_green', '' },
		{ 'homedecor:plastic_sheeting', 'default:dirt', 'homedecor:plastic_sheeting' },
		{ 'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting' },
	}
})

minetest.register_craft( {
	output = 'homedecor:flower_pot_black',
	recipe = {
		{ 'dye:black', 'dye:black', 'dye:black' },
		{ 'homedecor:plastic_sheeting', 'default:dirt', 'homedecor:plastic_sheeting' },
		{ 'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting' },
	}
})

--

minetest.register_craft( {
	output = 'homedecor:projection_screen 3',
	recipe = {
		{ '', 'default:glass', '' },
		{ 'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting' },
		{ 'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting' },
	}
})

minetest.register_craft({
	type = 'fuel',
	recipe = 'homedecor:projection_screen',
	burntime = 30,
})

--

minetest.register_craft( {
	type = 'shapeless',
	output = 'homedecor:ceiling_paint 10',
	recipe = {
		'dye:white',
		'default:stone',
	}
})

minetest.register_craft( {
	output = 'homedecor:ceiling_tile 10',
	recipe = {
		{ '', 'dye:white', '' },
		{ 'default:steel_ingot', 'default:stone', 'default:steel_ingot' },
	}
})


-- =======================================================
--  Items/recipes not requiring smelting of anything new

minetest.register_craft( {
	output = 'homedecor:glass_table_small_round 15',
	recipe = {
		{ '', 'default:glass', '' },
		{ 'default:glass', 'default:glass', 'default:glass' },
		{ '', 'default:glass', '' },
	}
})

--

minetest.register_craft( {
	output = 'homedecor:glass_table_small_square 2',
	recipe = {
		{ 'homedecor:glass_table_small_round', 'homedecor:glass_table_small_round', 'homedecor:glass_table_small_round' },
	}
})

--

minetest.register_craft( {
	output = 'homedecor:glass_table_large 2',
	recipe = {
		{ 'homedecor:glass_table_small_square', 'homedecor:glass_table_small_square' },
	}
})

--

minetest.register_craft( {
	output = 'homedecor:shingles_asphalt 6',
	recipe = {
		{ 'default:dirt', 'dye:black', 'default:dirt' },
		{ 'default:sand', 'dye:black', 'default:sand' },
		{ 'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting' },
	}
})

--

minetest.register_craft( {
	output = 'homedecor:shingles_wood 12',
	recipe = {
		{ 'default:wood', '', 'default:wood'},
		{ 'default:wood', '', 'default:wood'},
	}
})

minetest.register_craft({
	type = 'fuel',
	recipe = 'homedecor:shingles_wood',
	burntime = 30,
})

--

minetest.register_craft( {
	output = 'homedecor:skylight 9',
	recipe = {
		{ 'default:glass', 'default:glass' },
		{ 'default:glass', 'default:glass' },
	}
})

--

minetest.register_craftitem("homedecor:utility_table_legs", {
	description = "Legs for Small Utility table",
	inventory_image = "homedecor_utility_table_legs.png",
})

minetest.register_craft( {
	output = 'homedecor:utility_table_legs',
	recipe = {
		{ 'default:stick', 'default:stick', 'default:stick' },
		{ 'default:stick', '', 'default:stick' },
		{ 'default:stick', '', 'default:stick' },
	}
})

minetest.register_craft({
	type = 'fuel',
	recipe = 'homedecor:utility_table_legs',
	burntime = 30,
})

--

minetest.register_craft( {
	output = 'homedecor:wood_table_small_round 15',
	recipe = {
		{ '', 'default:wood', '' },
		{ 'default:wood', 'default:wood', 'default:wood' },
		{ '', 'default:wood', '' },
	}
})

minetest.register_craft({
	type = 'fuel',
	recipe = 'homedecor:wood_table_small_round',
	burntime = 30,
})

minetest.register_craft( {
	output = 'homedecor:wood_table_small_square 2',
	recipe = {
		{ 'homedecor:wood_table_small_round', 'homedecor:wood_table_small_round', 'homedecor:wood_table_small_round' },
	}
})

minetest.register_craft({
	type = 'fuel',
	recipe = 'homedecor:wood_table_small_square',
	burntime = 30,
})

--

minetest.register_craft( {
	output = 'homedecor:wood_table_large 2',
	recipe = {
		{ 'homedecor:wood_table_small_square', 'homedecor:wood_table_small_square' },
	}
})

minetest.register_craft({
	type = 'fuel',
	recipe = 'homedecor:wood_table_large',
	burntime = 30,
})

--

minetest.register_craft( {
	output = 'homedecor:shutter_oak 2',
	recipe = {
		{ 'default:stick', 'default:stick' },
		{ 'default:stick', 'default:stick' },
		{ 'default:stick', 'default:stick' },
	}
})

minetest.register_craft({
	type = 'fuel',
	recipe = 'homedecor:shutter_oak',
	burntime = 30,
})

--

minetest.register_craft( {
	type = 'shapeless',
	output = 'homedecor:shutter_black',
	recipe = {
		'homedecor:shutter_oak',
		'dye:black',
	}
})

minetest.register_craft({
	type = 'fuel',
	recipe = 'homedecor:shutter_black',
	burntime = 30,
})

--

minetest.register_craft( {
	type = 'shapeless',
	output = 'homedecor:shutter_dark_grey',
	recipe = {
		'homedecor:shutter_oak',
		'dye:dark_grey',
	}
})

minetest.register_craft({
	type = 'fuel',
	recipe = 'homedecor:shutter_dark_grey',
	burntime = 30,
})


--

minetest.register_craft( {
	type = 'shapeless',
	output = 'homedecor:shutter_grey',
	recipe = {
		'homedecor:shutter_oak',
		'dye:grey',
	}
})

minetest.register_craft({
	type = 'fuel',
	recipe = 'homedecor:shutter_grey',
	burntime = 30,
})

--

minetest.register_craft( {
	type = 'shapeless',
	output = 'homedecor:shutter_forest_green',
	recipe = {
		'homedecor:shutter_oak',
		'dye:dark_green',
	}
})

minetest.register_craft({
	type = 'fuel',
	recipe = 'homedecor:shutter_forest_green',
	burntime = 30,
})

minetest.register_craft( {
	type = 'shapeless',
	output = 'homedecor:shutter_white',
	recipe = {
		'homedecor:shutter_oak',
		'dye:white',
}
})

minetest.register_craft({
	type = 'fuel',
	recipe = 'homedecor:shutter_white',
	burntime = 30,
})

--

minetest.register_craft( {
	output = 'homedecor:table_legs_wrought_iron 2',
	recipe = {
		{ '', 'default:iron_lump', '' },
		{ '', 'default:iron_lump', '' },
		{ 'default:iron_lump', 'default:iron_lump', 'default:iron_lump' },
	}
})

--

minetest.register_craft( {
	output = 'homedecor:pole_wrought_iron 2',
	recipe = {
		{ 'default:iron_lump', },
		{ 'default:iron_lump', },
		{ 'default:iron_lump', },
	}
})

minetest.register_craft( {
	output = 'homedecor:fence_wrought_iron 4',
	recipe = {
		{ 'default:iron_lump','default:iron_lump','default:iron_lump' },
		{ 'default:iron_lump','default:iron_lump','default:iron_lump' },
	}
})

--

minetest.register_craftitem("homedecor:drawer_small", {
	description = "Small Wooden Drawer",
	inventory_image = "homedecor_drawer_small.png",
})


minetest.register_craft( {
	output = 'homedecor:drawer_small',
	recipe = {
		{ 'default:wood', 'default:steel_ingot', 'default:wood' },
	}
})

minetest.register_craft({
	type = 'fuel',
	recipe = 'homedecor:drawer_small',
	burntime = 30,
})

--

minetest.register_craft( {
	output = 'homedecor:nightstand_oak_one_drawer',
	recipe = {
		{ 'homedecor:drawer_small' },
		{ 'default:wood' },
	}
})

minetest.register_craft({
	type = 'fuel',
	recipe = 'homedecor:nightstand_oak_one_drawer',
	burntime = 30,
})

minetest.register_craft( {
	output = 'homedecor:nightstand_oak_two_drawers',
	recipe = {
		{ 'homedecor:drawer_small' },
		{ 'homedecor:drawer_small' },
		{ 'default:wood' },
	}
})

minetest.register_craft({
	type = 'fuel',
	recipe = 'homedecor:nightstand_oak_two_drawers',
	burntime = 30,
})

--

minetest.register_craft( {
	type = 'shapeless',
	output = 'homedecor:nightstand_mahogany_one_drawer',
	recipe = {
		'homedecor:nightstand_oak_one_drawer',
		'dye:brown',
	}
})

minetest.register_craft({
	type = 'fuel',
	recipe = 'homedecor:nightstand_mahogany_one_drawer',
	burntime = 30,
})

minetest.register_craft( {
	type = 'shapeless',
	output = 'homedecor:nightstand_mahogany_two_drawers',
	recipe = {
		'homedecor:nightstand_oak_two_drawers',
		'dye:brown',
	}
})

minetest.register_craft({
	type = 'fuel',
	recipe = 'homedecor:nightstand_mahogany_two_drawers',
	burntime = 30,
})

--

minetest.register_craftitem("homedecor:drawer_large", {
	description = "Large Wooden Drawer",
	inventory_image = "homedecor_drawer_large.png",
})


minetest.register_craft( {
	output = 'homedecor:drawer_large',
	recipe = {
		{ 'default:wood', 'default:steel_ingot', 'default:wood' },
		{ 'default:wood', 'default:wood', 'default:wood' },
	}
})

minetest.register_craft({
	type = 'fuel',
	recipe = 'homedecor:drawer_large',
	burntime = 30,
})


--

minetest.register_craftitem("homedecor:dresser_oak", {
	description = "Three-Drawer Oak Dresser",
	inventory_image = "homedecor_dresser_oak_inv.png",
})


minetest.register_craft( {
	output = 'homedecor:dresser_oak',
	recipe = {
		{ 'default:wood', 'homedecor:drawer_large', 'default:wood' },
		{ 'default:wood', 'homedecor:drawer_large', 'default:wood' },
		{ 'default:wood', 'homedecor:drawer_large', 'default:wood' },
	}
})

minetest.register_craft({
	type = 'fuel',
	recipe = 'homedecor:dresser_oak',
	burntime = 30,
})

--

minetest.register_craftitem("homedecor:dresser_mahogany", {
	description = "Three-Drawer Mahogany Dresser",
	inventory_image = "homedecor_dresser_mahogany_inv.png",
})


minetest.register_craft( {
	type = 'shapeless',
	output = 'homedecor:dresser_mahogany',
	recipe = {
		'homedecor:dresser_oak',
		'dye:brown',
		'dye:brown',
		}
})

minetest.register_craft({
	type = 'fuel',
	recipe = 'homedecor:dresser_oak',
	burntime = 30,
})

-- ==========================================================
-- Recipes that require materials from Calinou's Moreores mod

minetest.register_craftitem("homedecor:brass_ingot", {
	description = "Brass Ingot",
	inventory_image = "homedecor_brass_ingot.png",
})

if ( minetest.get_modpath("moreores") ) ~= nil then

	minetest.register_craft( {
		type = 'shapeless',
		output = 'homedecor:brass_ingot 2',
		recipe = {
			'moreores:silver_ingot',
			'moreores:copper_ingot',
		},
	})


	minetest.register_craft( {
		output = 'homedecor:table_legs_brass 2',
		recipe = {
			{ '', 'homedecor:brass_ingot', '' },
			{ '', 'homedecor:brass_ingot', '' },
			{ 'homedecor:brass_ingot', 'homedecor:brass_ingot', 'homedecor:brass_ingot' }
		},
	})

	minetest.register_craft( {
		output = 'homedecor:pole_brass 2',
		recipe = {
			{ '', 'homedecor:brass_ingot', '' },
			{ '', 'homedecor:brass_ingot', '' },
			{ '', 'homedecor:brass_ingot', '' }
		},
	})

	minetest.register_craft( {
		output = 'homedecor:fence_brass 4',
		recipe = {
			{ 'homedecor:brass_ingot', 'homedecor:brass_ingot', 'homedecor:brass_ingot' },
			{ 'homedecor:brass_ingot', 'homedecor:brass_ingot', 'homedecor:brass_ingot' },
		},
	})
end


-- ========================================================
-- Recipes that require materials from Jeija's Mesecons mod

if ( minetest.get_modpath("mesecons") ) ~= nil then

	minetest.register_craft( {
		output = 'homedecor:television',
		recipe = {
			{ 'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting' },
			{ 'homedecor:plastic_sheeting', 'default:glass', 'homedecor:plastic_sheeting' },
			{ 'mesecons_materials:ic', 'mesecons_materials:ic', 'mesecons_materials:ic' },
		},
	})

	minetest.register_craft( {
		output = 'homedecor:stereo',
		recipe = {
			{ 'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting', 'homedecor:plastic_sheeting' },
			{ 'homedecor:plastic_sheeting', 'mesecons_materials:ic', 'homedecor:plastic_sheeting' },
			{ 'default:steel_ingot', 'mesecons_materials:ic', 'default:steel_ingot' },
		},
	})
end


-- ===========================================================
-- Recipes that require materials from wool (cotton alternate)

minetest.register_craft( {
	type = 'shapeless',
	output = 'homedecor:rug_small 8',
	recipe = {
		'wool:red',
		'wool:yellow',
		'wool:blue',
		'wool:black'
	},
})

-- cotton version:

minetest.register_craft( {
	type = 'shapeless',
	output = 'homedecor:rug_small 8',
	recipe = {
		'cotton:red',
		'cotton:yellow',
		'cotton:blue',
		'cotton:black'
	},
})

minetest.register_craft({
	type = 'fuel',
	recipe = 'homedecor:rug_small',
	burntime = 30,
})

minetest.register_craft( {
	type = 'shapeless',
	output = 'homedecor:rug_large 2',
	recipe = {
		'homedecor:rug_small',
		'homedecor:rug_small',
	},
})

minetest.register_craft({
	type = 'fuel',
	recipe = 'homedecor:rug_large',
	burntime = 30,
})

minetest.register_craft( {
	type = 'shapeless',
	output = 'homedecor:shutter_mahogany',
	recipe = {
		'homedecor:shutter_oak',
		'dye:brown',
	},
})

minetest.register_craft({
	type = 'fuel',
	recipe = 'homedecor:shutter_mahogany',
	burntime = 30,
})

minetest.register_craft( {
	type = 'shapeless',
	output = 'homedecor:shutter_purple',
	recipe = {
		'homedecor:shutter_oak',
		'dye:violet',
	},
})

minetest.register_craft({
	type = 'fuel',
	recipe = 'homedecor:shutter_purple',
	burntime = 30,
})

minetest.register_craft( {
	type = 'shapeless',
	output = 'homedecor:shutter_red',
	recipe = {
		'homedecor:shutter_oak',
		'dye:red',
	},
})

minetest.register_craft({
			type = 'fuel',
			recipe = 'homedecor:shutter_red',
			burntime = 30,
})

minetest.register_craft( {
	type = 'shapeless',
	output = 'homedecor:shutter_yellow',
	recipe = {
		'homedecor:shutter_oak',
		'dye:yellow',
	},
})

minetest.register_craft({
	type = 'fuel',
	recipe = 'homedecor:shutter_yellow',
	burntime = 30,
})

minetest.register_craft( {
	type = 'shapeless',
	output = 'homedecor:shutter_light_blue',
	recipe = {
		'homedecor:shutter_oak',
		'dye:blue',
	},
})

minetest.register_craft({
	type = 'fuel',
	recipe = 'homedecor:shutter_light_blue',
	burntime = 30,
})

-- =====================================================================
-- Speakers require both Jeija's mesecons mod abnd either wool or cotton

minetest.register_craft( {
	output = 'homedecor:speaker',
	recipe = {
		{ 'default:wood', 'wool:black', 'default:wood' },
		{ 'default:wood', 'mesecons:noteblock', 'default:wood' },
		{ 'default:wood', 'wool:black', 'default:wood' },
	},
})

minetest.register_craft( {
	output = 'homedecor:speaker_small',
	recipe = {
		{ 'default:wood', 'wool:black', 'default:wood' },
		{ 'default:wood', 'mesecons:noteblock', 'default:wood' },
	},
})

-- cotton version

minetest.register_craft( {
	output = 'homedecor:speaker',
	recipe = {
		{ 'default:wood', 'cotton:black', 'default:wood' },
		{ 'default:wood', 'mesecons:noteblock', 'default:wood' },
		{ 'default:wood', 'cotton:black', 'default:wood' },
	},
})

minetest.register_craft( {
	output = 'homedecor:speaker_small',
	recipe = {
		{ 'default:wood', 'cotton:black', 'default:wood' },
		{ 'default:wood', 'mesecons:noteblock', 'default:wood' },
	},
})



