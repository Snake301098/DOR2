/// @description
function set_mob_reward(mob_name, mob_type, _room)
{
	
	var number_of_rewards = 1;
	var possible_rewards_index = [];
	var possible_rewards_qty_low = [];
	var possible_rewards_qty_high = [];
	var possible_rewards_qty = [];
	var final_reward = [];
	
	var prob = random(1);
	if prob >= 0.6 and prob < 0.8 then number_of_rewards = 2;
	if prob >= 0.8 then number_of_rewards = 3; 
	switch mob_name
	{
		case "streuner_1":
		{
			possible_rewards_index = global.streuner_reward_ores_index //[[index of ores, is it special ores or not], [], []]   ----- for [[ores low], [ores medium], [ores high]]
			possible_rewards_qty_low = [5,5,5,3,3,3,1,1]
			possible_rewards_qty_high = [9,9,9,5,5,5,1,1]
			break;		
		}
		
		case "lordakia":
		{
			possible_rewards_index = global.lordakia_reward_ores_index
			possible_rewards_qty_low = [6,6,6,3,3,3,1,1]
			possible_rewards_qty_high = [12,12,12,5,5,5,1,1]
			break;		
		}
		
		case "sibelon":
		{
			possible_rewards_index = global.sibelon_reward_ores_index
			possible_rewards_qty_low = [60,60,60,32,32,20,12,4]
			possible_rewards_qty_high = [120,120,120,64,64,40,24,8]
			break;
		}
	}
	
	for(var i=0; i<array_length(possible_rewards_qty_low); i++)
	{
		array_push(possible_rewards_qty, irandom_range(possible_rewards_qty_low[i], possible_rewards_qty_high[i]));
	}
	
	var index_reward_1,index_reward_2,index_reward_3;
	
	//REWARD ORES LOW
	var index_reward_1 = possible_rewards_index[0,0];
	var is_reward_1_special = possible_rewards_index[0,1];
	if is_reward_1_special = 1 then possible_rewards_qty[index_reward_1] *= 1.2;
	array_push(final_reward, [index_reward_1, possible_rewards_qty[index_reward_1]]);
	
	//REWARD ORES MEDIUM
	if number_of_rewards >= 2 then
	{
		var index_reward_2 = possible_rewards_index[1,0];
		var is_reward_2_special = possible_rewards_index[1,1];
		if is_reward_2_special = 1 then possible_rewards_qty[index_reward_2] *= 1.2;
		array_push(final_reward, [index_reward_2, possible_rewards_qty[index_reward_2]]);
	}
	
	//REWARD ORES HIGH
	if number_of_rewards >= 3 then
	{
		var index_reward_3 = possible_rewards_index[2,0];
		var is_reward_3_special = possible_rewards_index[2,1];
		if is_reward_3_special = 1 then possible_rewards_qty[index_reward_3] *= 1.2;
		array_push(final_reward, [index_reward_3, possible_rewards_qty[index_reward_3]]);
	}
	
	
	if mob_type = "boss"
	{
		for(var i=0; i<array_length(final_reward); i++)
		{
			final_reward[i,1] = final_reward[i,1] * 1.8;
		}
	}
	
	if mob_type = "uber"
	{
		for(var i=0; i<array_length(final_reward); i++)
		{
			final_reward[i,1] = final_reward[i,1] * 1.8 * 1.8;
		}
	}
	
	if info_map(_room, "owners") != gamer.corporation and info_map(_room, "owners") != 3 // or info_map(_room, "pvp") = true
	{
		for(var i=0; i<array_length(final_reward); i++)
		{
			final_reward[i,1] = final_reward[i,1] * 1.2;
		}
	}
	
	return(final_reward);
}