/// @description log messages
if instance_exists(log_msgs_window) then instance_destroy(log_msgs_window) else { instance_destroy(window_background); instance_destroy(jumpmap); instance_destroy(stats_window) instance_create_depth(0,0,-510,log_msgs_window);}
