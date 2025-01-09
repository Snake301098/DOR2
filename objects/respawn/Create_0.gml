//GAMER DEAD
update_stats("deaths")
deactivated_clock=10; 
gamer.destroyed=1;
dead_in_gg=false;
with(droid_obj){if owner=gamer.id then destroyed=1}

with(gamer){move_towards_point(gamer.x, gamer.y, 0)}
var a=instance_create_depth(gamer.x,gamer.y,-3,bigexpl1);
a.image_xscale=1;
a.image_yscale=1;

if room=GGA or room=GGB or room=GGD or room=GGY then
{
	dead_in_gg=true;
} 

//SHAKE EFFECT
var shake_fx = fx_create("_filter_screenshake");
fx_set_parameter(shake_fx, "g_Magnitude", 10);
fx_set_parameter(shake_fx, "g_ShakeSpeed", 0.25);
fx_set_single_layer(shake_fx, false);
layer_create(-5,"shake_screen");
layer_set_fx("shake_screen", shake_fx);

alarm[0]=room_speed*2;

