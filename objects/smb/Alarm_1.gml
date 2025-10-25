/// @description DMG

var corp = owner.corporation
var _x = owner.x
var _y = owner.y

var dist_1, dist_2, _damage, _owner, dmg, _draw;
_petx = x
_pety = y
corp = owner.corporation;
dist_1 = 200;
dist_2 = 600;
_damage = 50000 + owner.smb_upgrade * 5000;
_owner = owner;
if owner = gamer.id then _draw = true else _draw = false

with(ships)
{
	if corporation!=corp then
	{
		var dist = distance_to_point(_x,_y);
		if dist > dist_2 then dmg = 0;
		else
		{
			if dist<= dist_1 then dmg = _damage;
			if dist > dist_1 and dist <=dist_2 then dmg = _damage / (dist_1-dist_2) * (dist - dist_2)
			dmg = irandom_range(80,120)*dmg/100;
			
			deal_prefunction(_owner,id,"smb",dmg,1,_draw)
			/*
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
			}*/
		}
	}
}