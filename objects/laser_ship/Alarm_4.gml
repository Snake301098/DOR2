/// @description INIT CRIT ETC
x0 = x;
y0 = y;
if owner.using_premium_lasers = true then
{
	premium_lasers = true;
	damage*=1.25;
	sprite_index=new_fat_laser_spr;
	image_xscale = 0.8;//global.scale;
	image_yscale = 0.8;//global.scale;
	if owner.id = gamer.id then global.premium_lasers-=1;
}

if critical_hit then damage *= 1.5;