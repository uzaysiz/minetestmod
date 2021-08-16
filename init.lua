print("ass nbr?")

minetest.register_node("ahlag:yabma", {
	description = "yabma :/",
	tiles = {
		"ahlag_img1.png",
		"ahlag_img1.png",
		"ahlag_img1.png",
		"ahlag_img1.png",
		"ahlag_img1.png",
		"ahlag_img1.png"
	},
	groups = {cracky = 1}
})

minetest.register_node("ahlag:limk", {
	description = "kardesim limk?",
	tiles = {
		"ahlag_img2.png",
		"ahlag_img2.png",
		"ahlag_img2.png",
		"ahlag_img2.png",
		"ahlag_img2.png",
		"ahlag_img2.png"
	},
	groups = {cracky = 1}
})

minetest.register_node("ahlag:kabo", {
	description = "kabo diorsa doru dur",
	tiles = {
		"ahlag_img3.png",
		"ahlag_img3.png",
		"ahlag_img3.png",
		"ahlag_img3.png",
		"ahlag_img3.png",
		"ahlag_img3.png"
	},
	groups = {cracky = 1}
})

minetest.register_node("ahlag:yarrag_block", {
	description = "yarraklar",
	tiles = {
		"ahlag_yarrag.png",
		"ahlag_yarrag.png",
		"ahlag_yarrag.png",
		"ahlag_yarrag.png",
		"ahlag_yarrag.png",
		"ahlag_yarrag.png"
	},
	groups = {cracky = 1}
})

minetest.register_craftitem("ahlag:yarrag_ore", {
	description = "Yarra Yering",
	inventory_image = "ahlag_yarrag.png",
	on_use = function(item, placer, pointed_thing)
			minetest.chat_send_player(placer:get_player_name(), "yarra yediniz")
			minetest.chat_send_all(placer:get_player_name() .. " yarra yedi")
	end
})

minetest.register_craft({ 
	output = "ahlag:yarrag_block 1", 
	recipe = {
		{"ahlag:yarrag_ore", "ahlag:yarrag_ore", "ahlag:yarrag_ore"},
		{"ahlag:yarrag_ore", "ahlag:yarrag_ore", "ahlag:yarrag_ore"},
		{"ahlag:yarrag_ore", "ahlag:yarrag_ore", "ahlag:yarrag_ore"}
	}
})

minetest.register_node("ahlag:stone_with_yarrag", {
    description = "Yarrag Ore",
    tiles = {"default_stone.png^ahlag_yarrag.png"},
    groups = {cracky = 1},
    drop = "ahlag:yarrag_ore",
    sounds = default.node_sound_stone_defaults(),
})

minetest.register_ore({
	ore_type       = "scatter",
	ore            = "ahlag:stone_with_yarrag",
	wherein        = "default:stone",
	clust_scarcity = 16 * 16 * 16,
	clust_num_ores = 5,
	clust_size     = 3,
	y_max          = 512,
	y_min          = -4096,
})
