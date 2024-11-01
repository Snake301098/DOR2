/// @description 
life = 0;
wave = 0;
count_down_step = 0;
started = false;

if room = GGA then
{
	life = global.alphalife;
	wave = global.alphawave;
	if wave = 0 then {wave = 1; global.alphawave=1;}
}

if room = GGB then
{
	life = global.betalife;
	wave = global.betawave;
	if wave = 0 then {wave = 1; global.betawave=1;}
}

if room = GGD then
{
	life = global.deltalife;
	wave = global.deltawave;
	if wave = 0 then {wave = 1; global.deltawave=1;}
}

if room = GGY then
{
	life = global.gammalife;
	wave = global.gammawave;
	if wave = 0 then {wave = 1; global.gammawave=1;}
}

with(ship)
{
	x = -3000; //so we don't see the explosion when they got killed
	instance_destroy();
}

event_user(0);