/// @description 
wCam = lerp(global.camera_width, wCam, 0.8)
hCam = lerp(global.camera_height, hCam, 0.8)

if global.camera_width != wCam or global.camera_height != hCam then camera_set_view_size(view_camera[0], 1920*1, 1080*1); //camera_set_view_size(view_camera[0], wCam, hCam);


var xdec = (window_mouse_get_x()-window_get_width()/2)/2
var ydec = (window_mouse_get_y()-window_get_height()/2)/2

if xdec > 500 then xdec = 500
if xdec < -500 then xdec = -500
if ydec > 200 then ydec = 200
if ydec < -200 then ydec = -200

/*
var xCam = clamp(gamer.x - wCam / 2 + xdec, 0, room_width - wCam);
var yCam = clamp(gamer.y - hCam / 2 + ydec, 0, room_height - hCam);


var curX = camera_get_view_x(view_camera[0]);
var curY = camera_get_view_y(view_camera[0]);

var newX = lerp(curX, xCam, 0.3);
var newY = lerp(curY, yCam, 0.3);
*/


camera_set_view_pos(view_camera[0], gamer.x - 1920/2, gamer.y - 1080/2) //wCam/2, gamer.y - hCam/2)