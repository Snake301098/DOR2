/// @description STATS
if instance_exists(stats_window) then instance_destroy(stats_window) else { instance_destroy(stats_window); instance_destroy(jumpmap); instance_destroy(window_background); instance_create_depth(0,0,-510,stats_window);}
