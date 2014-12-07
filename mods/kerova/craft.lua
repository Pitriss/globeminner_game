--[[
Kerova Mod
By AndromedaKerova (AKA; RommieKerova, Rommie, Andromeda) (rommiekerova@gmail.com)
License: WTFPL
Version: 1.0
--]]


-- CHESTS

local dye = {"white", "grey", "dark_grey", "black", "blue", "cyan", "dark_green", "green", "magenta", "orange", "pink", "red", "violet", "yellow"}

for _, row in ipairs(dye) do
	local name = row
	minetest.register_craft({
		type = 'shapeless',
		output = 'kerova:chest_'..name,
		recipe = {'dye:'..name, 'default:chest'},
	})
	minetest.register_craft({
		type = 'shapeless',
		output = 'kerova:chest_'..name..'_locked',
		recipe = {'dye:'..name, 'default:chest_locked'},
	})
	minetest.register_craft({
		type = 'shapeless',
		output = 'kerova:chest_'..name..'_locked',
		recipe = {'dye:'..name, 'default:chest', "default:steel_ingot"},
	})
end

-- DECORATIVE WOOD
-- #1
minetest.register_craft({
	output = 'kerova:deco_wood_1',
	recipe = {
		{'default:stick','',''},
		{'','default:wood',''},
		{'','',''},
	}
})
-- #2
minetest.register_craft({
	output = 'kerova:deco_wood_2',
	recipe = {
		{'','default:stick',''},
		{'','default:wood',''},
		{'','',''},
	}
})
-- #3
minetest.register_craft({
	output = 'kerova:deco_wood_3',
	recipe = {
		{'','','default:stick'},
		{'','default:wood',''},
		{'','',''},
	}
})
-- #4
minetest.register_craft({
	output = 'kerova:deco_wood_4',
	recipe = {
		{'','',''},
		{'default:stick','default:wood',''},
		{'','',''},
	}
})
-- #5
minetest.register_craft({
	output = 'kerova:deco_wood_5',
	recipe = {
		{'','',''},
		{'','default:wood','default:stick'},
		{'','',''},
	}
})
-- #6
minetest.register_craft({
	output = 'kerova:deco_wood_6',
	recipe = {
		{'','',''},
		{'','default:wood',''},
		{'default:stick','',''},
	}
})
-- #7
minetest.register_craft({
	output = 'kerova:deco_wood_7',
	recipe = {
		{'','',''},
		{'','default:wood',''},
		{'','default:stick',''},
	}
})
-- #8
minetest.register_craft({
	output = 'kerova:deco_wood_8',
	recipe = {
		{'','',''},
		{'','default:wood',''},
		{'','','default:stick'},
	}
})
-- #9
minetest.register_craft({
	output = 'kerova:deco_wood_9',
	recipe = {
		{'','','default:stick'},
		{'','default:wood',''},
		{'default:stick','',''},
	}
})
-- #10
minetest.register_craft({
	output = 'kerova:deco_wood_10',
	recipe = {
		{'','default:stick',''},
		{'default:stick','default:wood','default:stick'},
		{'','default:stick',''},
	}
})


-- GOTHIC FLOOR
minetest.register_craft({
	type = 'shapeless',
	output = 'kerova:gothic_floor',
	recipe = {'dye:black', 'default:wood'},
})


-- BAMBOO FLOOR
minetest.register_craft({
	output = 'kerova:bamboo_floor',
	recipe = {
		{'default:sapling','default:stick','default:sapling'},
		{'default:stick','default:sapling','default:stick'},
		{'default:sapling','default:stick','default:sapling'},
	}
})

-- Flagstone
minetest.register_craft({
	type = 'shapeless',
	output = 'kerova:flagstone',
	recipe = {'default:stone', 'moreblocks:iron_stone'},
})

-- Rusticstone
minetest.register_craft({
	type = 'shapeless',
	output = 'kerova:rusticstone',
	recipe = {'default:stone', 'default:cobble'},
})

-- Rainbow valley left
minetest.register_craft({
	output = 'kerova:rainbow_valley_left',
	recipe = {
		{'default:stick','default:stick','default:stick'},
		{'default:stick','default:paper','default:paper'},
		{'default:stick','default:stick','default:stick'},
	}
})

-- Rainbow valley right
minetest.register_craft({
	output = 'kerova:rainbow_valley_right',
	recipe = {
		{'default:stick','default:stick','default:stick'},
		{'default:paper','default:paper','default:stick'},
		{'default:stick','default:stick','default:stick'},
	}
})

