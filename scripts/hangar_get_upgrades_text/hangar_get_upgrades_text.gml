// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hangar_get_upgrades_text()
{
	var selected_id = -1;
	with(inv_cell){if selected = true then selected_id = id;}
	
	var _content = id.content;
	if selected_id > -1
	{
		var _name = info_weapons(_content,"weapon_name")
		var _level = info_weapons(_content,"level")
		var _damage = info_weapons(_content,"damage")
		var _level_sup = info_weapons(_name + "_" + string(_level+1),"level")
		var _damage_sup = info_weapons(_name + "_" + string(_level+1),"damage")
		var _cost1 = info_weapons(_name + "_" + string(_level+1),"cost1")
		var _cost2 = info_weapons(_name + "_" + string(_level+1),"cost2")
		var _cost3 = info_weapons(_name + "_" + string(_level+1),"cost3")
	
		with(window_background)
		{
			if _level_sup>-1
			{
				cost1_amount=_cost1[1];
				cost2_amount=_cost2[1];
				cost3_amount=_cost3[1];
				cost1_type=_cost1[0];
				cost2_type=_cost2[0];
				cost3_type=_cost3[0];
		
				upgrade_text =  _name+"\nLevel: " +string(_level)+"->"+string(_level_sup)+"\nDamage: "+string(_damage)+"->"+string(_damage_sup); 
			}
			else
			{
				cost1_amount=0;
				cost2_amount=0;
				cost3_amount=0;
				cost1_type=0;
				cost2_type=0;
				cost3_type=0;
		
				upgrade_text =  _name+"\nLevel: " +string(_level)+"(Level max)\nDamage: "+string(_damage); 
			}
		}
	}
	else
	{
		cost1_amount=0;
		cost2_amount=0;
		cost3_amount=0;
		cost1_type=0;
		cost2_type=0;
		cost3_type=0;
		
		upgrade_text =  ""; 
	}
	
}