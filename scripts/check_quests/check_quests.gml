// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_quests(_id, _room)
{
	var _entity_killed = "1"
	with (_id){_entity_killed = object_index}
	
	if _entity_killed = streuner then _entity_killed = "streuner"
	if _entity_killed = lordakia then _entity_killed = "lordakia"
	if _entity_killed = saimon then _entity_killed = "saimon"
	if _entity_killed = mordon then _entity_killed = "mordon"
	if _entity_killed = devolarium then _entity_killed = "devolarium"
	if _entity_killed = sibelon then _entity_killed = "sibelon"
	if _entity_killed = sibelonit then _entity_killed = "sibelonit"
	if _entity_killed = lordakium then _entity_killed = "lordakium"
	if _entity_killed = kristallin then _entity_killed = "kristallin"
	if _entity_killed = kristallon then _entity_killed = "kristallon"
	if _entity_killed = streunerR then _entity_killed = "streunerR"
	if _entity_killed = ship then _entity_killed = "player"
	
	var entity,progress,total,map,reward_qty,reward_type;
	
	for(var i=1; i<=3;i++)
	{
		if i = 1
		{
			entity = global.quest1_entity
			progress = global.quest1_progress
			total = global.quest1_total 
			map = global.quest1_map 
			reward_qty = global.quest1_reward_qty
			reward_type = global.quest1_reward_type
		}
		
		if i = 2
		{
			entity = global.quest2_entity
			progress = global.quest2_progress
			total = global.quest2_total 
			map = global.quest2_map 
			reward_qty = global.quest2_reward_qty
			reward_type = global.quest2_reward_type
		}
		
		if i = 3
		{
			entity = global.quest3_entity
			progress = global.quest3_progress
			total = global.quest3_total 
			map = global.quest3_map 
			reward_qty = global.quest3_reward_qty
			reward_type = global.quest3_reward_type
		}
		
		//ROOMCHECK
		var roomcheck = false
		if map = "all" then roomcheck = true
		if map = "own" then {if info_map(_room,"owners") = gamer.corporation then roomcheck = true}
		if map = "ennemy" then {if info_map(_room,"owners") != gamer.corporation then roomcheck = true}
		if map = "pvp" then {if info_map(_room,"pvp") = true then roomcheck = true}
		
		if _entity_killed = entity and roomcheck
		{
			 progress++
			 if progress >= total
			 {
				 show_protocol_message("Quest " + string(i) + " accomplished!")
				if reward_type = "gg_energy"
				{
					global.ggenergy += reward_qty
					show_protocol_message("You received " + string(reward_qty) + " GG energies!")
				}
				
				if reward_type = "chest_green_key"
				{
					global.chest_green_key += reward_qty
					show_protocol_message("You received " + string(reward_qty) + " green chest keys!")
				}
				
				if i = 1 then create_quest(1)
				if i = 2 then create_quest(2)
				if i = 3 then create_quest(3)
			 }
			 else
			 {
				if i = 1 then {global.quest1_progress++; build_quest_label(1);}
				if i = 2 then {global.quest2_progress++; build_quest_label(2);}
				if i = 3 then {global.quest3_progress++; build_quest_label(3);}
			 }
		}
	}
}


