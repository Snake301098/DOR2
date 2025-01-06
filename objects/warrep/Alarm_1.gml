/// @description Heal
if owner.own_health<owner.health_def 
{
	deal_healing(owner,owner,"warrep",healthRegen,"health")
	if owner = gamer.id then update_stats("warrep_repaired",healthRegen)
}
else
{
	if owner = gamer.id then update_stats("warrep_repaired",owner.health_def - owner.own_health)
	 owner.own_health = owner.health_def 
}

//if owner=gamer.id then
//{
	//draw_damage(owner.id,"+" + damage_syntax(healthRegen),c_lime);
//}

alarm[1]=delay;
