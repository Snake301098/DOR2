///@description target selection

var myID = id;
var isAttackedByID = -1;
var theMaxDmg = -1;
with(ships)
{
	if instance_exists(target)
	{
		if target = myID
		{
			if MaxDamage >= theMaxDmg then {isAttackedByID = target; theMaxDmg = MaxDamage;}
		}
	}
}

if isAttackedByID = -1 then
{
	var nearestShip = instance_nearest(x,y,ships);
	if distance_to_object(nearestShip) <= range*1.5 and nearestShip.cloaked = 0 and v_zone_bz=false then target = nearestShip;
}

alarm[0] = irandom_range(30,90);


/*
var a, ii, dist, xx, yy;
    if target=noone then
        {
        a=instance_nearest(x,y,ships);
        if point_distance(x,y,a.x,a.y) < range and a.v_zone_bz=false and a.visible=true and a.cloaked=0 then
            {
            target:=a;
            alarm[1]:=irandom_range(10,50); //1
            }
        }
    else
    {
    if (target.v_zone_bz=true or distance_to_object(target)>2000) and lock_:=false then 
        {
        target=noone;
        with (way) {if owner=other.id then instance_destroy()};
        speed:=0;
        alarm[1]=irandom_range(10,50); //1
        alarm[0]=irandom_range(10,50);
        }
    else if point_distance(x,y,target.x,target.y) <= range then
        {        
        //Âûñòðåë.
        ii = instance_create_depth(x,y,0,ammo_ship);
        ii.speed = 24;
        ii.direction = point_direction(x,y,target.x,target.y);
        ii.damage = damage;
        ii.owner=id;
        //if distance_to_object(gamer)<=500 or gamer.target=id then
            //sound_play(ammo[1]);
        }
    }
alarm[0]=irandom_range(10,50);