//len:=point_distance(x,y,owner.x,owner.y); dir:=point_direction(owner.x,owner.y,x,y);
x:=owner.x+irandom_range(-owner.sprite_width/2,owner.sprite_width/2);
y:=owner.y+irandom_range(-owner.sprite_height/2,owner.sprite_height/2);
depth:=owner.depth-1;