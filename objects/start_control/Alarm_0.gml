/// @description Insert description here
// You can write your code in this editor
//IMPORTANT!!!

/*
add_external_sprite("smb");
add_external_sprite("ish");
add_external_sprite("sloweffect");
add_external_sprite("emp");
add_external_sprite("eleech");
add_external_sprite("shieldbackup");
add_external_sprite("warrep");
add_external_sprite("shieldrestore");
add_external_sprite("diminisher");
//sprite_collision_mask(global.diminisher_spr,true,0,0,0,0,0,0,255);
add_external_sprite("adept");
//sprite_collision_mask(global.adept_spr,true,0,0,0,0,0,0,0);
add_external_sprite("admin");
//sprite_collision_mask(global.admin_spr,true,0,0,0,0,0,0,0);
add_external_sprite("aegis");
add_external_sprite("avenger");
add_external_sprite("bastion");
add_external_sprite("bigboy");
add_external_sprite("centaur");
add_external_sprite("citadel");
add_external_sprite("corsair");
add_external_sprite("enforcer");
add_external_sprite("exalted");
add_external_sprite("goal");
add_external_sprite("goliath");
add_external_sprite("kick");
add_external_sprite("kringspiermusketier");
add_external_sprite("leonov");
add_external_sprite("lightning");
add_external_sprite("nostromo");
add_external_sprite("phoenix");
add_external_sprite("referee");
add_external_sprite("revenge");
add_external_sprite("saturn");
add_external_sprite("sentinel");
add_external_sprite("solace");
add_external_sprite("spearhead");
add_external_sprite("spectrum");
add_external_sprite("vengeance");
add_external_sprite("venom");
add_external_sprite("veteran");
//I have no idea what I'm doing
//I have no idea what I'm doing  
*/
/*
global.wendy_font2=font_add("" + working_directory + "/data/fonts/wendy.ttf",60,false,false,0,255);
//!!!!!!!!!!!!
global.box1_spr=sprite_add_sprite(working_directory + "\data\'" + "box1.res");
global.box2_spr=sprite_add_sprite(working_directory + "\data\'" + "box2.res");
global.special_box_spr=sprite_add_sprite(working_directory + "\data\'" + "special_box.res");
//Quality controwl

if (global.quality==1 || global.quality==2) {
global.laserdamage1=sprite_add_sprite(working_directory + "\data\'" + global.emptyRes);
global.laserdamage2=sprite_add_sprite(working_directory + "\data\'" + global.emptyRes);
global.laserdamage3=sprite_add_sprite(working_directory + "\data\'" + global.emptyRes);
}else {
global.laserdamage1=sprite_add_sprite(working_directory + "\data\'" + "laserdamage1.res");
global.laserdamage2=sprite_add_sprite(working_directory + "\data\'" + "laserdamage2.res");
global.laserdamage3=sprite_add_sprite(working_directory + "\data\'" + "laserdamage3.res");
}
global.teleport_spr=sprite_add_sprite(working_directory + "\data\'" + "teleport.res");
global.icons=sprite_add_sprite(working_directory + "\data\'" + "icons.res")
global.corporation_b=sprite_add_sprite(working_directory + "\data\'" + "corporation_b.res")
global.shield_effect_spr=sprite_add_sprite(working_directory + "\data\'" + "shield_effect.res");
//Çâóêè
sound_replace(teleporting_begin,working_directory + "\data\sound\'" + "teleporting_begin.wav",0,1);
sound_replace(teleporting_end,working_directory + "\data\sound\'" + "teleporting_end.wav",0,1);
sound_replace(base_sound,working_directory + "\data\sound\'" + "base.wav",0,1);
sound_replace(moving_sound,working_directory + "\data\sound\'" + "moving.wav",0,1);
sound_replace(repairing,working_directory + "\data\sound\'" + "repairing.wav",0,1);

global.rocket_s:=sound_add(working_directory + "\data\sound\'" + "ROCKETN.wav",0,1);
global.sub_sound:=sound_add(working_directory + "\data\sound\'" + "SAB.wav",0,1);
global.warning:=sound_add(working_directory + "\data\sound\'" + "warning.wav",0,1);*/
//FMOD çâóêè
//global.x1ammo_sound = FMODSoundAdd(working_directory + "\data\sound\'" + "x1sound.wav",true);
//FMODSoundSetGroup(global.x1ammo_sound,2);
//FMODSoundSet3dMinMaxDistance(global.x1ammo_sound,300,700);
//FMODSoundSetMaxVolume(global.x1ammo_sound,1);
/*
global.x1ammo_b_sound = FMODSoundAdd(working_directory + "\data\sound\'" + "x1sound_b.wav",true);
FMODSoundSetGroup(global.x1ammo_b_sound,2);
FMODSoundSet3dMinMaxDistance(global.x1ammo_b_sound,300,700);
FMODSoundSetMaxVolume(global.x1ammo_b_sound,1);
global.x3ammo_sound = FMODSoundAdd(working_directory + "\data\sound\'" + "x3sound.wav",true);
FMODSoundSetGroup(global.x3ammo_sound,2);
FMODSoundSet3dMinMaxDistance(global.x3ammo_sound,300,700);
FMODSoundSetMaxVolume(global.x3ammo_sound,1);
global.x4ammo_sound = FMODSoundAdd(working_directory + "\data\sound\'" + "x4sound.wav",true);
FMODSoundSetGroup(global.x4ammo_sound,2);
FMODSoundSet3dMinMaxDistance(global.x4ammo_sound,300,700);
FMODSoundSetMaxVolume(global.x4ammo_sound,1);
global.sub_ammo_sound = FMODSoundAdd(working_directory + "\data\sound\'" + "SAB.wav",true);
FMODSoundSetGroup(global.sub_ammo_sound,2);
FMODSoundSet3dMinMaxDistance(global.sub_ammo_sound,300,700);
FMODSoundSetMaxVolume(global.sub_ammo_sound,1);
global.bigexpl1_sound = FMODSoundAdd(working_directory + "\data\sound\'" + "bigexpl1.wav",true);
FMODSoundSetGroup(global.bigexpl1_sound,2);
FMODSoundSet3dMinMaxDistance(global.bigexpl1_sound,300,700);
FMODSoundSetMaxVolume(global.bigexpl1_sound,1);
global.rocketDamage_s = FMODSoundAdd(working_directory + "\data\sound\'" + "rocketDamage.wav",true);
FMODSoundSetGroup(global.rocketDamage_s,2);
FMODSoundSet3dMinMaxDistance(global.rocketDamage_s,300,700);
FMODSoundSetMaxVolume(global.rocketDamage_s,1);
*/

show_debug_message("Starting");
//room_goto(shipload)
//alarm[1]=room_speed*2;
