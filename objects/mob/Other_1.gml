/// @description 
var myID = id;

with(way){if owner  = myID then instance_destroy()};

var _x = irandom_range(300, room_width-300);
var _y = irandom_range(300, room_height-300);
var _way = instance_create_depth(_x,_y,0,way);
_way.owner = id;

