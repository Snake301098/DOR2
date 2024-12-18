//x=room_width/2;
//y=room_height/2
aze = instance_create_depth(gamer.x,gamer.y,0,ship)
aze.corporation=1;
aze.action[0]="farming";
aze.Power=4;
aze.Ship="solace";
aze.Shiptype="goliath";


var _box = instance_create_depth(gamer.x, gamer.y + 50,0,chest)
_box.type = "green"


var _box2 = instance_create_depth(gamer.x, gamer.y - 50,0,chest)
_box2.type = "gold"
