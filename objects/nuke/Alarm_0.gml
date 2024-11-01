/// @description reset cooldown
if owner = gamer.id then global.nuke_k1-=1;

owner.can_use_nuke_k1 = false;
var myID = owner
with(cooldowns_ctrl)
{
	if owner = myID then
	{
		alarm[0] = 3 * room_speed;
	}	
}