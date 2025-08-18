///@description init ships


//spawn mmo
for(var i=1;i<=mmo_ships;i+=1)
{
	spawn_ship(room_width/4+irandom_range(-100,100),room_height*3/4+irandom_range(-100,100),0,"battle",1,choose("goliath","goliath","goliath","goliath","vengeance","newships"),choose(2,3,3,3,4,4,4,4,5,5),,,);
}

//spawn eic
for(var i=1;i<=eic_ships;i+=1)
{
	spawn_ship(room_width/2+irandom_range(-100,100),room_height/4+irandom_range(-100,100),1,"battle",1,choose("goliath","goliath","goliath","goliath","vengeance","newships"),choose(2,3,3,3,4,4,4,4,5,5),,,);
}

//spawn vru
for(var i=1;i<=vru_ships;i+=1)
{
	spawn_ship(room_width*3/4+irandom_range(-100,100),room_height*3/4+irandom_range(-100,100),2,"battle",1,choose("goliath","goliath","goliath","goliath","vengeance","newships"),choose(2,3,3,3,4,4,4,4,5,5),,,);
}

mmo_ships = nbr_ships;
eic_ships = nbr_ships;
vru_ships = nbr_ships;

alarm[4]=1;
alarm[5]=1;
