if owner.own_health<owner.health_def and owner.speed=0 and owner.attacking=false then
    {owner.own_health+=healthRegen * (1 + 0.05 * owner.engineering);}
else {instance_destroy();}

if owner=gamer.id then
{
	draw_damage(gamer.id,"+" + damage_syntax(healthRegen * (1 + 0.05 * owner.engineering)),c_lime);
	with(gamer){alarm[2]=1;}
}

alarm[0]=2*room_speed;