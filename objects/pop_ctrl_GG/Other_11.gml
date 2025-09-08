/// @description Start wave

if wave <= 10 and started = false then
{
	//DO SMTH
	started = true;
	if room = GGA then event_user(3); //start round for GGA
	if room = GGB then event_user(4); //start round for GGB
	if room = GGD then event_user(5); //start round for GGD
	if room = GGY then event_user(6); //start round for GGY
}
if wave = 11 and started = false then
{
	started = true;
	wave = 0
	//GIVE REWARDS HERE AND UPDATE STATS
	
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
		var EPPOINTS = 100000;
		var HONORPOINTS = 4000000;
		show_protocol_message("GG Alpha completed");
		show_protocol_message(string(text.received) + " " + string(dotString(URIDIUM)) + " " + "Uridium")
		show_protocol_message(string(text.received) + " " + string(dotString(_X4)) + " " + "UCB-100")
		show_protocol_message(string(text.received) + " " + string(dotString(EPPOINTS)) + " " + string("xp"))
		show_protocol_message(string(text.received) + " " + string(dotString(HONORPOINTS)) + " " + string("honor"))
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
		var EPPOINTS = 200000;
		var HONORPOINTS = 8000000;
		show_protocol_message("GG Beta completed");
		show_protocol_message(string(text.received) + " " + string(dotString(URIDIUM)) + " " + "Uridium")
		show_protocol_message(string(text.received) + " " + string(dotString(_X4)) + " " + "UCB-100")
		show_protocol_message(string(text.received) + " " + string(dotString(EPPOINTS)) + " " + string("xp"))
		show_protocol_message(string(text.received) + " " + string(dotString(HONORPOINTS)) + " " + string("honor"))
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
		var EPPOINTS = 300000;
		var HONORPOINTS = 12000000;
		show_protocol_message("GG Gamma completed");
		show_protocol_message(string(text.received) + " " + string(dotString(URIDIUM)) + " " + "Uridium")
		show_protocol_message(string(text.received) + " " + string(dotString(_X4)) + " " + "UCB-100")
		show_protocol_message(string(text.received) + " " + string(dotString(EPPOINTS)) + " " + string("xp"))
		show_protocol_message(string(text.received) + " " + string(dotString(HONORPOINTS)) + " " + string("honor"))
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
		var EPPOINTS = 225000;
		var HONORPOINTS = 9000000;
		show_protocol_message("GG Delta completed");
		show_protocol_message(string(text.received) + " " + string(dotString(URIDIUM)) + " " + "Uridium")
		show_protocol_message(string(text.received) + " " + string(dotString(_X4)) + " " + "UCB-100")
		show_protocol_message(string(text.received) + " " + string(dotString(EPPOINTS)) + " " + string("xp"))
		show_protocol_message(string(text.received) + " " + string(dotString(HONORPOINTS)) + " " + string("honor"))
	}
}
