/// @description Insert description here
// You can write your code in this editor
x=0;
y=0;
active_tab = global.active_tab_hangar_window;
active_side_tab = global.active_side_tab_hangar_window;
item_info = ""; //show stats of objects etc
page_droid=1;
page_ships=1;
page_inventory=1;

//SHOP PARAMETERS
item_selected=""; //for buying or upgrading stuff, we store the item there
buy_qty=1; //same for qty buy
cost_qty=0;
cost_type="";
item_description=""


//UPGRADES PARAMETERS
upgrade_text = "";

//SKILLTREE
skilltree_points = -1		
skilltree_cost = -1
skilltree_selected = ""
skilltree_selected_description = ""

//init user events
event_user(0); //creation in the main tabs
event_user(1); //creation in the sub tabs
//event_user(3); it's when buying stuffs
//event_user(4); it's when buying GG PORTALS


//GG REWARDS
_x1 = 0;
_x2 = 0;
_x3 = 0;
_x4 = 0;
_x5 = 0;
_x6 = 0;
_ish = 0;
_smb = 0;
_warrep = 0;
_shieldbackup = 0;
_emp = 0;
_ggpart = 0;
_ggpart_dupp = 0;

rewards=[[_x1,"x1"],[_x2,"x2"],[_x3,"x3"],[_x4,"x4"],[_x5,"x5"],[_x6,"x6"],[_shieldbackup,"shieldbackup"],[_warrep,"warrep"],[_ish,"ish"],[_smb,"smb"],[_emp,"emp"],[_ggpart,"ggpart"],[_ggpart_dupp,"ggpart_dupp"]]
