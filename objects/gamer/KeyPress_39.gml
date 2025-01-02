//x=room_width/2;
//y=room_height/2
spawn_ship(gamer.x,gamer.y,1,,,,1,,)


var _box = instance_create_depth(gamer.x, gamer.y + 50,0,chest)
_box.type = "green"


var _box2 = instance_create_depth(gamer.x, gamer.y - 50,0,chest)
_box2.type = "gold"
