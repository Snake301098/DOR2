var _xx = tox;
var _yy = toy;

with (repbot)    {if owner=gamer then instance_destroy()};  
gamer.alarm[0]=2;
gamer.target=noone;
gamer.teleport_[0].image_index=0;

gamer.x = tox;
gamer.y = toy;


var i;
if room=map1 then
     {
     backgroundRL.alarm[0]=1;
     room_goto(map2);
     }
else if room=map2 then
     {
     backgroundRL.alarm[0]=1;    
     room_goto(map1);  
     }
instance_destroy();




