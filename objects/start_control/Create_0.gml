//LoadFMOD();
//FMODinit(100);
//FMODListenerSetNumber(1);
//FMODListenerHearsDistanceOnly(1,false);

/// @description Insert description here
// You can write your code in this editor
globalvar bit_code, Fullscreen, SettingsFileName, Temp;
//Íàçíà÷åíèå ãëîáàëüíûõ ïåðåìåííûõ ïðè ñòàðòå èãðû.
global.game_version="2.3.2";               //Âåðñèÿ èãðû.
global.game_add_version="";                //Äîïîëíåíåíèå ê âåðñèè. Äëÿ ìèíè-ïàò÷åé, êîòîðûå íå çàòðàãèâàþò ñèñòåìó ñîõð/çàãð.
global.code1=2.25329;                      //×èñëî äëÿ êîäèðîâàíèÿ.
bit_code:=$D5E0C35F                        //Øåñòíàäöàòèðè÷íîå ÷èñëî äëÿ áèòîâîãî øèôðîâàíèÿ.
global.money=0;                            //Äåíüãà.
global.nickname="* * * * * ";         //Èãðîâîé íèê.
global.nicklistlength=74;                 //Äëèíà íèê-ëèñòà.
global.adminnicklistlength=7;                 //Äëèíà íèê-ëèñòà.
global.kupons=0;                           //Êîëè÷åñòâî êóïîíîâ íà ðåìîíò.
global.loading=0;                          //Ïðîâåðêà ïðîèñõîäèò ëè çàãðóçêà.
global.laser_speed:=80/2;                    //Ñêîðîñòü ëàçåðà.
global.volume=1;                           //Ãðîìêîñòü âñåé ìóçûêè.
global.details=0;                          //Êîë-âî çàï÷àñòåé, ñîáðàííûõ ñ âðàãîâ.
global.HUD_color:=c_white;                 //Öâåò èíòåðôåéñà.
global.protocol_time:=120;                  //Âðåìÿ îòîáðàæåíèÿ ñîîáùåíèé ïðîòîêîëà.
global.res_crypt_enable=3;                 //Íàñòðîéêà øèôðîâàíèÿ ðåñóðñîâ: 0 - îòêëþ÷èòü, 1 - òîëüêî øèôðîâàòü, 2 - òîëüêî ðàñøèôðîâûâàòü, 3 - (íîðì.) øèôðîâàòü è ðàñøèôðîâûâàòü.
SettingsFileName:="SettingsDO.ini"         //Íàçâàíèå ôàéëà, ñîäåðæàùåãî íàñòðîéêè.
Temp:=0;                                   //Âðåìåííàÿ ïåðåìåííàÿ.
global.emptyRes = "dummy.res";
global.halfViewWidth=0;
global.halfViewHeight=0;


global.scale = 0.60; //Size of ships etc
global.xwidthscale=1.5;
global.yheightscale=1.5;
global.hudscale = 0.8;
global.wasincontrolroombefore = 0 //to start spawning in the control map


//CONTROL POINT
global.mmoscorecp = 0;
global.eicscorecp = 0;
global.vruscorecp = 0;
global.mmowincp = 0;
global.eicwincp = 0;
global.vruwincp = 0;
global.mmooncp = 0;
global.eiconcp = 0;
global.vruoncp = 0;
global.isgameronpc = 0;
global.cpfirm = 3;
global.iscpon=0;
global.cpison=0;
global.resetcpclock = 2; 
global.cproom = noone;

