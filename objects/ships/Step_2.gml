/// @description 

//OUT OF BOUNDARIES
if x<0 or x>room_width or y<0 or y>room_height
{
	var myid = id;
	//with(way){if owner=id then instance_destroy()}
	path_end();
	var speed_come_back = 5;
	if x<0 then x+=speed_come_back;
	if y<0 then y+=speed_come_back;
	if x>room_width then x-=speed_come_back;
	if y>room_height then y-=speed_come_back;
}

