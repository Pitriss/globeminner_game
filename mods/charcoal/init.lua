minetest.register_craft({
	type = "cooking",
	recipe = "default:tree",
	output = "default:coal_lump",
})

minetest.register_craft({
	type = "cooking",
	recipe = "default:jungletree",
	output = "default:coal_lump",
})

if minetest.get_modpath("moreblocks") ~= nil then
	minetest.register_craft({
		type = "cooking",
		recipe = "moreblocks:horizontaltree",
		output = "default:coal_lump",
	})
	minetest.register_craft({
		type = "cooking",
		recipe = "moreblocks:horizontaljungletree",
		output = "default:coal_lump",
	})
	minetest.register_craft({
		type = "cooking",
		recipe = "moreblocks:allfacestree",
		output = "default:coal_lump",
	})
end
