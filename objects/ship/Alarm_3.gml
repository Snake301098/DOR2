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
	
	if attacking = false and room != arena
	{
		if irandom(100) <= 5
		{
			action[0] = "voyager"
			var portal_target = 0;
			var all_portals = [];
			with portal_object {array_push(all_portals,id)}
			portal_target = all_portals[irandom_range(0,array_length(all_portals)-1)]
			voyager_target_x = (portal_target.x - x)*1000000 + x
			voyager_target_y = (portal_target.y - y)*1000000 + y
		}
	}
} else action[0]="battle"


alarm[3]=irandom_range(10,20)*room_speed;