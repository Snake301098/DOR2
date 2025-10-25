if object_index = x1_ammo then _ammo="x1"
if object_index = x2_ammo then _ammo="x2"
if object_index = x3_ammo then _ammo="x3"
if object_index = x4_ammo then _ammo="x4"
if object_index = sab then _ammo="x5"
if object_index = rsb then _ammo="x6"
image_alpha=1;
var fat_laser = false;
if instance_exists(owner) then if owner.bounty_hunter_ii = 3 then fat_laser = true;

if object_index=x1_ammo then 
{
	if fat_laser = true then sprite_index = new_fat_laser_spr else sprite_index = new_laser_spr;
	image_index = 0
	damage_x = 1;
}

if object_index=x2_ammo then 
{
	if fat_laser = true then sprite_index = new_fat_laser_spr else sprite_index = new_laser_spr;
	image_index = 1
	damage_x = 2;
}

if object_index=x3_ammo then 
{
	if fat_laser = true then sprite_index = new_fat_laser_spr else sprite_index = new_laser_spr;
	image_index = 2
	damage_x = 3;
}

if object_index=x4_ammo then 
{
	if fat_laser = true then sprite_index = new_fat_laser_spr else sprite_index = new_laser_spr;
	image_index = 4
	damage_x = 4;
}

if object_index=sab then 
{
	sprite_index = sab_spr
	if fat_laser = true then image_index = 1 else image_index = 0;
	damage_x = 2;
}

if object_index=rsb then 
{
	sprite_index = rsb_spr
	if fat_laser = true then image_index = 1 else image_index = 0;
	damage_x = 6;
}
initialized = true