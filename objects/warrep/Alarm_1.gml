/// @description Heal
if owner.own_health<owner.health_def 
{
	owner.own_health+=healthRegen;
}
else
{
	 owner.own_health = owner.health_def 
}

//if owner=gamer.id then
//{
	draw_damage(owner.id,"+" + damage_syntax(healthRegen),c_lime);
//}

alarm[1]=delay;
