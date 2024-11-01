///@description shoot
if instance_exists(target)
{
	if (target.v_zone_bz=true or distance_to_object(target)>2000) then 
	{
		target=noone;
		with (way) {if owner=other.id then instance_destroy()};
		speed:=0;
	}
	else if point_distance(x,y,target.x,target.y) <= range*1.5 then
	{        
		//Âûñòðåë.
		ii = instance_create_depth(x,y,-1,ammo_mob);
		ii.speed = 17;
		ii.direction = point_direction(x,y,target.x,target.y);
		ii.damage = damage;
		ii.target = target;
		ii.owner=id;
		ii.myOwner=id;
		
		//if distance_to_object(gamer)<=500 or gamer.target=id then
		    //sound_play(ammo[1]);
	}
}

alarm[1]=irandom_range(50,70); //1

/*
var xx,yy,a;
if target!=noone and runing=false then
        {with (way) {if owner=other.id then instance_destroy()};
        with(instance_create_depth(target.x+follow[0],target.y+follow[1],0,way))
            {owner=other.id;}
        alarm[1]:=irandom_range(10,50); //1
        }
else if runing=true then
    {
    event_user(0); exit;
    }
xx=random_range(sprite_width div 2,room_width-(sprite_width div 2));
yy=random_range(sprite_height div 2,room_height-(sprite_height div 2));
while not collision_line(x,y,xx,yy,teleport,false,true)=noone
    {xx=random_range(sprite_width div 2,room_width-(sprite_width div 2));
    yy=random_range(sprite_height div 2,room_height-(sprite_height div 2));}
move_towards_point(xx,yy,ship_speed);
alarm[1]=random_range(room_height/(8*ship_speed),room_height/(4*ship_speed));