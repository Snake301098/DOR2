/// @description HEAL AMMO
if instance_exists(target) and action[0] = "healer"
{
	if target.corporation != corporation then target = noone
	else
	{
		ii = instance_create_depth(x+lengthdir_x(30,image_angle),y+lengthdir_y(27,image_angle),0,heal_ammo);
		ii.target:=target; ii.owner:=id; ii.myOwner=id;
		//ii.damage = MaxDamage; 
		ii.drawDamage=true;
	}
}



