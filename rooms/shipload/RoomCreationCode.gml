randomize();
instance_create_depth(0,0,0,start_control);

instance_create_depth(0,0,0,rewards_control);

//INIT GLOBAL PARAMETERS
global.transfer_capacity = 20;
global.transfer_used = false;
global.outpost_transfer_distance = 400;
global.camera_width = 1920*0.85;
global.camera_height = 1080*0.85;
global.aim_assist = 0.7;

//LASER AMMO
global.ammo_ship_nearest_range = 0; 
global.ammo_ship_nearest_dmg = 0.4;
global.ammo_ship_near_range = 170; 
global.ammo_ship_near_dmg = 0.7;
global.ammo_ship_far_range = 380;
global.ammo_ship_far_dmg = 1;
global.ammo_laser_near_range = 180; 
global.ammo_laser_near_dmg = 1;
global.ammo_laser_far_range = 260;
global.ammo_laser_far_dmg = 0.5;

global.attacking_type = 0; //0 is laser near and 1 is ammo far
global.nuke_k1 = 0;

global.rsb_cooldown = 120
global.emp_cooldown = 10 * room_speed
global.ish_cooldown = 10 * room_speed
global.smb_cooldown = 10 * room_speed
global.warrep_cooldown = 10 * room_speed
global.shieldbackup_cooldown = 10 * room_speed

global.stats = load_csv("stats.csv")

global.protocol_log = [];

