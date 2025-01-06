owner=noone;                      //"Õîçÿèí" ñíàðÿäà.
damage=10;
damage_x=1;                        //Óðîí.
target:=noone;                    //Öåëü ïàòðîíà.
alarm[0]=60;                    //Öåëü ïàòðîíà.
alarm[1]=1;
image_speed=0
drawDamage = true
image_alpha=0;
_ammo = "x1"

if object_index=x1_ammo then 
{
	sprite_index = new_fat_laser_spr
	image_index = 0
	damage_x = 1;
}

if object_index=x2_ammo then 
{
	sprite_index = new_fat_laser_spr
	image_index = 1
	damage_x = 2;
}

if object_index=x3_ammo then 
{
	sprite_index = new_fat_laser_spr
	image_index = 2
	damage_x = 3;
}

if object_index=x4_ammo then 
{
	sprite_index = new_fat_laser_spr
	image_index = 4
	damage_x = 4;
}

if object_index=rsb then 
{
	sprite_index = rsb_spr
	image_index = 1
	damage_x = 6;
}