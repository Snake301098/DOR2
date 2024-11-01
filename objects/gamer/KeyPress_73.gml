/// @description REWARDS MOBS
if instance_exists(window_mob_rewards) then instance_destroy(window_mob_rewards) else { instance_destroy(window_background); instance_destroy(jumpmap); instance_create_depth(0,0,-510,window_mob_rewards);}
