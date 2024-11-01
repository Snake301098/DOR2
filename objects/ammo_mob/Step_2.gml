/*var i,a,b;
if distance_to_object(gamer)<=500 then
for (i:=0; i<=speed; i+=5)
    {
	    a:=random_range(-5,5);//-5 5
	    b:=random_range(-5,5);//-5 5
	    part_emitter_region(p_sys,part_emitter_create(p_sys),x+a+lengthdir_x(i,image_angle+180),x+a+lengthdir_x(i,image_angle+180),y+b+lengthdir_y(i,image_angle+180),y+b+lengthdir_y(i,image_angle+180),ps_shape_diamond,ps_distr_linear);
	    part_emitter_burst(p_sys,part_emitter_create(p_sys),part_type_create(),1);
    }