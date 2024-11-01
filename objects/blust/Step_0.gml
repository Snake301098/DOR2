/// @description 

if instance_exists(owner) then
{
    x:=owner.x+lengthdir_x(len,owner.image_angle+dir);
    y:=owner.y+lengthdir_y(len,owner.image_angle+dir);
}
else instance_destroy();
