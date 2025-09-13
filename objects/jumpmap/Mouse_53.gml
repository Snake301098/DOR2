if window_mouse_get_x() > 580 and window_mouse_get_x() < 688 and window_mouse_get_y() > 299 and window_mouse_get_y() < 336 then if image_index=0 then image_index=1 else image_index=0;
else if image_index = 0 and window_mouse_get_x() > 1211 and window_mouse_get_x() < 1314 and window_mouse_get_y() > 285 and window_mouse_get_y() < 347 then room_goto(lv2_1)
else if image_index = 0 and window_mouse_get_x() > 1090 and window_mouse_get_x() < 1189 and window_mouse_get_y() > 331 and window_mouse_get_y() < 396 then room_goto(lv2_2)
else if image_index = 0 and window_mouse_get_x() > 1212 and window_mouse_get_x() < 1313 and window_mouse_get_y() > 752 and window_mouse_get_y() < 817 then room_goto(lv3_1)
else if image_index = 0 and window_mouse_get_x() > 1090 and window_mouse_get_x() < 1189 and window_mouse_get_y() > 754 and window_mouse_get_y() < 811 then room_goto(lv3_2)


