/// @description QUESTS
if instance_exists(quests_window) then instance_destroy(quests_window) else { instance_destroy(quests_window); instance_destroy(jumpmap); instance_create_depth(0,0,-510,quests_window);}
