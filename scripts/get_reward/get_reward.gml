// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_reward(reward_from){
	
	var reward_type_prob = irandom_range(0,100);
	var reward_type = "unknown";
	var reward_prob = irandom_range(0,100);
	var reward = "unknown";
	var reward_qty = 0;
	
	if reward_from = "green_chest"
	{
		//reward type
		if reward_type_prob <= 30 then reward_type = "munition" //30%
		if reward_type_prob > 30 and reward_type_prob <= 40 then reward_type = "special_munition" //10%
		if reward_type_prob > 40 and reward_type_prob <= 60 then reward_type = "money" //20%
		if reward_type_prob > 60 and reward_type_prob <= 70 then reward_type = "drone" //10%
		if reward_type_prob > 70 and reward_type_prob <= 75 then reward_type = "arena" //5%%
		if reward_type_prob > 75 and reward_type_prob <= 80 then reward_type = "LF-4" //5%
		if reward_type_prob > 80 then reward_type = "account" //20%
	}
	
	if reward_from = "gold_chest"
	{
		//reward type
		if reward_type_prob <= 20 then reward_type = "munition" //20%
		if reward_type_prob > 20 and reward_type_prob <= 30 then reward_type = "special_munition" //10%
		if reward_type_prob > 30 and reward_type_prob <= 40 then reward_type = "money" //10%
		if reward_type_prob > 40 and reward_type_prob <= 60 then reward_type = "drone" //20%
		if reward_type_prob > 60 and reward_type_prob <= 70 then reward_type = "arena" //10%
		if reward_type_prob > 70 and reward_type_prob <= 80 then reward_type = "LF-4" //10%
		if reward_type_prob > 80 then reward_type = "account" //10%
	}
	
	if reward_from = "arena"
	{
		//reward type
		if reward_type_prob <= 20 then reward_type = "munition" //20%
		if reward_type_prob > 20 and reward_type_prob <= 30 then reward_type = "special_munition" //10%
		if reward_type_prob > 30 and reward_type_prob <= 40 then reward_type = "money" //10%
		if reward_type_prob > 40 and reward_type_prob <= 70 then reward_type = "drone" //30%
		if reward_type_prob > 70 and reward_type_prob <= 75 then reward_type = "arena" //5%
		if reward_type_prob > 75 and reward_type_prob <= 90 then reward_type = "LF-4" //15%
		if reward_type_prob > 90 then reward_type = "account" //10%
	}
	
	//reward
	if reward_type = "munition"
	{
		reward = choose("x2","x3","x4","x5","x6");
		if reward = "x2" then reward_qty = irandom_range(50,100)*100;
		if reward = "x3" then reward_qty = irandom_range(30,60)*100;
		if reward = "x4" then reward_qty = irandom_range(10,20)*100;
		if reward = "x5" then reward_qty = irandom_range(10,20)*100;
		if reward = "x6" then reward_qty = irandom_range(5,10)*100;
		
		if reward_from = "gold_chest" then reward_qty *= 1.5
		if reward_from = "arena" then reward_qty *= 3
	}
	
	if reward_type = "special_munition"
	{
		reward = choose("ish","emp","shieldbackup","warrep","booster");
		if reward = "ish" then reward_qty = irandom_range(3,5);
		if reward = "emp" then reward_qty = irandom_range(1,3);
		if reward = "shieldbackup" then reward_qty = irandom_range(2,4);
		if reward = "warrep" then reward_qty = irandom_range(2,4);
		if reward = "booster" then reward_qty = irandom_range(1,2);
		
		if reward_from = "gold_chest" then reward_qty = round(reward_qty*1.5)+1
		if reward_from = "arena" then reward_qty = round(reward_qty*3)+1
	}
	
	if reward_type = "money"
	{
		reward = choose("credit","uridium");
		if reward = "credit" then reward_qty = irandom_range(3,5)*100000;
		if reward = "uridium" then reward_qty = irandom_range(1,3)*1000;
		
		if reward_from = "gold_chest" then reward_qty *= 2
		if reward_from = "arena" then reward_qty *= 3
	}
	
	if reward_type = "drone"
	{
		reward = choose("drone_part","drone_part","drone_part","drone_part","drone_skin");
		if reward = "drone_part"
		{
			reward_qty = 1;
			if reward_from = "arena" then reward_qty += choose(0,1,2);
		}
		if reward = "drone_skin" then reward_qty = 1;
	}
	
	if reward_type = "arena" then {reward = "arena"; reward_qty = 1;}
	
	if reward_type = "LF-4" then {reward = "LF-4"; reward_qty = 1;}
	
	if reward_type = "account"
	{
		reward = choose("gg_click","gg_click","gg_click","gg_click","logfiles","logfiles","logfiles","greenchest","greenchest","goldchest");
		if reward = "logfile" or reward = "gg_click"
		{
			reward_qty = irandom_range(10,20);
			if reward_from = "gold_chest" then reward_qty = round(reward_qty*1.5);
			if reward_from = "gold_chest" then reward_qty = round(reward_qty*3);
		}
		
		if reward = "greenchest" or reward = "goldchest"
		{
			reward_qty = choose(1,2);
			if reward_from = "gold_chest" then reward_qty += choose(0,1,2);
		}
	}

	//give rewards
	var reward_string = "";
	if reward = "x2" then {global.x2 += reward_qty; reward_string = "x2 ammos"}
	if reward = "x3" then {global.x3 += reward_qty; reward_string = "x3 ammos"}
	if reward = "x4" then {global.x4 += reward_qty; reward_string = "x4 ammos"}
	if reward = "x5" then {global.x5 += reward_qty; reward_string = "SAB ammos"}
	if reward = "x6" then {global.x6 += reward_qty; reward_string = "RSB ammos"}
	if reward = "ish" then {global.ishcount += reward_qty; reward_string = "ISH"}
	if reward = "emp" then {global.empcount += reward_qty; reward_string = "EMP"}
	if reward = "x1" then {global.shieldbackupcount += reward_qty; reward_string = "shield backups"}
	if reward = "warrep" then {global.warrepcount += reward_qty; reward_string = "warreps"}
	if reward = "credit" then {global.credit += reward_qty; reward_string = "credit"}
	if reward = "udirium" then {global.uridium += reward_qty; reward_string = "uridium"}
	if reward = "drone_part" then {global.droid_parts += reward_qty; reward_string = "drone parts"}
	if reward = "arena" then {global.tdm_tickets += reward_qty; reward_string = "arena ticket"}
	if reward = "gg_click" then {global.ggenergy += reward_qty; reward_string = "gg energies"}
	if reward = "logfiles" then {global.logfile += reward_qty; reward_string = "logfiles"}
	if reward = "greenchest" then {global.chest_green_key += reward_qty; reward_string = "green chest key"}
	if reward = "goldchest" then {global.chest_gold_key += reward_qty; reward_string = "gold chest key"}
	
	if reward = "boosters" then 
	{
		if reward_from = "green_chest" then reward_qty = irandom_range(10,20);
		if reward_from = "gold_chest" then reward_qty = irandom_range(15,30);
		if reward_from = "arena" then reward_qty = irandom_range(45,60);
		
		var booster_type = choose("DMG_1","DMG_2","HP_1","HP_2","SHD_1","SHD_2");
		if booster_type = "DMG_1" then {reward_string="min of booster damage 1"; global.booster_damage_i += reward_qty*60;}
		if booster_type = "DMG_2" then {reward_string="min of booster damage 2"; global.booster_damage_ii += reward_qty*60;}
		if booster_type = "HP_1" then {reward_string="min of booster HP 1"; global.booster_hp_i += reward_qty*60;}
		if booster_type = "HP_2" then {reward_string="min of booster HP 2"; global.booster_hp_ii += reward_qty*60;}
		if booster_type = "SHD_1" then {reward_string="min of booster shield 1"; global.booster_shield_i += reward_qty*60;}
		if booster_type = "SHD_2" then {reward_string="min of booster shield 2"; global.booster_shield_ii += reward_qty*60;}
	}
	
	if reward = "drone_skin_hercules" or reward = "drone_skin_havoc" or reward = "LF-4" then 
	{
		#region
		var _item = "";
		if reward = "drone_skin_hercules" then {_item = "hercules"; reward_string = "drone skin Hercule";}
		if reward = "drone_skin_havoc" then {_item = "havoc"; reward_string = "drone skin Havoc";}
		if reward = "LF-4" then {_item = "LF-4"; reward_string = "LF-4";}
		
		for (var pos=1; pos<=100; pos+=1)
		{
			if gamer.Inventory[pos] = "" or gamer.Inventory[pos]= "noone" then 
			{
				gamer.Inventory[pos]=_item; 
				break;
			}
		}
					
		gamer.can_change_config = true
		change_config(gamer.id)
					
		for (var pos=1; pos<=100; pos+=1)
		{
			if gamer.Inventory[pos] = "" or gamer.Inventory[pos]= "noone" then 
			{
				gamer.Inventory[pos]=_item; 
				break;
			}
		}
					
		gamer.can_change_config = true
		change_config(gamer.id)
		#endregion
	}

	show_protocol_message("You reveiced " + string(reward_qty) + " " + reward_string + "!");
}