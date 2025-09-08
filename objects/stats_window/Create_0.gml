/// @description Insert description here
// You can write your code in this editor
x=0;
y=0;
active_tab = global.active_page_stats_window;
item_info = ""; //show stats of objects etc
page_droid=1;
page_ships1=global.ship_page_stats_window;

//SHOP PARAMETERS
item_selected=""; //for buying or upgrading stuff, we store the item there
buy_qty=1; //same for qty buy
cost_qty=0;
cost_type="";

//var file = file_text_open_write("stats2.csv")
//file_text_write_string(file,"oui,non,hey")
//file_text_close(file)

ship_selected=global.ship_selected_stats_window;

//ORIGINS
_Profilex = 740;
_Profiley = 290;

_PVPx = 780;
_PVPy = 250;

_PVEx = 780;
_PVEy = 270;

_Ammosx = 780;
_Ammosy = 270;

_GGx = 780;
_GGy = 270;

//UPGRADES PARAMETERS
upgrade_text = "";

//GG PARAMETER
rewards=[]

//init user events
event_user(0); //creation in the main tabs
event_user(1); //creation in the sub tabs
//event_user(3); it's when buying stuffs
//event_user(4); it's when buying GG PORTALS
alarm[0] = room_speed;