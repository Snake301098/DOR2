image_angle=image_angle+1;
x=owner.x + lengthdir_x(50,image_angle+100)//-gamer.sprite_width-50;
y=owner.y + lengthdir_y(50,image_angle+100)//-gamer.sprite_height/2;
direction = point_direction(gamer.x,gamer.y,x,y)-90;
if global.cloaked=1 then image_alpha=0.5 else image_alpha=1;
draw_sprite_ext(sprite_index,image_index,x,y,1,1,direction,c_white,image_alpha)