x=0;
y=0;

/*mapowner = info_map(room,"owners");
sprite_index=base2_spr;
if mapowner = 0 then sprite_index:=base0_spr;
if mapowner = 1 then sprite_index:=base1_spr;
if mapowner = 2 then sprite_index:=base2_spr;*/

global.tdm_tickets -= 1;

decx=32;
decy=60;

nbr_ships = 5;
mmo_ships=0;
eic_ships=0;
vru_ships=0;
isover="no";

//clean followers
with(ship)
{
	x = -3000; //so we don't see the explosion when they got killed
	instance_destroy();
}

xx = 1920-400;
yy = 100;

countdown = 10;
TDM_is_over = false;

//INIT
instance_destroy(way);

if gamer.corporation = 0 then {with(gamer){x = room_width/4+irandom_range(-100,100); y = room_height*3/4+irandom_range(-100,100);} mmo_ships = nbr_ships - 1} else mmo_ships = nbr_ships;
if gamer.corporation = 1 then {with(gamer){x = room_width/2+irandom_range(-100,100); y = room_height/4+irandom_range(-100,100);} eic_ships = nbr_ships - 1} else eic_ships = nbr_ships;
if gamer.corporation = 2 then {with(gamer){x = room_width*3/4+irandom_range(-100,100); y = room_height*3/4+irandom_range(-100,100);} vru_ships = nbr_ships - 1} else vru_ships = nbr_ships;


//alarm[2]=1;
alarm[3]=1;