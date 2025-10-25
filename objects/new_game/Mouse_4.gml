/// @description Execute Code
var a, version, file;
a:="";
global.pvpMissedScore=0; //detects if player was not in 4-4 at the end of clock, used for spawning the ships after that
global.mmopvpscore=0;
global.eicpvpscore=0;
global.vrupvpscore=0;
global.killstreak=0;
//show_debug_message("HI iciii")
//show_debug_message(working_directory)
//if file_exists(working_directory + "\data\" + "Save.DO2") then
if (file_exists("newSave.sav")) then
        {
            //show_HUD_message("Loading...");
            //show_protocol_message("Loading...");
            draw_set_halign(fa_center);
            draw_set_alpha(10);
            draw_set_font(nicktext);
            draw_set_color(global.HUD_color);
           // draw_text_ol(500,500,"LOADING",global.HUD_color,c_white);
           //     with(ActivityCtrl) event_user(1);
		   
		   var _name = "";
		   _name = get_string("Please select your nickname.",_name);
		   if _name == "" then {show_message("Please select a valid nickname");exit;}
		   var _corp = "";
		   _corp = get_string("Please your corporation.\nWrite either mmo, eic or vru.",_corp);
		   if _corp = "mmo" then global.corporation = 0
		   if _corp = "eic" then global.corporation = 1
		   if _corp = "vru" then global.corporation = 2
		   if _corp != "mmo" and _corp != "eic" and _corp != "vru" then {show_message("Please select a valid corporation");exit;}
			var _confirm = show_question("Are you sure you want to start a new game as " + _name + " for corporation " + _corp + "?");
			if _confirm=true then
			    {
				    show_message("Made by an old fan of the game based on work of DOR team, enjoy the memories!");
				    reset_game(_name,global.corporation);
				
					ini_open("newSave.sav");
			        a = ini_read_string("game","version","");
			        global.nickname = ini_read_string("Player","nickname","unnamed");
			        ini_close();
			        alarm[0]=10;
					clicked = true;
			    }
		} else 
		{
			show_message("No Data file found");
		}/**/

image_index = 2;