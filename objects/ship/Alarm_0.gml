///@description ship selection target

//If is battle action
if action[0] = "battle" or isInvader = true then
{
	//Target already exists
	if instance_exists(target) then
	{
		//if is in range
		if distance_to_object(target) <= global.range*1.4 then
		{
			if choose(0,0,0,0,1) = 1 then select_target(id) //SELECT TARGET
		}
		else
		//if is not in range
		{
			if choose(0,0,0,1) = 1 then select_target(id) //SELECT TARGET
		}
	}
	else
	//no target
	{
		if choose(0,1,1,1,1) = 1 then select_target(id); //SELECT TARGET
	}
}
else if action[0] = "farming" then
{
	//Target already exists
	if instance_exists(target) then
	{
		//wait we kill the mob
	}
	else
	//no target
	{
		if choose(0,1,1,1) = 1 then select_target_mob(id); //SELECT TARGET
	}
}
else
{
	if action[0] = "healer" then
	{
		if instance_exists(target)
		{
			if target.own_health >= target.health_def or distance_to_object(target) > global.range*1.3
			{
				select_target(id);
			}
		}
		else
		{
			select_target(id);
		}
		select_target(id);
	}
}

alarm[0]=random_range(30,140);

//OLD
#region
/*
var ii, dist, xx, yy, b, min1;
if target=noone then
        {
        alarm[2]:=-1;
        min1:=1000000;
        if action[0]="battle" and isbotter=0 then
            {
            //ammo[0,0]:=MaxAmmo;
            with (ships) 
                {
                if (other.corporation!=id.corporation) and (id!=other) and(emp != 1) then
                    if distance_to_object(other)<min1 then
                        if v_zone_bz=false then
                            if visible=true and cloaked=0 then
                                {
                                other.target:=id;
                                min1:=distance_to_object(other)
                                }
                     }
            }
        if action[0]="hunt_mob" then
            {
            //ammo[0,0]:=1;
            with (mob) 
                {
                if (target=noone) or (lock_=false) then
                    if distance_to_object(other)<min1 then
                                {
                                other.target:=id;
                                min1:=distance_to_object(other)
                                }
                }
            }
        if distance_to_object(target) > range-100 then target:=noone
        else alarm[1]:=irandom_range(10,50); //1
        }
    else
    {
    if target.v_zone_bz=true then 
        {
        target=noone; alarm[1]=irandom_range(10,50); alarm[0]=irandom_range(10,50); //1
        with (ammo_ship) {if owner=other.id then instance_destroy();} exit;
        } 
    else if alarm[2]<0 then alarm[2]=irandom_range(30,60)*2;
        if attacking=true then
            {
            //if distance_to_object(target) <= range+(target.sprite_width*0.75) then
              if distance_to_object(target) <= irandom_range(range*0.8+(target.sprite_width*0.75),range*1+(target.sprite_width*0.75)) and distance_to_object(target) > 300 then
                {
                //Âûñòðåë.
                event_user(1);
                } 
				else if distance_to_object(target) <= irandom_range(280,320) then
				{
				event_user(5);
				}
				
				/*
            if distance_to_object(target) <= range+(target.sprite_width*0.75)+100 and Rocket_rate=0 then
                {
                //Ðàêåòà.'
                with(instance_create(x,y,rocket))
                    {
                    target:=other.target; owner:=other.id;
                    image_angle=other.image_angle;
                    damage = other.rocket_ammo[other.rocket_ammo[0,0],3];
                    event_user(0);
                    }
                Rocket_rate=4;
                if distance_to_object(gamer)<500 then
                    sound_play(rocket_ammo[rocket_ammo[0,0],2]);
                }
            }
    }
if global.firingspeed=1 then{alarm[0]=35;}
if global.firingspeed=2 then{alarm[0]=11*2*2;}
if global.firingspeed=3 then{alarm[0]=8*2*2;}    

*/
#endregion
