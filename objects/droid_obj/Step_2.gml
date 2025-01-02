/******************************************
Don't forget to also add them to ships
******************************************/
var ownerx=owner.x;
var ownery=owner.y;

if owner=gamer.id then
{
if global.droneformation=1 then    
{
switch pos
{
case 1: next_x=ownerx+lengthdir_x(130,owner.follow_angle+180);
    next_y=ownery+lengthdir_y(130,owner.follow_angle+180); break;
case 2:
    {next_x=ownerx+lengthdir_x(168,owner.follow_angle-168);
     next_y=ownery+lengthdir_y(168,owner.follow_angle-168);} break;
case 3:
    {next_x=ownerx+lengthdir_x(168,owner.follow_angle+168);
    next_y=ownery+lengthdir_y(168,owner.follow_angle+168);} break;
case 4:
    {next_x=ownerx+lengthdir_x(200,owner.follow_angle+180);
     next_y=ownery+lengthdir_y(200,owner.follow_angle+180);} break;
case 5:
    {next_x=ownerx+lengthdir_x(142,owner.follow_angle+65);
    next_y=ownery+lengthdir_y(142,owner.follow_angle+65);} break;
case 6:
    {next_x=ownerx+lengthdir_x(142,owner.follow_angle-65);
    next_y=ownery+lengthdir_y(142,owner.follow_angle-65);} break;
case 7:
    {next_x=ownerx+lengthdir_x(163,owner.follow_angle+81);
    next_y=ownery+lengthdir_y(163,owner.follow_angle+81);} break; 
case 8:
    {next_x=ownerx+lengthdir_x(163,owner.follow_angle-81);
    next_y=ownery+lengthdir_y(163,owner.follow_angle-81);} break;
case 9:
    {next_x=ownerx+lengthdir_x(129,owner.follow_angle-95);
    next_y=ownery+lengthdir_y(129,owner.follow_angle-95);} break;
case 10:
    {next_x=ownerx+lengthdir_x(129,owner.follow_angle+95);
    next_y=ownery+lengthdir_y(129,owner.follow_angle+95);} break;
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
case 1: next_x=owner.x+lengthdir_x(-200,owner.follow_angle-212);
    next_y=owner.y+lengthdir_y(-200,owner.follow_angle-212); break;
case 2:
    {next_x=owner.x+lengthdir_x(-200,owner.follow_angle+212);
     next_y=owner.y+lengthdir_y(-200,owner.follow_angle+212);} break;
case 3:
    {next_x=owner.x+lengthdir_x(-120,owner.follow_angle+60);
    next_y=owner.y+lengthdir_y(-120,owner.follow_angle+60);} break;
case 4:
    {next_x=owner.x+lengthdir_x(-120,owner.follow_angle-60);
     next_y=owner.y+lengthdir_y(-120,owner.follow_angle-60);} break;
case 5:
    {next_x=owner.x+lengthdir_x(-170,owner.follow_angle+0);
    next_y=owner.y+lengthdir_y(-170,owner.follow_angle-0);} break;
case 6:
    {next_x=owner.x+lengthdir_x(-160,owner.follow_angle-110);
    next_y=owner.y+lengthdir_y(-160,owner.follow_angle-110);} break;
case 7:
    {next_x=owner.x+lengthdir_x(-160,owner.follow_angle+110);
    next_y=owner.y+lengthdir_y(-160,owner.follow_angle+110);} break; 
case 8:
    {next_x=owner.x+lengthdir_x(130,owner.follow_angle+0);
    next_y=owner.y+lengthdir_y(130,owner.follow_angle-0);} break;
case 9:
    {next_x=owner.x+lengthdir_x(-130,owner.follow_angle-90);
    next_y=owner.y+lengthdir_y(-130,owner.follow_angle-90);} break;
case 10:
    {next_x=owner.x+lengthdir_x(-130,owner.follow_angle+90);
    next_y=owner.y+lengthdir_y(-130,owner.follow_angle+90);} break;
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
case 1: next_x=owner.x+lengthdir_x(+210,owner.follow_angle-50);
    next_y=owner.y+lengthdir_y(+210,owner.follow_angle-50); break;
case 2:
    {next_x=owner.x+lengthdir_x(+210,owner.follow_angle+50);
     next_y=owner.y+lengthdir_y(+210,owner.follow_angle+50);} break;
case 3:
    {next_x=owner.x+lengthdir_x(-120,owner.follow_angle+40);
    next_y=owner.y+lengthdir_y(-120,owner.follow_angle+40);} break;
case 4:
    {next_x=owner.x+lengthdir_x(-120,owner.follow_angle-40);
     next_y=owner.y+lengthdir_y(-120,owner.follow_angle-40);} break;
case 5:
    {next_x=owner.x+lengthdir_x(220,owner.follow_angle-70);
    next_y=owner.y+lengthdir_y(220,owner.follow_angle-70);} break;
case 6:
    {next_x=owner.x+lengthdir_x(135,owner.follow_angle-55);
    next_y=owner.y+lengthdir_y(135,owner.follow_angle-55);} break;
case 7:
    {next_x=owner.x+lengthdir_x(135,owner.follow_angle+55);
    next_y=owner.y+lengthdir_y(135,owner.follow_angle+55);} break; 
case 8:
    {next_x=owner.x+lengthdir_x(220,owner.follow_angle+70);
    next_y=owner.y+lengthdir_y(220,owner.follow_angle+70);} break;
case 9:
    {next_x=owner.x+lengthdir_x(-180,owner.follow_angle-40);
    next_y=owner.y+lengthdir_y(-180,owner.follow_angle-40);} break;
case 10:
    {next_x=owner.x+lengthdir_x(-180,owner.follow_angle+40);
    next_y=owner.y+lengthdir_y(-180,owner.follow_angle+40);} break;
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
	case 1: next_x=owner.x+lengthdir_x(130,owner.follow_angle+180);
	    next_y=owner.y+lengthdir_y(130,owner.follow_angle+180); break;
	case 2:
	    {next_x=owner.x+lengthdir_x(168,owner.follow_angle-168);
	     next_y=owner.y+lengthdir_y(168,owner.follow_angle-168);} break;
	case 3:
	    {next_x=owner.x+lengthdir_x(168,owner.follow_angle+168);
	    next_y=owner.y+lengthdir_y(168,owner.follow_angle+168);} break;
	case 4:
	    {next_x=owner.x+lengthdir_x(200,owner.follow_angle+180);
	     next_y=owner.y+lengthdir_y(200,owner.follow_angle+180);} break;
	case 5:
	    {next_x=owner.x+lengthdir_x(142,owner.follow_angle+65);
	    next_y=owner.y+lengthdir_y(142,owner.follow_angle+65);} break;
	case 6:
	    {next_x=owner.x+lengthdir_x(142,owner.follow_angle-65);
	    next_y=owner.y+lengthdir_y(142,owner.follow_angle-65);} break;
	case 7:
	    {next_x=owner.x+lengthdir_x(163,owner.follow_angle+81);
	    next_y=owner.y+lengthdir_y(163,owner.follow_angle+81);} break; 
	case 8:
	    {next_x=owner.x+lengthdir_x(163,owner.follow_angle-81);
	    next_y=owner.y+lengthdir_y(163,owner.follow_angle-81);} break;
	case 9:
	    {next_x=owner.x+lengthdir_x(129,owner.follow_angle-95);
	    next_y=owner.y+lengthdir_y(129,owner.follow_angle-95);} break;
	case 10:
	    {next_x=owner.x+lengthdir_x(129,owner.follow_angle+95);
	    next_y=owner.y+lengthdir_y(129,owner.follow_angle+95);} break;
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
	case 1: next_x=owner.x+lengthdir_x(-200,owner.follow_angle-212);
	    next_y=owner.y+lengthdir_y(-200,owner.follow_angle-212); break;
	case 2:
	    {next_x=owner.x+lengthdir_x(-200,owner.follow_angle+212);
	     next_y=owner.y+lengthdir_y(-200,owner.follow_angle+212);} break;
	case 3:
	    {next_x=owner.x+lengthdir_x(-120,owner.follow_angle+60);
	    next_y=owner.y+lengthdir_y(-120,owner.follow_angle+60);} break;
	case 4:
	    {next_x=owner.x+lengthdir_x(-120,owner.follow_angle-60);
	     next_y=owner.y+lengthdir_y(-120,owner.follow_angle-60);} break;
	case 5:
	    {next_x=owner.x+lengthdir_x(-170,owner.follow_angle+0);
	    next_y=owner.y+lengthdir_y(-170,owner.follow_angle-0);} break;
	case 6:
	    {next_x=owner.x+lengthdir_x(-160,owner.follow_angle-110);
	    next_y=owner.y+lengthdir_y(-160,owner.follow_angle-110);} break;
	case 7:
	    {next_x=owner.x+lengthdir_x(-160,owner.follow_angle+110);
	    next_y=owner.y+lengthdir_y(-160,owner.follow_angle+110);} break; 
	case 8:
	    {next_x=owner.x+lengthdir_x(130,owner.follow_angle+0);
	    next_y=owner.y+lengthdir_y(130,owner.follow_angle-0);} break;
	case 9:
	    {next_x=owner.x+lengthdir_x(-130,owner.follow_angle-90);
	    next_y=owner.y+lengthdir_y(-130,owner.follow_angle-90);} break;
	case 10:
	    {next_x=owner.x+lengthdir_x(-130,owner.follow_angle+90);
	    next_y=owner.y+lengthdir_y(-130,owner.follow_angle+90);} break;
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
	case 1: next_x=owner.x+lengthdir_x(+210,owner.follow_angle-50);
	    next_y=owner.y+lengthdir_y(+210,owner.follow_angle-50); break;
	case 2:
	    {next_x=owner.x+lengthdir_x(+210,owner.follow_angle+50);
	     next_y=owner.y+lengthdir_y(+210,owner.follow_angle+50);} break;
	case 3:
	    {next_x=owner.x+lengthdir_x(-120,owner.follow_angle+40);
	    next_y=owner.y+lengthdir_y(-120,owner.follow_angle+40);} break;
	case 4:
	    {next_x=owner.x+lengthdir_x(-120,owner.follow_angle-40);
	     next_y=owner.y+lengthdir_y(-120,owner.follow_angle-40);} break;
	case 5:
	    {next_x=owner.x+lengthdir_x(220,owner.follow_angle-70);
	    next_y=owner.y+lengthdir_y(220,owner.follow_angle-70);} break;
	case 6:
	    {next_x=owner.x+lengthdir_x(135,owner.follow_angle-55);
	    next_y=owner.y+lengthdir_y(135,owner.follow_angle-55);} break;
	case 7:
	    {next_x=owner.x+lengthdir_x(135,owner.follow_angle+55);
	    next_y=owner.y+lengthdir_y(135,owner.follow_angle+55);} break; 
	case 8:
	    {next_x=owner.x+lengthdir_x(220,owner.follow_angle+70);
	    next_y=owner.y+lengthdir_y(220,owner.follow_angle+70);} break;
	case 9:
	    {next_x=owner.x+lengthdir_x(-180,owner.follow_angle-40);
	    next_y=owner.y+lengthdir_y(-180,owner.follow_angle-40);} break;
	case 10:
	    {next_x=owner.x+lengthdir_x(-180,owner.follow_angle+40);
	    next_y=owner.y+lengthdir_y(-180,owner.follow_angle+40);} break;
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