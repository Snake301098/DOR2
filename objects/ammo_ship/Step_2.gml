if initialized = true
{
	if object_index=sab
	{
		if instance_exists(target) then
		{
			if distance_to_object(owner) <= 15 then deal_prefunction(owner,target,_ammo,damage,damage_x,drawDamage,id)
			if point_distance(x,y,owner.x,owner.y)<speed then speed:=point_distance(x,y,owner.x,owner.y);
			direction=point_direction(x,y,owner.x,owner.y);
		}
		else instance_destroy();
		image_alpha=1;
	}
	else
	{
		if instance_exists(target) then
		    {
				if distance_to_object(target) <= 10 then deal_prefunction(owner,target,_ammo,damage,damage_x,drawDamage,id)
		    if point_distance(x,y,target.x,target.y)<speed then speed:=point_distance(x,y,target.x,target.y);
		    direction=point_direction(x,y,target.x,target.y);
		    }
		else instance_destroy();
		image_alpha=1;
	}
}

/*
if object_index=x1ammo then{
if owner.fatlasers=1 then{
sprite_index=global.x1lasersFAT}
else{
sprite_index=global.x1lasers}}

else if object_index=x2ammo then{
if owner.fatlasers=1 then{
sprite_index=global.x2lasersFAT}
else{
sprite_index=global.x2lasers}}

else if object_index=x3ammo then{
if owner.fatlasers=1 then{
sprite_index=global.x3lasersFAT}
else{
sprite_index=global.x3lasers}}

else */
/*{
if owner.fatlasers=1 then{
sprite_index=global.x4lasersFAT}
else{
sprite_index=global.x4lasers}}

else if object_index=sub_ammo then{
if owner.fatlasers=1 then{
sprite_index=global.sablasersFAT}
else{
sprite_index=global.sablasers}}

else if object_index=rsb_obj or object_index=rsb_75 then{
if owner.fatlasers=1 then{
sprite_index=global.rsblasersFAT}
else{
sprite_index=global.rsblasers}}