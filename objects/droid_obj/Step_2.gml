/******************************************
Don't forget to also add them to ships
******************************************/
var ownerx=gamer.x;
var ownery=gamer.y;

if owner=gamer.id then
{
if global.droneformation=1 then    
{
switch pos
{
case 1: next_x=ownerx+lengthdir_x(130,owner.directions+180);
    next_y=ownery+lengthdir_y(130,owner.directions+180); break;
case 2:
    {next_x=ownerx+lengthdir_x(168,owner.directions-168);
     next_y=ownery+lengthdir_y(168,owner.directions-168);} break;
case 3:
    {next_x=ownerx+lengthdir_x(168,owner.directions+168);
    next_y=ownery+lengthdir_y(168,owner.directions+168);} break;
case 4:
    {next_x=ownerx+lengthdir_x(200,owner.directions+180);
     next_y=ownery+lengthdir_y(200,owner.directions+180);} break;
case 5:
    {next_x=ownerx+lengthdir_x(142,owner.directions+65);
    next_y=ownery+lengthdir_y(142,owner.directions+65);} break;
case 6:
    {next_x=ownerx+lengthdir_x(142,owner.directions-65);
    next_y=ownery+lengthdir_y(142,owner.directions-65);} break;
case 7:
    {next_x=ownerx+lengthdir_x(163,owner.directions+81);
    next_y=ownery+lengthdir_y(163,owner.directions+81);} break; 
case 8:
    {next_x=ownerx+lengthdir_x(163,owner.directions-81);
    next_y=ownery+lengthdir_y(163,owner.directions-81);} break;
case 9:
    {next_x=ownerx+lengthdir_x(129,owner.directions-95);
    next_y=ownery+lengthdir_y(129,owner.directions-95);} break;
case 10:
    {next_x=ownerx+lengthdir_x(129,owner.directions+95);
    next_y=ownery+lengthdir_y(129,owner.directions+95);} break;
}
if owner.target!=noone and pos<=4 then {
    if point_distance(x,y,next_x,next_y) then
        mp_linear_step_object(next_x,next_y,(owner.ship_speed+speedn+15)*1.25,noone);
    else speed:=0;}
else {
   if next_x!=x and next_y!=y then
        mp_linear_step_object(next_x,next_y,(owner.ship_speed+speedn+15)*1.25,noone);
   else speed:=0;}
}
else if global.droneformation=2 then        
{
switch pos
{
case 1: next_x=owner.x+lengthdir_x(-200,owner.directions-212);
    next_y=owner.y+lengthdir_y(-200,owner.directions-212); break;
case 2:
    {next_x=owner.x+lengthdir_x(-200,owner.directions+212);
     next_y=owner.y+lengthdir_y(-200,owner.directions+212);} break;
case 3:
    {next_x=owner.x+lengthdir_x(-120,owner.directions+60);
    next_y=owner.y+lengthdir_y(-120,owner.directions+60);} break;
case 4:
    {next_x=owner.x+lengthdir_x(-120,owner.directions-60);
     next_y=owner.y+lengthdir_y(-120,owner.directions-60);} break;
case 5:
    {next_x=owner.x+lengthdir_x(-170,owner.directions+0);
    next_y=owner.y+lengthdir_y(-170,owner.directions-0);} break;
case 6:
    {next_x=owner.x+lengthdir_x(-160,owner.directions-110);
    next_y=owner.y+lengthdir_y(-160,owner.directions-110);} break;
case 7:
    {next_x=owner.x+lengthdir_x(-160,owner.directions+110);
    next_y=owner.y+lengthdir_y(-160,owner.directions+110);} break; 
case 8:
    {next_x=owner.x+lengthdir_x(130,owner.directions+0);
    next_y=owner.y+lengthdir_y(130,owner.directions-0);} break;
case 9:
    {next_x=owner.x+lengthdir_x(-130,owner.directions-90);
    next_y=owner.y+lengthdir_y(-130,owner.directions-90);} break;
case 10:
    {next_x=owner.x+lengthdir_x(-130,owner.directions+90);
    next_y=owner.y+lengthdir_y(-130,owner.directions+90);} break;
    } 
if owner.target!=noone and pos<=4 then {
    if point_distance(x,y,next_x,next_y) then
        mp_linear_step_object(next_x,next_y,(owner.ship_speed+speedn+4)*3.5,noone);
    else speed:=0;}
else {
    if next_x!=x and next_y!=y then
        mp_linear_step_object(next_x,next_y,(owner.ship_speed+speedn)*3.5,noone);
    else speed:=0;}
}
else if global.droneformation=3 then{
switch pos
{
case 1: next_x=owner.x+lengthdir_x(+210,owner.directions-50);
    next_y=owner.y+lengthdir_y(+210,owner.directions-50); break;
case 2:
    {next_x=owner.x+lengthdir_x(+210,owner.directions+50);
     next_y=owner.y+lengthdir_y(+210,owner.directions+50);} break;
case 3:
    {next_x=owner.x+lengthdir_x(-120,owner.directions+40);
    next_y=owner.y+lengthdir_y(-120,owner.directions+40);} break;
case 4:
    {next_x=owner.x+lengthdir_x(-120,owner.directions-40);
     next_y=owner.y+lengthdir_y(-120,owner.directions-40);} break;
case 5:
    {next_x=owner.x+lengthdir_x(220,owner.directions-70);
    next_y=owner.y+lengthdir_y(220,owner.directions-70);} break;
case 6:
    {next_x=owner.x+lengthdir_x(135,owner.directions-55);
    next_y=owner.y+lengthdir_y(135,owner.directions-55);} break;
case 7:
    {next_x=owner.x+lengthdir_x(135,owner.directions+55);
    next_y=owner.y+lengthdir_y(135,owner.directions+55);} break; 
case 8:
    {next_x=owner.x+lengthdir_x(220,owner.directions+70);
    next_y=owner.y+lengthdir_y(220,owner.directions+70);} break;
case 9:
    {next_x=owner.x+lengthdir_x(-180,owner.directions-40);
    next_y=owner.y+lengthdir_y(-180,owner.directions-40);} break;
case 10:
    {next_x=owner.x+lengthdir_x(-180,owner.directions+40);
    next_y=owner.y+lengthdir_y(-180,owner.directions+40);} break;
    }
if owner.target!=noone and pos<=4 then {
    if point_distance(x,y,next_x,next_y) then
        mp_linear_step_object(next_x,next_y,(owner.ship_speed+speedn+15)*1.25,noone);
    else speed:=0;}
else {
    if next_x!=x and next_y!=y then
        mp_linear_step_object(next_x,next_y,(owner.ship_speed+speedn+15)*1.25,noone);
    else speed:=0;}
}
//Add here
}   






