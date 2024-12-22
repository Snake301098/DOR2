// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function build_quest_label(nbr)
{
	var entity = "";
	var progress = 0;
	var total = 0;
	var map = "";
	var reward_qty = 0;
	var reward_type = "";
	var label = "";
	
		//Quest1
	if nbr = 1
	{
		entity = global.quest1_entity
		progress = global.quest1_progress
		total = global.quest1_total 
		map = global.quest1_map 
		reward_qty = global.quest1_reward_qty
		reward_type = global.quest1_reward_type
	}
	
	if nbr = 2
	{
		entity = global.quest2_entity
		progress = global.quest2_progress
		total = global.quest2_total 
		map = global.quest2_map 
		reward_qty = global.quest2_reward_qty
		reward_type = global.quest2_reward_type
	}
	
	if nbr = 3
	{
		entity = global.quest3_entity
		progress = global.quest3_progress
		total = global.quest3_total 
		map = global.quest3_map 
		reward_qty = global.quest3_reward_qty
		reward_type = global.quest3_reward_type
	}
	
	label = "Kill " + string(total) + " " + entity + " on " + map + " maps to get " + string(reward_qty) + " " + reward_type + " (" + string(progress) + "/" + string(total) + ")"

	if nbr = 1 then global.quest1_label = label;
	if nbr = 2 then global.quest2_label = label;
	if nbr = 3 then global.quest3_label = label;
}