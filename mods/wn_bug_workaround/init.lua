local modname = minetest.get_current_modname()
local desc = "Dummy node to override nasty bug in 0.4.6 #"
local i = 0
for i = 0, 15, 1 do
	minetest.register_node(modname..":"..tostring(i), {
		description = desc..tostring(i),
		groups = {not_in_craft_guide=1,},
	})
end
