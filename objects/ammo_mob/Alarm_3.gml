if distance_to_object(gamer) < 600 then 
{
	var sounddd = ammo_mob_sound;
	if instance_exists(owner)
	{
		if owner.object_index = lordakia then sounddd = ammo_mob_sound;
		if owner.object_index = devolarium then sounddd = ammo_mob_sound;
		if owner.object_index = kristallin then sounddd = ammo_mob_sound;
		if owner.object_index = kristallon then sounddd = ammo_mob_sound;
		if owner.object_index = lordakium then sounddd = ammo_mob_sound;
		if owner.object_index = mordon then sounddd = ammo_mob_sound;
		if owner.object_index = saimon then sounddd = ammo_mob_sound;
		if owner.object_index = sibelonit then sounddd = ammo_mob_sound;
		if owner.object_index = sibelon then sounddd = ammo_mob_sound;
		if owner.object_index = streuner then sounddd = ammo_mob_sound;
		if owner.object_index = streunerR then sounddd = ammo_mob_sound;
	}

	audio_play_sound(ammo_mob_sound,1,false);
}
	
	
	