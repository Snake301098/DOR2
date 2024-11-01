var a,b,c,healthAbsord,shieldAbsorb,shieldPen;
if owner.corporation!=other.corporation and other.v_zone_bz=false and owner.id != other.id  then
{
	if distance_to_object(gamer) < 1000 then {zz=instance_create_depth(x,y,other.depth-1,ammo_explosion); zz.owner=other.id;}
    if other.ish=1 then {a=0} else
    {	
		if drawDamage = true
		{
			damage_function(owner,other,damage,"ammo_mob",critical_hit)
		}
    }
	instance_destroy();
}