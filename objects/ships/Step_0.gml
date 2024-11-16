
if instance_exists(target) then
{
    if !instance_exists(target) and speed=0 then direction=image_angle;
    if instance_exists(target) then image_angle = set_angle(image_angle, point_direction(x,y,target.x,target.y), 22);
}
else
{
    image_angle = set_angle(image_angle, direction, 22);
}
	
follow_angle = lerp(follow_angle, image_angle, 0.072) //follow angle for drones
//if(target.emp == 1) {target:=noone; target=noone;}
