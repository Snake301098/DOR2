// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function display_density_shield(_attacker,_victim,_draw=true)
{
	if _draw = true
	{
		if object_get_name(_victim.object_index) = "gamer" or object_get_name(_victim.object_index) = "ship"
		{
			if _victim.shield_engineering = 5
			{
				var d = instance_create_depth(_victim.x,_victim.y,0,density_shield);
				d.owner = _victim;
				d.origin = _attacker;
			}
		}
	}
}




