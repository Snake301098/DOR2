
x=owner.x
y=owner.y
if global.cloaked=1 then image_alpha=0.5 else image_alpha=1;
draw_sprite_ext(sprite_index,image_index,x,y,1,1,direction,c_white,image_alpha)
if instance_exists(_target) then {draw_sprite_ext(sprite_index,image_index,_target.x,_target.y,1,1,direction,c_white,1)}

