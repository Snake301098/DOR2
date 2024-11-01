///@description AI action of ship

//actions for ship non invading
if isInvader = 0 then
{
	if action[0]="battle" and attacking = false then
	{
		if choose(0,0,0,1,1) = 1 then
		{
			action[0]="farming"
		}
	}
} else action[0]="battle"

if Ship="aegis" then action[0]="healer";

alarm[3]=irandom_range(10,20)*room_speed;