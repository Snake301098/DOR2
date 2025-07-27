/// @description KAMIKAZE

if instance_exists(HUD_user) then HUD_user.kamikaze_selected = false

instance_create_depth(x,y,-5,bigexpl1);
var dist_1, dist_2, _damage, _owner, corp, dmg, _petx, _pety, _draw;
_petx = x
_pety = y
corp = owner.corporation;
dist_1 = 100;
dist_2 = 400;
_damage = 50000;
_owner = owner;

if owner = gamer.id then _draw = true else _draw = false
with(ships)
{
	if corporation!=corp then
	{
		var dist = distance_to_point(_petx,_pety);
		if dist > dist_2 then dmg = 0;
		else
		{
			if dist<= dist_1 then dmg = _damage;
			if dist > dist_1 and dist <=dist_2 then dmg = _damage / (dist_1-dist_2) * (dist - dist_2)
			dmg = irandom_range(80,120)*dmg/100;
			
			deal_prefunction(_owner,id,"kamikaze",dmg,1,_draw)
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


with(mob)
{
	var dist = distance_to_point(_petx,_pety);
	if dist > dist_2 then dmg = 0;
	else
	{
		if dist<= dist_1 then dmg = _damage;
		if dist > dist_1 and dist <=dist_2 then dmg = _damage / (dist_1-dist_2) * (dist - dist_2)
			
		deal_prefunction(_owner,id,"kamikaze",dmg,1,_draw)
			
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


var myID = owner
var _cooldown = global.kami_cooldown;
owner.can_use_kami = false;

with(cooldowns_ctrl)
{
	if owner = myID then
	{
		alarm[5] = _cooldown;
	}	
}

global.uridium -= global.cost_kamikaze;

instance_destroy()