//Customizable Quickaction bar
//Let"s load some default variables
ini_open("HUDConfig.ini")
global.KeyActionA = ini_read_real("KeyAction","A",0)
global.KeyActionB = ini_read_real("KeyAction","B",0)
global.KeyActionC = ini_read_real("KeyAction","C",0)
global.KeyActionD = ini_read_real("KeyAction","D",0)
global.KeyActionE = ini_read_real("KeyAction","E",0)
global.KeyActionF = ini_read_real("KeyAction","F",0)
global.KeyActionG = ini_read_real("KeyAction","G",0)
global.KeyActionH = ini_read_real("KeyAction","H",0)
global.KeyActionI = ini_read_real("KeyAction","I",0)
global.KeyActionJ = ini_read_real("KeyAction","J",0)
global.KeyActionK = ini_read_real("KeyAction","K",0)
global.KeyActionL = ini_read_real("KeyAction","L",0)
global.KeyActionM = ini_read_real("KeyAction","M",0)
global.KeyActionN = ini_read_real("KeyAction","N",0)
global.KeyActionP = ini_read_real("KeyAction","P",0)
global.KeyActionQ = ini_read_real("KeyAction","Q",0)
global.KeyActionR = ini_read_real("KeyAction","R",0)
global.KeyActionS = ini_read_real("KeyAction","S",0)
global.KeyActionT = ini_read_real("KeyAction","T",0)
global.KeyActionU = ini_read_real("KeyAction","U",0)
global.KeyActionW = ini_read_real("KeyAction","W",0)
global.KeyActionX = ini_read_real("KeyAction","X",0)
global.KeyActionY = ini_read_real("KeyAction","Y",0)
global.KeyActionZ = ini_read_real("KeyAction","Z",0)
global.KeyAction0 = ini_read_real("KeyAction","0",0)
global.KeyAction1 = ini_read_real("KeyAction","1",0)
global.KeyAction2 = ini_read_real("KeyAction","2",0)
global.KeyAction3 = ini_read_real("KeyAction","3",0)
global.KeyAction4 = ini_read_real("KeyAction","4",0)
global.KeyAction5 = ini_read_real("KeyAction","5",0)
global.KeyAction6 = ini_read_real("KeyAction","6",0)
global.KeyAction7 = ini_read_real("KeyAction","7",0)
global.KeyAction8 = ini_read_real("KeyAction","8",0)
global.KeyAction9 = ini_read_real("KeyAction","9",0)
global.KeyActionF1 = ini_read_real("KeyAction","F1",0)
global.KeyActionF2 = ini_read_real("KeyAction","F2",0)
global.KeyActionF3 = ini_read_real("KeyAction","F3",0)
global.KeyActionF5 = ini_read_real("KeyAction","F5",0)
global.KeyActionF6 = ini_read_real("KeyAction","F6",0)
global.KeyActionF7 = ini_read_real("KeyAction","F7",0)
global.KeyActionF8 = ini_read_real("KeyAction","F8",0)
global.KeyActionF10 = ini_read_real("KeyAction","F10",0)
global.KeyActionF11 = ini_read_real("KeyAction","F11",0)
global.KeyActionF12 = ini_read_real("KeyAction","F12",0)
global.KeyActionNPAD0 = ini_read_real("KeyAction","NPAD0",0)
global.KeyActionNPAD1 = ini_read_real("KeyAction","NPAD1",0)
global.KeyActionNPAD2 = ini_read_real("KeyAction","NPAD2",0)
global.KeyActionNPAD3 = ini_read_real("KeyAction","NPAD3",0)
global.KeyActionNPAD4 = ini_read_real("KeyAction","NPAD4",0)
global.KeyActionNPAD5 = ini_read_real("KeyAction","NPAD5",0)
global.KeyActionNPAD6 = ini_read_real("KeyAction","NPAD6",0)
global.KeyActionNPAD7 = ini_read_real("KeyAction","NPAD7",0)
global.KeyActionNPAD8 = ini_read_real("KeyAction","NPAD8",0)
global.KeyActionNPAD9 = ini_read_real("KeyAction","NPAD9",0)
ini_close()
//----------------------------
//Eco-10
global.eco10=0;

//Energy Leech
global.eleech=0;

//RSB-75
global.rsb=0;

//DCR250
global.dcr=0;

//Droneformations?!?!?!? OMGOSH?!?!? U CRAZYUUUHHHH?!?
global.droneformation=1

