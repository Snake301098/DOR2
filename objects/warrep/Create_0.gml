delay = room_speed / 2
owner=noone;
sprite_index=warrep_spr;
healthRegen=0;
image_speed=1// /15;
depth=-50;

alarm[0] = 1; //Init
alarm[1] = delay; //heal
alarm[2] = 5 * room_speed; //end of warrep

/*
bonus = global.ship_engineering_bonus;
if bonus = 0.5 then
{sprite_index=bluerepbot_spr; healthRegen=15000*(1+bonus)} else 
{sprite_index=repbot_spr; healthRegen=15000*(1+bonus)}
alarm[1]=5;
image_speed=1/15;
sound_loop(repairing);