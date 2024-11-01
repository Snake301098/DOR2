if distance_to_object(gamer)<=1000
    with(instance_create_depth(x,y,0,effect))
        {
        sprite_index:=bonus_take_spr;
        depth:=gamer.depth-1;
        image_speed:=1.5;
        }