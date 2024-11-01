/* if owner.attacking=true then
    image_index=image_number*point_direction(x,y,owner.target.x,owner.target.y)/360
else image_index=image_number*owner.image_angle/360 */
//image_index=image_number*owner.image_angle/360
if instance_exists(owner) then image_index = owner.image_index