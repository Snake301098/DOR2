/*ini_open(SettingsFileName)
global.quality = ini_read_real("Game","quality",4);
if (global.quality <0 || global.quality >4) global.quality=4;
global.AIRSB = ini_read_real("AI","RSB",1);
global.AIEMP = ini_read_real("AI","EMP",1);
global.AIISH = ini_read_real("AI","ISH",1);
global.GAMERATE = ini_read_real("Game","Rate",4);
//global.RESO = ini_read_real("Display","resolution",1)
global.RESO = 2;
global.droid_enable=1
global.laser_enable=2
global.volume=1
global.max_volume=1
global.usebg=0
if global.volume then
    {
    sound_global_volume(global.max_volume);
    FMODMasterSetVolume(global.max_volume);
    }
else 
    {
    sound_global_volume(0);
    FMODMasterSetVolume(0);
    }
global.stars_eff=1
global.language_file=1
global.language_angar_menu=1
Fullscreen=1
if Fullscreen!=window_get_fullscreen() {window_set_fullscreen(Fullscreen);}

ini_close();
//Ðåñóðñû.
ini_open(global.language_file)
resourse_load = ini_read_string("Main Menu","resourse_load","Game is loading")
ini_close()
load_text:=resourse_load;          //Òåêñò âî âðåìÿ çàãðóçêè.
show_debug_message(resourse_load)
screen_redraw();
//Ïðîâåðêà íà íàëè÷èå Data.

if !(directory_exists(working_directory + "\data\'")) then
    {
    show_message("No data found");
    game_end();
    exit;
    }

global.base_menu_spr=sprite_add(working_directory + "\data\'" + global.language_angar_menu,1,0,0,0,0);
global.menu_bg=background_add_background(working_directory + "\data\'" + "menu.res");
global.halfViewWidth=0;
global.halfViewHeight=0;
//Quality control
if (global.quality==1 || global.quality==2){
global.bigexpl1_spr=sprite_add_sprite(working_directory + "\data\'" + global.emptyRes);
global.bigexpl2_spr=sprite_add_sprite(working_directory + "\data\'" + global.emptyRes);
global.bigexpl3_spr=sprite_add_sprite(working_directory + "\data\'" + global.emptyRes);
global.bigexpl4_spr=sprite_add_sprite(working_directory + "\data\'" + global.emptyRes);
global.bigexpl5_spr=sprite_add_sprite(working_directory + "\data\'" + global.emptyRes);
global.bonus_take=sprite_add_sprite(working_directory + "\data\'" + global.emptyRes);
global.rocketDamage0=sprite_add_sprite(working_directory + "\data\'" + global.emptyRes);
global.rocketDamage1=sprite_add_sprite(working_directory + "\data\'" + global.emptyRes);
global.rocketDamage2=sprite_add_sprite(working_directory + "\data\'" + global.emptyRes);
global.rocketDamage3=sprite_add_sprite(working_directory + "\data\'" + global.emptyRes);
global.rocketDamage4=sprite_add_sprite(working_directory + "\data\'" + global.emptyRes);
}else{
global.bigexpl1_spr=sprite_add_sprite(working_directory + "\data\'" + "bigexpl1.res");
global.bigexpl2_spr=sprite_add_sprite(working_directory + "\data\'" + "bigexpl2.res");
global.bigexpl3_spr=sprite_add_sprite(working_directory + "\data\'" + "bigexpl3.res");
global.bigexpl4_spr=sprite_add_sprite(working_directory + "\data\'" + "bigexpl4.res");
global.bigexpl5_spr=sprite_add_sprite(working_directory + "\data\'" + "bigexpl5.res");
global.bonus_take=sprite_add_sprite(working_directory + "\data\'" + "bonus_take.res");
global.rocketDamage0=sprite_add_sprite(working_directory + "\data\'" + "rocketDamage0.res");
global.rocketDamage1=sprite_add_sprite(working_directory + "\data\'" + "rocketDamage1.res");
global.rocketDamage2=sprite_add_sprite(working_directory + "\data\'" + "rocketDamage2.res");
global.rocketDamage3=sprite_add_sprite(working_directory + "\data\'" + "rocketDamage3.res");
global.rocketDamage4=sprite_add_sprite(working_directory + "\data\'" + "rocketDamage4.res");
}
global.teleporting_spr=sprite_add_sprite(working_directory + "\data\'" + "teleporting.res");
global.base0_spr=sprite_add_sprite(working_directory + "\data\'" + "base0.res");
global.base1_spr=sprite_add_sprite(working_directory + "\data\'" + "base1.res");
global.base2_spr=sprite_add_sprite(working_directory + "\data\'" + "base2.res");
global.maps1_spr=sprite_add_sprite(working_directory + "\data\'" + "maps1.res");





show_debug_message("HIIIIII")

alarm[0]:=1;

show_debug_message("Çàãðóæåíà COOOOOL 1-ÿ ÷àñòü ðåñóðñîâ");