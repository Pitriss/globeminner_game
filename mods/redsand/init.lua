--[[ This mod was made by Teodor Sp�ren (TheRedMood) ]]--

-- Let the loading begin
redsand = {}
redsand.worldpath = minetest.get_worldpath()
redsand.modpath = minetest.get_modpath("redsand")

-- Essential components
dofile(redsand.modpath.."/conf.lua")

if io.open(redsand.worldpath.."/redsand_conf.lua","r") == nil then

	io.input(redsand.modpath.."/conf.lua")
	io.output(redsand.worldpath.."/redsand_conf.lua")

	local size = 2^13      -- good buffer size (8K)
	while true do
		local block = io.read(size)
		if not block then
			io.close()
			break
		end
		io.write(block)
	end

else
	dofile(redsand.worldpath.."/redsand_conf.lua")
end

dofile(minetest.get_modpath("redsand").."/functions.lua")

dofile(minetest.get_modpath("redsand").."/messages.lua")
dofile(minetest.get_modpath("redsand").."/events.lua")
dofile(minetest.get_modpath("redsand").."/general.lua")