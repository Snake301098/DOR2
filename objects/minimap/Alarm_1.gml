/// @description rankpoints fluctuation

var i = random(1);
var j = random(1);
	
var X = sqrt(-2*ln(i))*cos(2*pi*j)
	
var avg = -0.00015
var std = -0.0012
	
global.rpfactor += (avg + std * X)


alarm[1] = irandom(10*60) * room_speed;

