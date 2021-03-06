-- MESELAMPS
-- A lamp is "is an electrical device used to create artificial light" (wikipedia)
-- guess what?

mesecon_lamp_box = {
	type = "wallmounted",
	wall_top = {-0.3125,0.375,-0.3125,0.3125,0.5,0.3125},
	wall_bottom = {-0.3125,-0.5,-0.3125,0.3125,-0.375,0.3125},
	wall_side = {-0.375,-0.3125,-0.3125,-0.5,0.3125,0.3125},
}

minetest.register_node("mesecons_lamp:lamp_on", {
	drawtype = "nodebox",
	tiles = {"jeija_meselamp_on.png"},
	paramtype = "light",
	paramtype2 = "wallmounted",
	legacy_wallmounted = true,
	sunlight_propagates = true,
	walkable = true,
	light_source = LIGHT_MAX,
	node_box = mesecon_lamp_box,
	selection_box = mesecon_lamp_box,
	groups = {dig_immediate=3,not_in_creative_inventory=1, mesecon_effector_on = 1},
	drop="mesecons_lamp:lamp_off 1",
	sounds = default.node_sound_glass_defaults(),
	mesecons = {effector = {
		action_off = function (pos, node)
			mesecon:swap_node(pos, "mesecons_lamp:lamp_off")
		end
	}}
})

minetest.register_node("mesecons_lamp:lamp_off", {
	drawtype = "nodebox",
	tiles = {"jeija_meselamp_off.png"},
	inventory_image = "jeija_meselamp.png",
	wield_image = "jeija_meselamp.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	sunlight_propagates = true,
	walkable = true,
	node_box = mesecon_lamp_box,
	selection_box = mesecon_lamp_box,
	groups = {dig_immediate=3, mesecon_receptor_off = 1, mesecon_effector_off = 1},
    	description="Meselamp",
	sounds = default.node_sound_glass_defaults(),
	mesecons = {effector = {
		action_on = function (pos, node)
			mesecon:swap_node(pos, "mesecons_lamp:lamp_on")
		end
	}}
})

minetest.register_craft({
	output = "mesecons_lamp:lamp_off 1",
	recipe = {
		{"", "default:glass", ""},
		{"mesecons:wire_00000000_off", "default:steel_ingot", "mesecons:wire_00000000_off"},
		{"", "default:glass", ""},
	}
})
