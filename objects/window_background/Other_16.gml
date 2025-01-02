/// @description SKILLTREE BUY

if active_tab = "SKILLTREE" then
{
	var selected_id = -1
	with(skilltree_cell)
	{
		if selected=true then selected_id = id;
	}

	if selected_id > 0 then
	{
		if show_question("Are you sure you want to buy this item?") then
		{
			var _content = selected_id.content;
				
			//AJOUTER CONDITIONS DE ASSEZ LOGFILE + GENRE ON PEUT PAS PRENDRE NIVEAU 2 SI PAS NIVEAU 1 COMPLETED

			if _content = "ship_hull_ii" and gamer.ship_hull_i < 2
			{
				show_message("Ship Hull I max is needed")
				exit;
			}
				
			if _content = "bounty_hunter_ii" and gamer.bounty_hunter_i < 2
			{
				show_message("Bounty Hunter I max is needed")
				exit;
			}
				
			if _content = "luck_ii" and gamer.luck_i < 2
			{
				show_message("Luck I max is needed")
				exit;
			}
				
			if _content = "cruelty_ii" and gamer.cruelty_i < 2
			{
				show_message("Cruelty I max is needed")
				exit;
			}
				
			if _content = "evasive_ii" and gamer.evasive_i < 2
			{
				show_message("Evasive I max is needed")
				exit;
			}
				
			if selected_id.owning >= selected_id.level_max
			{
				show_message("Already level max")  
			}
				
			if global.logfile >= skilltree_cost
			{
				global.logfile -= skilltree_cost
					
				switch _content
				{
					case "ship_hull_i": {gamer.ship_hull_i++; break;}
					case "ship_hull_ii": {gamer.ship_hull_ii++; break;}
					case "shield_engineering": {gamer.shield_engineering++; break;}
					case "engineering": {gamer.engineering++; break;}
					case "bounty_hunter_i": {gamer.bounty_hunter_i++; break;}
					case "bounty_hunter_ii": {gamer.bounty_hunter_ii++; break;}
					case "alien_hunter": {gamer.alien_hunter++; break;}
					case "greed": {gamer.greed++; break;}
					case "luck_i": {gamer.luck_i++; break;}
					case "luck_ii": {gamer.luck_ii++; break;}
					case "cruelty_i": {gamer.cruelty_i++; break;}
					case "cruelty_ii": {gamer.cruelty_ii++; break;}
					case "evasive_i": {gamer.evasive_i++; break;}
					case "evasive_ii": {gamer.evasive_ii++; break;}
					case "electro_optics": {gamer.electro_optics++; break;}
					case "shield_mechanics": {gamer.shield_mechanics++; break;}
					case "smb_upgrade": {gamer.smb_upgrade++; break;}
					case "ish_upgrade": {gamer.ish_upgrade++; break;}
					case "shieldbackup_upgrade": {gamer.shieldbackup_upgrade++; break;}
					case "warrep_upgrade": {gamer.warrep_upgrade++; break;}
					}
					
					selected_id.owning++
				}
			else
			{
				show_message("Not enough logfiles");
			}

		} else show_message("Select an item to buy");
	}
}


var buff = compute_skilltree_price()
skilltree_points = buff[0]			
skilltree_cost = buff[1]	

guns_installation(gamer.id)