//Drone designs?!?!?!? OMG STAAUUUHHHHHPPPPPP!!
global.dnormal=1
global.dhavoc=0
global.dhercules=0

//Ranking
global.experience=0;
global.level=1;
global.honor=0;
global.phoenixkills=0;
global.nostromokills=0;
global.leonovkills=0;
global.bigboykills=0;
global.goliathkills=0;
global.vengeancekills=0;
global.alienkills=0;

//Old new lasers
ini_open(SettingsFileName);
global.old_lasers = ini_read_real("lasers","type",1);    
global.firingspeed = ini_read_real("lasers","speed",2);
ini_close();

//End
//Çàãðóçêà
ini_open(SettingsFileName)
global.quality = ini_read_real("Game","quality",4);
if (global.quality <0 || global.quality >4) global.quality=4;
global.AIRSB = ini_read_real("AI","RSB",1);
global.AIEMP = ini_read_real("AI","EMP",1);
global.AIISH = ini_read_real("AI","ISH",1);
global.GAMERATE = ini_read_real("Game","Rate",4);
//global.RESO = ini_read_real("Display","resolution",1)
global.RESO = 2;
global.droid_enable=ini_read_real("Game","Droids",1);
global.laser_enable=ini_read_real("Game","Lasers",2);
global.volume=ini_read_real("Sound","SoundEnable",1);
global.max_volume=ini_read_real("Sound","SoundVolume",1);
global.usebg=ini_read_real("Display","Backgrounds",0)
/*
if global.volume then
    {
    sound_global_volume(global.max_volume);
    FMODMasterSetVolume(global.max_volume);
    }
else 
    {
    sound_global_volume(0);
    FMODMasterSetVolume(0);
    }*/
global.stars_eff=ini_read_real("Display","StarsEnable",1);
global.language_file=ini_read_string("Language","LanguageFile",1);
global.language_angar_menu=ini_read_string("Language","LanguageBaseMenu",1);
Fullscreen=ini_read_real("Display","Fullscreen",1);
if Fullscreen!=window_get_fullscreen() {window_set_fullscreen(Fullscreen);}
ini_close();

//text.alarm[0]=1;
//Debug âîçìîæíîñòè.
global.minimap_show:=    1;  //Îòîáðàæåíèå ïðîòèâíèêîâ íà ìèíèêàðòå.
global.fast_repair:=     1;  //Ìîìåíòàëüíûé ðåìîíò.
global.Turbo_enable:=    1;  //Óñêîðåíèå íà Alt.
global.super_base:=      1;  //Âåçäå äîñòóïíàÿ áàçà.
global.unlimited_ammo:=  1;  //Áåñêîíå÷íûå áîåïðèïàñû.
global.invisible:=       1;  //Âêëþ÷àåìàÿ/îòêëþ÷àåìàÿ íåâèäèìîñòü.
global.GodMode:=         1;  //Âêëþ÷àåìàÿ/îòêëþ÷àåìàÿ íåóÿçâèìîñòü.
//Ranks :D
global.rankpoints=0;
//End of ranks :(
global.isadmin=0;

ini_open(SettingsFileName)
global.quality = ini_read_real("Game","quality",4);
if (global.quality <0 || global.quality >4) global.quality=4;
global.AIRSB = ini_read_real("AI","RSB",1);
global.AIEMP = ini_read_real("AI","EMP",1);
global.AIISH = ini_read_real("AI","ISH",1);
global.GAMERATE = ini_read_real("Game","Rate",4);
//global.RESO = ini_read_real("Display","resolution",1)
global.RESO = 2;
global.droid_enable=ini_read_real("Game","Droids",1);
global.laser_enable=ini_read_real("Game","Lasers",2);
global.volume=ini_read_real("Sound","SoundEnable",1);
global.max_volume=ini_read_real("Sound","SoundVolume",1);
global.usebg=ini_read_real("Display","Backgrounds",0)
/*
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
	*/
