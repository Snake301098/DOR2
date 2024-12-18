///@description shoot
if instance_exists(target)
{
	if (target.v_zone_bz=true or distance_to_object(target)>2000) then 
	{
		target=noone;
		with (way) {if owner=other.id then instance_destroy()};
		speed:=0;
	}
	else if point_distance(x,y,target.x,target.y) <= range then
	{        
		//Âûñòðåë.
		ii = instance_create_depth(x,y,-1,ammo_mob);
		ii.speed = 17;
		ii.direction = point_direction(x,y,target.x,target.y);
		ii.damage = damage;
		ii.target = target;
		ii.owner=id;
		ii.myOwner=id;
		
		//if distance_to_object(gamer)<=500 or gamer.target=id then
		    //sound_play(ammo[1]);
	}
}

alarm[1]=irandom_range(50,70); //1