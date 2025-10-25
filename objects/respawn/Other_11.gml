/// @description Do not repair on map

global.uridium -= 500;
//check if should respawn on base from low or high maps
if room=lv1_1 or room=lv1_2 or room=lv1_3 or room=lv1_4 or room=lv2_1 or room=lv2_2 or room=lv2_3 or room=lv2_3 or room=lv2_4 or room=lv3_1 or room=lv3_2 or room=lv3_3 or room=lv3_4 or room=lv4_1 or room=lv4_2 or room=lv4_3 then
{
	if gamer.corporation=0 then room_goto(lv1_1)
	else if gamer.corporation=1 then room_goto(lv2_1)
	else room_goto(lv3_1)
} else
{
	if gamer.corporation=0 then room_goto(lv1_8)
	else if gamer.corporation=1 then room_goto(lv2_8)
	else room_goto(lv3_8)		
}