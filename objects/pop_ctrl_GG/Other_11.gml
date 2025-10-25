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

