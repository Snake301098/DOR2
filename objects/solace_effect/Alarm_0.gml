/// @description INIT

owner.can_use_solace = false;
owner.is_using_solace = true;

var repairing = owner.health_def*0.5

if owner.own_health<owner.health_def 
{
	deal_healing(owner,owner,"solace_effect",repairing,"health")
	//if owner = gamer.id then update_stats("warrep_repaired",healthRegen)
}
else
{
	//if owner = gamer.id then update_stats("warrep_repaired",owner.health_def - owner.own_health)
	 owner.own_health = owner.health_def 
}


//if owner = gamer.id then update_stats("warrep_used")

