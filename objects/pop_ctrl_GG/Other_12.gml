/// @description end round
var home_map = lv1_1;
var sprite_portal_gg = alpha_portal_spr;

var gg_room_width = 2080;
var gg_room_height = 1300;

if gamer.corporation = 1 then home_map = lv2_1;
if gamer.corporation = 2 then home_map = lv3_1;

if room = GGB then sprite_portal_gg = beta_portal_spr;
if room = GGD then sprite_portal_gg = delta_portal_spr;
if room = GGY then sprite_portal_gg = gamma_portal_spr;

var teleport1=instance_create_depth(gg_room_width/2-150, gg_room_height/2, 50, teleport);
teleport1.map1=room;
teleport1.map2=home_map;
teleport1.visible=true;
teleport1.tox=6400/2;
teleport1.toy=4000/2;

if wave <= 10
{
	var teleport2=instance_create_depth(gg_room_width/2+150, gg_room_height/2, 50, teleport);
	teleport2.map1=room;
	teleport2.map2=room;
	teleport2.sprite_index=sprite_portal_gg;
	teleport2.visible=true;
	teleport2.tox=gg_room_width/2;
	teleport2.toy=gg_room_height/2;
}


//UPDATE WAVE
if room = GGA then global.alphawave++;
if room = GGB then global.betawave++;
if room = GGD then global.deltawave++;
if room = GGY then global.gammawave++;






