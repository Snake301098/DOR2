/// @description TARGETX/Y

if instance_exists(owner)
{
	if owner.object_index = lordakia then sprite_index = lordakium_ammo_spr;
	if owner.object_index = devolarium then sprite_index = devo_ammo_spr;
	if owner.object_index = kristallin then sprite_index = kristallin_ammo_spr;
	if owner.object_index = kristallon then sprite_index = kristallin_ammo_spr;
	if owner.object_index = lordakium then sprite_index = lordakium_ammo_spr;
	if owner.object_index = mordon then sprite_index = devo_ammo_spr;
	if owner.object_index = saimon then sprite_index = devo_ammo_spr;
	if owner.object_index = sibelonit then sprite_index = lordakium_ammo_spr;
	if owner.object_index = sibelon then sprite_index = devo_ammo_spr;
	if owner.object_index = streuner then sprite_index = devo_ammo_spr;
	if owner.object_index = streunerR then sprite_index = devo_ammo_spr;
}

if owner.id.object_index = ship then
{
	if instance_exists(target)
	{
		targetx = target.x;
		targety = target.y;
	}
}
