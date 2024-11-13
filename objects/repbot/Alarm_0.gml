if owner.own_health<owner.health_def and owner.speed=0 and owner.attacking=false then
    {owner.own_health+=healthRegen;}
else {instance_destroy();}

if owner=gamer.id then
{
	draw_damage(gamer.id,"+" + damage_syntax(healthRegen),c_lime);
}

alarm[0]=2*room_speed;