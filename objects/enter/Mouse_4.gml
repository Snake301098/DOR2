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
        ini_open("newSave.sav");
        a = ini_read_string("game","version","");
        global.nickname = ini_read_string("Player","nickname","unnamed");
        ini_close();

        ///if global.corrupt=true then exit;
        //show_debug_message("Íà÷àëàñü çàãðóçêà èãðû... Çàãðóæåíî:");
    //Ïðîâåðêà âåðñèè.
    //if a!=global.game_version then 
        //{
        /*if a="2.3" then with(compile_button) event_user(2)
        else
            {
            show_message(text.version_reason);
            exit;
            }
        }*/
    //Êîíåö ïðîâåðêè âåðñèè.
        //alarm[0]=1*room_speed;
        alarm[0]=10;
           //else show_message("Game save not found");
		} else 
		{
			show_message("No Data file found");
		}/**/

image_index = 2;