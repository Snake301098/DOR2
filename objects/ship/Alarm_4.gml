/// @description Restore shield isAttacked alarm reset
//isAttacked = 0;

var _is_shield_restore_exist=0;
var myid = id;
if own_shield < shield_def
{
	if instance_exists(shield_restore_ctrl)
	{
		with(shield_restore_ctrl){if owner = myid then _is_shield_restore_exist = 1}
	}
	
	if _is_shield_restore_exist = 0
	{
		var _obj = instance_create_depth(x,y,0,shield_restore_ctrl);
		_obj.owner = id; 
	}
}

alarm[4] = 60*3;