global.stars_eff=ini_read_real("Display","StarsEnable",1);
global.language_file=ini_read_string("Language","LanguageFile",1);
global.language_angar_menu=ini_read_string("Language","LanguageBaseMenu",1);
Fullscreen=ini_read_real("Display","Fullscreen",1);
if Fullscreen!=window_get_fullscreen() {window_set_fullscreen(Fullscreen);}

ini_close();
//Ðåñóðñû.
ini_open(global.language_file)
resourse_load = ini_read_string("Main Menu","resourse_load","Game is loading")
ini_close()
load_text:=resourse_load;          //Òåêñò âî âðåìÿ çàãðóçêè.
show_debug_message("HIIIIIIIII")
show_debug_message(load_text)
//screen_redraw();
//Ïðîâåðêà íà íàëè÷èå Data.
/*
if !(directory_exists(working_directory + "data")) then
    {
    show_message("No data found");
    game_end();
    exit;
    }*/

//global.base_menu_spr=sprite_add(working_directory + "\data" + global.language_angar_menu,1,0,0,0,0);
//global.menu_bg=background_add_background(working_directory + "\data" + "menu.res");
//Quality control
/*
if (global.quality==1 || global.quality==2){
global.bigexpl1_spr=sprite_add_sprite(working_directory + "\data" + global.emptyRes);
global.bigexpl2_spr=sprite_add_sprite(working_directory + "\data" + global.emptyRes);
global.bigexpl3_spr=sprite_add_sprite(working_directory + "\data" + global.emptyRes);
global.bigexpl4_spr=sprite_add_sprite(working_directory + "\data" + global.emptyRes);
global.bigexpl5_spr=sprite_add_sprite(working_directory + "\data" + global.emptyRes);
global.bonus_take=sprite_add_sprite(working_directory + "\data" + global.emptyRes);
global.rocketDamage0=sprite_add_sprite(working_directory + "\data" + global.emptyRes);
global.rocketDamage1=sprite_add_sprite(working_directory + "\data" + global.emptyRes);
global.rocketDamage2=sprite_add_sprite(working_directory + "\data" + global.emptyRes);
global.rocketDamage3=sprite_add_sprite(working_directory + "\data" + global.emptyRes);
global.rocketDamage4=sprite_add_sprite(working_directory + "\data" + global.emptyRes);
}else{
global.bigexpl1_spr=sprite_add_sprite(working_directory + "\data" + "bigexpl1.res");
global.bigexpl2_spr=sprite_add_sprite(working_directory + "\data" + "bigexpl2.res");
global.bigexpl3_spr=sprite_add_sprite(working_directory + "\data" + "bigexpl3.res");
global.bigexpl4_spr=sprite_add_sprite(working_directory + "\data" + "bigexpl4.res");
global.bigexpl5_spr=sprite_add_sprite(working_directory + "\data" + "bigexpl5.res");
global.bonus_take=sprite_add_sprite(working_directory + "\data" + "bonus_take.res");
global.rocketDamage0=sprite_add_sprite(working_directory + "\data" + "rocketDamage0.res");
global.rocketDamage1=sprite_add_sprite(working_directory + "\data" + "rocketDamage1.res");
global.rocketDamage2=sprite_add_sprite(working_directory + "\data" + "rocketDamage2.res");
global.rocketDamage3=sprite_add_sprite(working_directory + "\data" + "rocketDamage3.res");
global.rocketDamage4=sprite_add_sprite(working_directory + "\data" + "rocketDamage4.res");
}
global.teleporting_spr=sprite_add_sprite(working_directory + "\data" + "teleporting.res");
global.base0_spr=sprite_add_sprite(working_directory + "\data" + "base0.res");
global.base1_spr=sprite_add_sprite(working_directory + "\data" + "base1.res");
global.base2_spr=sprite_add_sprite(working_directory + "\data" + "base2.res");
global.maps1_spr=sprite_add_sprite(working_directory + "\data" + "maps1.res");
*/



alarm[0]:=1;

show_debug_message("Çàãðóæåíà 1-ÿ ÷àñòü ðåñóðñîâ");