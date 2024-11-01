/// @description change attack type

if global.attacking_type = 0 then 
{
	global.camera_width = 1920 * 1.15;
	global.camera_height = 1080 * 1.15;
	global.attacking_type = 1 
}
else 
{
	global.camera_width = 1920*0.85;
	global.camera_height = 1080*0.85;
	global.attacking_type = 0;
}