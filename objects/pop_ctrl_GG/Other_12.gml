/// @description end round
var home_map = lv1_1;
var sprite_portal_gg = alpha_portal_spr;

var gg_room_width = 2080;
var gg_room_height = 1300;

if gamer.corporation = 1 then home_map = lv2_1;
if gamer.corporation = 2 then home_map = lv3_1;

if room = GGB then sprite_portal_gg = beta_portal_spr;
if room = GGD then sprite_portal_gg = delta_portal_spr;
if room = GGY then sprite_portal_gg = gamma_portal_spr;

var teleport1=instance_create_depth(gg_room_width/2-150, gg_room_height/2, 50, portal_object);
teleport1.map1=room;
teleport1.map2=home_map;
teleport1.visible=true;
teleport1.tox=6400/2;
teleport1.toy=4000/2;

if wave <= 10
{
	var teleport2=instance_create_depth(gg_room_width/2+150, gg_room_height/2, 50, portal_object);
	teleport2.map1=room;
	teleport2.map2=room;
	teleport2.sprite_index=sprite_portal_gg;
	teleport2.visible=true;
	teleport2.tox=gg_room_width/2;
	teleport2.toy=gg_room_height/2;
}


//UPDATE WAVE
if room = GGA then global.alphawave++;
if room = GGB then global.betawave++;
if room = GGD then global.deltawave++;
if room = GGY then global.gammawave++;

