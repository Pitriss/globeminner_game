minetest.register_node("trash_can:trash_can",{
	groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
	tiles = {"trash_can_wooden_top.png", "trash_can_wooden_top.png", "trash_can_wooden.png"},
	description = "Wooden Trash Can",
	drawtype="nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.375000,-0.500000,0.312500,0.375000,0.500000,0.375000},
			{0.312500,-0.500000,-0.375000,0.375000,0.500000,0.375000},
			{-0.375000,-0.500000,-0.375000,0.375000,0.500000,-0.312500},
			{-0.375000,-0.500000,-0.375000,-0.312500,0.500000,0.375000},
			{-0.312500,-0.500000,-0.312500,0.312500,-0.437500,0.312500},
		}
	},
			on_construct = function(pos)
			local meta = minetest.env:get_meta(pos)
			meta:set_string("formspec",
				"size[8,9]"..
				"button[0,0;2,1;empty;Empty Trash]"..
				"list[current_name;main;3,1;2,3;]"..
				"list[current_player;main;0,5;8,4;]")
			meta:set_string("infotext", "Trash Can")
			local inv = meta:get_inventory()
			inv:set_size("main", 8*4)
	end,
	can_dig = function(pos,player)
		local meta = minetest.env:get_meta(pos);
		local inv = meta:get_inventory()
			return inv:is_empty("main")
	end,
	on_receive_fields = function(pos, formname, fields, sender)
		if fields.empty then
		local meta = minetest.env:get_meta(pos)
		local inv = meta:get_inventory()
		for i = 1, inv:get_size("main") do
			inv:set_stack("main", i, nil)
		end
		minetest.sound_play("trash", {to_player=player_name, gain = 1.0})
	end
end,})

minetest.register_craft({
	output = 'trash_can:trash_can',
	recipe = {
		{'default:wood', '', 'default:wood'},
		{'default:wood', '', 'default:wood'},
		{'default:wood', 'default:wood', 'default:wood'},
	}
})
