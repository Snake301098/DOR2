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
	show_protocol_message("GG completed");
	
	if room = GGA
	{
		global.alphacompleted = 1
		global.alphalife = 0
		global.alphaonmap = 0
		global.alphawave = 0
		global.alphaparts = 0
		update_stats("GGA")
	}
	
	if room = GGB
	{
		global.betacompleted = 1
		global.betalife = 0
		global.betaonmap = 0
		global.betawave = 0
		global.betaparts = 0
		update_stats("GGA")
	}
	
	if room = GGY
	{
		global.gammacompleted = 1
		global.gammalife = 0
		global.gammaonmap = 0
		global.gammawave = 0
		global.gammaparts = 0
		update_stats("GGY")
	}
	
	if room = GGD
	{
		global.deltacompleted = 1
		global.deltalife = 0
		global.deltaonmap = 0
		global.deltawave = 0
		global.deltaparts = 0
		update_stats("GGD")
	}
}
