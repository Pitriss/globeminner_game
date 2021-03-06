-- Local constants
-- This _has_ to be set to 1
local GATE_OPENED = 2
-- This has to be != from GATE_OPENED and is coded on 4 bits
local GATE_CLOSED = 1

local is_gate = function(node)
    if node.name == 'gates:gate_closed' or node.name == 'gates:gate_opened' or node.name == 'gates:gate_iron_closed' or node.name == 'gates:gate_iron_opened' then
        return true
    end
    return false
end

local update_gate = function(pos, node)
    local nodename = ""
    local param2 = ""
    -- Switch the gate state
    if node.name == 'gates:gate_opened' then
        nodename = 'gates:gate_closed'
    elseif node.name == 'gates:gate_iron_opened' then
        nodename = 'gates:gate_iron_closed'
    elseif node.name == 'gates:gate_closed' then
        nodename = 'gates:gate_opened'
    elseif node.name == 'gates:gate_iron_closed' then
        nodename = 'gates:gate_iron_opened'
    end
    minetest.env:add_node(pos, {name = nodename})
end

local toggle_gate = function(pos, node)
    if node.name == 'gates:gate_iron_opened' or node.name == 'gates:gate_iron_closed' then
        update_gate(pos, node)
    end

    --handle gates above this one
    local lpos = {x=pos.x, y=pos.y, z=pos.z}
    while true do
        lpos.y = lpos.y+1
	lpos.x = lpos.x-1
        local lnode = minetest.env:get_node(lpos)
        if not is_gate(lnode) then
            break
        end
        update_gate(lpos, node)
    end

    --handle gates below this one
    local lpos = {x=pos.x, y=pos.y, z=pos.z}
    while true do
        lpos.y = lpos.y-1
	lpos.x = lpos.x+1
        local lnode = minetest.env:get_node(lpos)
        if not is_gate(lnode) then
            break
        end
        update_gate(lpos, node)
    end
end

-- Local Functions
local on_gate_punched = function(pos, node, puncher)
    if node.name == 'gates:gate_opened' or node.name == 'gates:gate_closed' then
        update_gate(pos, node)
    end

    --handle gates above this one
    local lpos = {x=pos.x, y=pos.y, z=pos.z}
    while true do
	lpos.y = lpos.y+1
        local lnode = minetest.env:get_node(lpos)
        if not is_gate(lnode) then
            break
        end
        update_gate(lpos, node)
    end

    --handle gates below this one
    local lpos = {x=pos.x, y=pos.y, z=pos.z}
    while true do
        lpos.y = lpos.y-1
        local lnode = minetest.env:get_node(lpos)
        if not is_gate(lnode) then
            break
        end
        update_gate(lpos, node)
    end
end

local on_gate_placed = function(pos, node, placer)
    if is_gate(node) then
        pos.y = pos.y-1
        minetest.env:add_node(pos, {
            name = node.name,
        })
    end
end

-- Nodes
minetest.register_node('gates:gate_opened', {
    drawtype = 'plantlike',
    visual_scale = 1.5,
    tile_images = {'gate_open.png'},
    sunlight_propagates = true,
    paramtype = 'light',
    walkable = false,
    material = minetest.digprop_constanttime(1.0),
    drop = "gates:gate_closed",
})

minetest.register_node('gates:gate_closed', {
    description = "Gate",
    tile_images = {'gate_top.png','gate_top.png','gate.png'},
    sunlight_propagates = true,
    paramtype = 'light',
    walkable = true,
    material = minetest.digprop_constanttime(1.0),
})

minetest.register_node('gates:gate_iron_opened', {
    drawtype = 'plantlike',
    visual_scale = 1.5,
    tile_images = {'gate_iron_open.png'},
    sunlight_propagates = true,
    paramtype = 'light',
    walkable = false,
    material = minetest.digprop_constanttime(2.0),
    drop = "gates:gate_iron_closed",
})

minetest.register_node('gates:gate_iron_closed', {
    description = "Iron Gate",
    tile_images = {'gate_iron_top.png','gate_iron_top.png','gate_iron.png'},
    sunlight_propagates = true,
    paramtype = 'light',
    walkable = true,
    material = minetest.digprop_constanttime(2.0),
})

-- Crafts
minetest.register_craft({
    output = '"gates:gate_closed" 2',
    recipe = {
        {"default:stick", "default:wood", "default:stick"},
        {"default:stick", "default:wood", "default:stick"},
    },
})

minetest.register_craft({
    output = '"gates:gate_iron_closed" 2',
    recipe = {
        {"default:iron_lump", "default:steel_ingot", "default:iron_lump"},
        {"default:iron_lump", "default:steel_ingot", "default:iron_lump"},
    },
})

-- Change the gate state
minetest.register_on_punchnode(on_gate_punched)
-- Reset param2 for open gates
minetest.register_on_placenode(on_gate_placed)

-- Mesecon Stuff:
mesecon:register_on_signal_on(toggle_gate)
mesecon:register_on_signal_off(toggle_gate)

print("[Gates] Loaded!")
