owner=noone;                      //"Õîçÿèí" ñíàðÿäà.
damage=10;
damage_x=1;                        //Óðîí.
target:=noone;                    //Öåëü ïàòðîíà.
alarm[0]=60;                    //Öåëü ïàòðîíà.
alarm[1]=1;
image_speed=0
drawDamage = true
image_alpha=0;
_ammo = "x5"
if object_index = x1_ammo then _ammo="x1"
if object_index = x2_ammo then _ammo="x2"
if object_index = x3_ammo then _ammo="x3"
if object_index = x4_ammo then _ammo="x4"
if object_index = sab then _ammo="x5"
if object_index = rsb then _ammo="x6"
sprite_index = new_laser_spr;
initialized = false
