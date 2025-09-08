delay = room_speed / 2
owner=noone;
healthRegen=0;
image_speed=1// /15;
depth=-500;

alarm[0] = 1; //Init
alarm[1] =  1.5 * room_speed; //dmg
//alarm[2] = 10 * room_speed; //end of effect

_DMG = 1500;

_target = 0;
_target_old = 0;