//For AI ships here
//if owner.object_index!=gamer then
if instance_exists(owner)
{
	if owner!=gamer.id then
	{
	if owner.droneformation=1 then    
	{
	switch pos
	{
	case 1: next_x=owner.x+lengthdir_x(130,owner.directions+180);
	    next_y=owner.y+lengthdir_y(130,owner.directions+180); break;
	case 2:
	    {next_x=owner.x+lengthdir_x(168,owner.directions-168);
	     next_y=owner.y+lengthdir_y(168,owner.directions-168);} break;
	case 3:
	    {next_x=owner.x+lengthdir_x(168,owner.directions+168);
	    next_y=owner.y+lengthdir_y(168,owner.directions+168);} break;
	case 4:
	    {next_x=owner.x+lengthdir_x(200,owner.directions+180);
	     next_y=owner.y+lengthdir_y(200,owner.directions+180);} break;
	case 5:
	    {next_x=owner.x+lengthdir_x(142,owner.directions+65);
	    next_y=owner.y+lengthdir_y(142,owner.directions+65);} break;
	case 6:
	    {next_x=owner.x+lengthdir_x(142,owner.directions-65);
	    next_y=owner.y+lengthdir_y(142,owner.directions-65);} break;
	case 7:
	    {next_x=owner.x+lengthdir_x(163,owner.directions+81);
	    next_y=owner.y+lengthdir_y(163,owner.directions+81);} break; 
	case 8:
	    {next_x=owner.x+lengthdir_x(163,owner.directions-81);
	    next_y=owner.y+lengthdir_y(163,owner.directions-81);} break;
	case 9:
	    {next_x=owner.x+lengthdir_x(129,owner.directions-95);
	    next_y=owner.y+lengthdir_y(129,owner.directions-95);} break;
	case 10:
	    {next_x=owner.x+lengthdir_x(129,owner.directions+95);
	    next_y=owner.y+lengthdir_y(129,owner.directions+95);} break;
	}
	//if owner.target!=noone and pos<=4 then {
	    if point_distance(x,y,next_x,next_y) then
	        mp_linear_step_object(next_x,next_y,(owner.ship_speed+speedn+15)*1.25,noone);
	    else speed:=0;//}
	//else {
	//    if next_x!=x and next_y!=y then
	//        mp_linear_step_object(next_x,next_y,(owner.ship_speed+speedn+15)*1.25,noone);
	//    else speed:=0;}
	}
	else if owner.droneformation=2 then        
	{
	switch pos
	{
	case 1: next_x=owner.x+lengthdir_x(-200,owner.directions-212);
	    next_y=owner.y+lengthdir_y(-200,owner.directions-212); break;
	case 2:
	    {next_x=owner.x+lengthdir_x(-200,owner.directions+212);
	     next_y=owner.y+lengthdir_y(-200,owner.directions+212);} break;
	case 3:
	    {next_x=owner.x+lengthdir_x(-120,owner.directions+60);
	    next_y=owner.y+lengthdir_y(-120,owner.directions+60);} break;
	case 4:
	    {next_x=owner.x+lengthdir_x(-120,owner.directions-60);
	     next_y=owner.y+lengthdir_y(-120,owner.directions-60);} break;
	case 5:
	    {next_x=owner.x+lengthdir_x(-170,owner.directions+0);
	    next_y=owner.y+lengthdir_y(-170,owner.directions-0);} break;
	case 6:
	    {next_x=owner.x+lengthdir_x(-160,owner.directions-110);
	    next_y=owner.y+lengthdir_y(-160,owner.directions-110);} break;
	case 7:
	    {next_x=owner.x+lengthdir_x(-160,owner.directions+110);
	    next_y=owner.y+lengthdir_y(-160,owner.directions+110);} break; 
	case 8:
	    {next_x=owner.x+lengthdir_x(130,owner.directions+0);
	    next_y=owner.y+lengthdir_y(130,owner.directions-0);} break;
	case 9:
	    {next_x=owner.x+lengthdir_x(-130,owner.directions-90);
	    next_y=owner.y+lengthdir_y(-130,owner.directions-90);} break;
	case 10:
	    {next_x=owner.x+lengthdir_x(-130,owner.directions+90);
	    next_y=owner.y+lengthdir_y(-130,owner.directions+90);} break;
	    } 
	//if owner.target!=noone and pos<=4 then {
	    if point_distance(x,y,next_x,next_y) then
	        mp_linear_step_object(next_x,next_y,(owner.ship_speed+speedn+15)*1.25,noone);
	    else speed:=0;//}
	//else {
	//    if next_x!=x and next_y!=y then
	//        mp_linear_step_object(next_x,next_y,(owner.ship_speed+speedn+15)*1.25,noone);
	//    else speed:=0;}
	}
	//Add here
	else if owner.droneformation=3 then{
	switch pos
	{
	case 1: next_x=owner.x+lengthdir_x(+210,owner.directions-50);
	    next_y=owner.y+lengthdir_y(+210,owner.directions-50); break;
	case 2:
	    {next_x=owner.x+lengthdir_x(+210,owner.directions+50);
	     next_y=owner.y+lengthdir_y(+210,owner.directions+50);} break;
	case 3:
	    {next_x=owner.x+lengthdir_x(-120,owner.directions+40);
	    next_y=owner.y+lengthdir_y(-120,owner.directions+40);} break;
	case 4:
	    {next_x=owner.x+lengthdir_x(-120,owner.directions-40);
	     next_y=owner.y+lengthdir_y(-120,owner.directions-40);} break;
	case 5:
	    {next_x=owner.x+lengthdir_x(220,owner.directions-70);
	    next_y=owner.y+lengthdir_y(220,owner.directions-70);} break;
	case 6:
	    {next_x=owner.x+lengthdir_x(135,owner.directions-55);
	    next_y=owner.y+lengthdir_y(135,owner.directions-55);} break;
	case 7:
	    {next_x=owner.x+lengthdir_x(135,owner.directions+55);
	    next_y=owner.y+lengthdir_y(135,owner.directions+55);} break; 
	case 8:
	    {next_x=owner.x+lengthdir_x(220,owner.directions+70);
	    next_y=owner.y+lengthdir_y(220,owner.directions+70);} break;
	case 9:
	    {next_x=owner.x+lengthdir_x(-180,owner.directions-40);
	    next_y=owner.y+lengthdir_y(-180,owner.directions-40);} break;
	case 10:
	    {next_x=owner.x+lengthdir_x(-180,owner.directions+40);
	    next_y=owner.y+lengthdir_y(-180,owner.directions+40);} break;
	    }
	//if owner.target!=noone and pos<=4 then {
	    if point_distance(x,y,next_x,next_y) then
	        mp_linear_step_object(next_x,next_y,(owner.ship_speed+speedn+15)*1.25,noone);
	    else speed:=0;//}
	//else {
	 //   if next_x!=x and next_y!=y then
	 //       mp_linear_step_object(next_x,next_y,(owner.ship_speed+speedn+15)*1.25,noone);
	//    else speed:=0;}
		}
	}   
}