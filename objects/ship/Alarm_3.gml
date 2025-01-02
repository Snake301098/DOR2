///@description AI action of ship

//actions for ship non invading
if isInvader = 0 then
{
	if action[0]="battle" and attacking = false then
	{
		if choose(0,0,0,1,1) = 1 then
		{
			action[0]="farming"
			ammo_selected = choose(x1_ammo,x1_ammo,x1_ammo,x2_ammo,x2_ammo,x2_ammo,x3_ammo,x3_ammo,x4_ammo)
		}
	}
} else action[0]="battle"

if Ship="aegis" then action[0]="healer";

alarm[3]=irandom_range(10,20)*room_speed;