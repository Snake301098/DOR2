/// @description REWARD

if type = "green"
{
	global.chest_green_key--
	update_stats("green_chest");
	get_reward("green_chest");
}


if type = "gold"
{
	global.chest_gold_key--
	update_stats("gold_chest");
	get_reward("gold_chest");
	get_reward("gold_chest");
}


