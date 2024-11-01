/// @description Ores
if instance_exists(window_ores) then instance_destroy(window_ores) else { instance_destroy(window_background); instance_destroy(jumpmap); instance_create_depth(0,0,-510,window_ores);}
