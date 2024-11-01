//if dead respawn

//RESPAWN AT BASE
if destroyed=1
{
	var oBase=instance_nearest(gamer.x,gamer.y,base);
	gamer.x=oBase.x
	gamer.y=oBase.y
	gamer.own_health=30000;
	gamer.destroyed=0;
	with(droid_obj){if owner=gamer.id then destroyed=0}
	instance_destroy(respawn);
}

event_user(0);