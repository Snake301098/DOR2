var a,b,c,healthAbsord,shieldAbsorb,shieldPen;
if owner.id != other.id  then
{
	if distance_to_object(gamer) < 1000 then {zz=instance_create_depth(x,y,other.depth-1,ammo_explosion); zz.owner=other.id;}
    if other.ish=1 then {a=0} else
    {	
		if drawDamage = true
		{
			var dist = point_distance(x0,y0,x,y)
			a = damage_prefunction(owner,damage,dist,"laser_ship");
			damage_function(owner,other,a,"laser_ship",critical_hit)
		}
    }
	instance_destroy();
}