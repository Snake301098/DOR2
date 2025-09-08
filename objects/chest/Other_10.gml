/// @description REWARD

if type = "green"
{
	global.chest_green_key--
	get_reward("green_chest");
}


if type = "gold"
{
	global.chest_gold_key--
	get_reward("gold_chest");
	get_reward("gold_chest");
}