if wave > 10 then
{
	started = true;
	wave = 0
	//GIVE REWARDS HERE AND UPDATE STATS
	
	//SHIP SKINS
	var _xp_bonus = 1;
	var _honor_bonus = 1;
	var _uridium_bonus = 1;
	if gamer.ship_name = "adept" then _xp_bonus = 1.1;
	if gamer.ship_name = "veteran" then _xp_bonus = 1.1;
	if gamer.ship_name = "corsair" then _honor_bonus = 1.1;
	if gamer.ship_name = "exalted" then _honor_bonus = 1.1;
	if gamer.ship_name = "goal" then _uridium_bonus = 1.05;
	
	
	if room = GGA
	{
		global.alphacompleted = 1
		global.alphalife = 0
		global.alphaonmap = 0
		global.alphawave = 0
		global.alphaparts = 0
		update_stats("GGA")
		
		var URIDIUM = 20000;
		var _X4 = 20000;
		var HONORPOINTS = 100000;
		var EPPOINTS = 4000000;
		URIDIUM = URIDIUM * (1 + gamer.luck_i * 0.02 + gamer.luck_ii * 0.03) * _uridium_bonus
		EPPOINTS = EPPOINTS * _xp_bonus;
		HONORPOINTS = HONORPOINTS * (1 + gamer.cruelty_i * 0.02 + gamer.cruelty_ii * 0.03) * _honor_bonus;
		update_stats("uridium",URIDIUM);
		update_stats("GGA");
		show_protocol_message("GG Alpha completed");
		show_protocol_message(string(text.received) + " " + string(dotString(URIDIUM)) + " " + "Uridium")
		show_protocol_message(string(text.received) + " " + string(dotString(_X4)) + " " + "UCB-100")
		show_protocol_message(string(text.received) + " " + string(dotString(EPPOINTS)) + " " + string("xp"))
		show_protocol_message(string(text.received) + " " + string(dotString(HONORPOINTS)) + " " + string("honor"))
		global.uridium += URIDIUM
		global.x4 += _X4
		global.experience += EPPOINTS
		global.honor += HONORPOINTS
	}
	
	if room = GGB
	{
		global.betacompleted = 1
		global.betalife = 0
		global.betaonmap = 0
		global.betawave = 0
		global.betaparts = 0
		update_stats("GGB")
		
		var URIDIUM = 40000;
		var _X4 = 40000;
		var EPPOINTS = 8000000;
		var HONORPOINTS = 200000;
		URIDIUM = URIDIUM * (1 + gamer.luck_i * 0.02 + gamer.luck_ii * 0.03) * _uridium_bonus
		EPPOINTS = EPPOINTS * _xp_bonus;
		HONORPOINTS = HONORPOINTS * (1 + gamer.cruelty_i * 0.02 + gamer.cruelty_ii * 0.03) * _honor_bonus;
		update_stats("uridium",URIDIUM);
		update_stats("GGB");
		show_protocol_message("GG Beta completed");
		show_protocol_message(string(text.received) + " " + string(dotString(URIDIUM)) + " " + "Uridium")
		show_protocol_message(string(text.received) + " " + string(dotString(_X4)) + " " + "UCB-100")
		show_protocol_message(string(text.received) + " " + string(dotString(EPPOINTS)) + " " + string("xp"))
		show_protocol_message(string(text.received) + " " + string(dotString(HONORPOINTS)) + " " + string("honor"))
		global.uridium += URIDIUM
		global.x4 += _X4
		global.experience += EPPOINTS
		global.honor += HONORPOINTS
	}
	
	if room = GGY
	{
		global.gammacompleted = 1
		global.gammalife = 0
		global.gammaonmap = 0
		global.gammawave = 0
		global.gammaparts = 0
		update_stats("GGY")
		
		var URIDIUM = 60000;
		var _X4 = 60000;
		var EPPOINTS = 12000000;
		var HONORPOINTS = 300000;
		URIDIUM = URIDIUM * (1 + gamer.luck_i * 0.02 + gamer.luck_ii * 0.03) * _uridium_bonus
		EPPOINTS = EPPOINTS * _xp_bonus;
		HONORPOINTS = HONORPOINTS * (1 + gamer.cruelty_i * 0.02 + gamer.cruelty_ii * 0.03) * _honor_bonus;
		update_stats("uridium",URIDIUM);
		update_stats("GGY");
		show_protocol_message("GG Gamma completed");
		show_protocol_message(string(text.received) + " " + string(dotString(URIDIUM)) + " " + "Uridium")
		show_protocol_message(string(text.received) + " " + string(dotString(_X4)) + " " + "UCB-100")
		show_protocol_message(string(text.received) + " " + string(dotString(EPPOINTS)) + " " + string("xp"))
		show_protocol_message(string(text.received) + " " + string(dotString(HONORPOINTS)) + " " + string("honor"))
		global.uridium += URIDIUM
		global.x4 += _X4
		global.experience += EPPOINTS
		global.honor += HONORPOINTS
	}
	
	if room = GGD
	{
		global.deltacompleted = 1
		global.deltalife = 0
		global.deltaonmap = 0
		global.deltawave = 0
		global.deltaparts = 0
		update_stats("GGD")
		
		var URIDIUM = 45000;
		var _X4 = 45000;
		var EPPOINTS = 9000000;
		var HONORPOINTS = 225000;
		URIDIUM = URIDIUM * (1 + gamer.luck_i * 0.02 + gamer.luck_ii * 0.03) * _uridium_bonus
		EPPOINTS = EPPOINTS * _xp_bonus;
		HONORPOINTS = HONORPOINTS * (1 + gamer.cruelty_i * 0.02 + gamer.cruelty_ii * 0.03) * _honor_bonus;
		update_stats("uridium",URIDIUM);
		update_stats("GGD");
		show_protocol_message("GG Delta completed");
		show_protocol_message(string(text.received) + " " + string(dotString(URIDIUM)) + " " + "Uridium")
		show_protocol_message(string(text.received) + " " + string(dotString(_X4)) + " " + "UCB-100")
		show_protocol_message(string(text.received) + " " + string(dotString(EPPOINTS)) + " " + string("xp"))
		show_protocol_message(string(text.received) + " " + string(dotString(HONORPOINTS)) + " " + string("honor"))
		global.uridium += URIDIUM
		global.x4 += _X4
		global.experience += EPPOINTS
		global.honor += HONORPOINTS
	}
}




