
if instance_exists(target) and attacking = true then
{
    if !instance_exists(target) and speed=0 then direction=image_angle;
    if instance_exists(target) then image_angle = set_angle(image_angle, point_direction(x,y,target.x,target.y), 22);
}
else
{
    image_angle = set_angle(image_angle, direction, 22);
}
	
//follow angle for drones
if (follow_angle - image_angle) >= 180 then follow_angle -= 360
else if (follow_angle - image_angle) <= -180 then follow_angle += 360
else follow_angle = lerp(follow_angle, image_angle, 0.068) 

//if(target.emp == 1) {target:=noone; target=noone;}

if own_shield < 0 then own_shield = 0
if own_shield > shield_def then own_shield = shield_def
if own_health > health_def then own_health = health_def
if attacking = true then alarm[2] = 3*60;