event_inherited();

//Uncomment for 3D aliens
image_index=image_number*direction/360

if room=GGA or room=GGB or room=GGY or room=GGD then
{
target=gamer.id
}  
            
/*
//Passive fix :D
if passive=true then
{
//Check if somebody is attacking us;
var enemy;
enemy=target.id
if enemy.id = id and target.attacking=true then{
//Somebody is attacking us:D
attacking=true; target=target
}
else
{
//Our target is not attacking us, switching target
target=noone;
}
}            