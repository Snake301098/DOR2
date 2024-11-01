
if instance_exists(target) then
{
    if !instance_exists(target) and speed=0 then direction=image_angle;
    if instance_exists(target) then image_angle = set_angle(image_angle, point_direction(x,y,target.x,target.y), 20);
}
else
{
    image_angle = set_angle(image_angle, direction, 20);
}
	
    
//if(target.emp == 1) {target:=noone; target=noone;}
