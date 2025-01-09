/// @description
function go_to_state_room()
{
	var _room_str = gamer.state_room
	if _room_str = "11" then room_goto(lv1_1);
	else if _room_str = "12" then room_goto(lv1_2);
	else if _room_str = "13" then room_goto(lv1_3);
	else if _room_str = "14" then room_goto(lv1_4);
	else if _room_str = "15" then room_goto(lv1_5);
	else if _room_str = "16" then room_goto(lv1_6);
	else if _room_str = "17" then room_goto(lv1_7);
	else if _room_str = "18" then room_goto(lv1_8);
	else if _room_str = "21" then room_goto(lv2_1);
	else if _room_str = "22" then room_goto(lv2_2);
	else if _room_str = "23" then room_goto(lv2_3);
	else if _room_str = "24" then room_goto(lv2_4);
	else if _room_str = "25" then room_goto(lv2_5);
	else if _room_str = "26" then room_goto(lv2_6);
	else if _room_str = "27" then room_goto(lv2_7);
	else if _room_str = "28" then room_goto(lv2_8);
	else if _room_str = "31" then room_goto(lv3_1);
	else if _room_str = "32" then room_goto(lv3_2);
	else if _room_str = "33" then room_goto(lv3_3);
	else if _room_str = "34" then room_goto(lv3_4);
	else if _room_str = "35" then room_goto(lv3_5);
	else if _room_str = "36" then room_goto(lv3_6);
	else if _room_str = "37" then room_goto(lv3_7);
	else if _room_str = "38" then room_goto(lv3_8);
	else if _room_str = "41" then room_goto(lv4_1);
	else if _room_str = "42" then room_goto(lv4_2);
	else if _room_str = "43" then room_goto(lv4_3);
	else if _room_str = "44" then room_goto(lv4_4);
	else if _room_str = "45" then room_goto(lv4_5);
	else room_goto(lv2_1);
}