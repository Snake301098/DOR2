instance_create_depth(x,y,-5,bigexpl1);
var dist_1, dist_2, _damage, _owner, corp, nuke_x, nuke_y, dmg;
corp = corporation;
nuke_x = x;
nuke_y = y;
dist_1 = dist1;
dist_2 = dist2;
_damage = damage;
_owner=owner;

with(ships)
{
	if corporation!=corp then
	{
		var dist = distance_to_point(nuke_x,nuke_y);
		if dist > dist_2 then dmg = 0;
		else
		{
			if dist<= dist_1 then dmg = _damage;
			if dist > dist_1 and dist <=dist_2 then dmg = _damage / (dist_1-dist_2) * (dist - dist_2)
			dmg = irandom_range(80,120)*dmg/100;
			
			//shot by gamer
			if _owner=gamer.id then
			{
				own_health-=dmg;
				draw_damage(id, damage_syntax(dmg),c_red);
				instance_create_depth(x,y,-5,bigexpl1);
				
				//if dead
				if own_health<=0 then
				{
					gotKilledBy=gamer.id
					//instance_create_depth(other.x,other.y,-100,dropobject);
				}
			}
		}
	}
}
                