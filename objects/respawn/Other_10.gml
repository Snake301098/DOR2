/// @description Repair on map

//DO CREDITS -500
global.uridium -= 500;
var portal = instance_nearest(gamer.x,gamer.y,portal_object);
gamer.x=portal.x;
gamer.y=portal.y;
	

	
	
	
gamer.cloaked=1;
show_protocol_message("Invisible for 10 seconds");
with(ship) {if target=gamer.id then target=noone}
gamer.v_zone_bz=true;
alarm[1]=1;
gamer.destroyed=0;
with(droid_obj){if owner=gamer.id then destroyed=0};
global.cloaked=1;
gamer.own_health=50000;