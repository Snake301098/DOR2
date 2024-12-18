/// @description Insert description here
// You can write your code in this editor
x=0;
y=0;
active_tab = "EQUIPMENT";
active_side_tab = "SHIP";
item_info = ""; //show stats of objects etc
page_droid=1;
page_ships=1;

//SHOP PARAMETERS
item_selected=""; //for buying or upgrading stuff, we store the item there
buy_qty=1; //same for qty buy
cost_qty=0;
cost_type="";


//UPGRADES PARAMETERS
upgrade_text = "";

//GG PARAMETER
rewards=[]

//init user events
event_user(0); //creation in the main tabs
event_user(1); //creation in the sub tabs
//event_user(3); it's when buying stuffs
//event_user(4); it's when buying GG PORTALS