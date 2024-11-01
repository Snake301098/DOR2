if speedrocket<5 then speedrocket=speedrocket*1.05 else speedrocket = 5;
motion_set(point_direction(x,y,targetx,targety),speedrocket) //speed
direction=point_direction(x,y,targetx,targety);
image_angle = set_angle(image_angle, direction, 10); //10
if point_distance(x,y,targetx,targety)<5 or point_distance(x,y,owner.x,owner.y)>550 then {instance_destroy();}