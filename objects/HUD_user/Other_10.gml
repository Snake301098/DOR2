/// @description PET kamikaze


if global.pet_kamikaze = 1
{
	audio_play_sound(pet_action_sound,1,false);
	if instance_exists(PET)
	{
		if gamer.can_use_kami
		{
			if global.uridium >= global.cost_kamikaze
			{
				if kamikaze_selected
				{
					kamikaze_selected = false 
				}
				else 
				{
					kamikaze_selected = true
				}
	
				var _status = kamikaze_selected
				with(PET)
				{
					if owner = gamer.id then kamikaze = _status 
				}
			}
			else
			{
				show_message("Not enough uridium for Kamikaze");
			}
		}
		else
		{
			show_HUD_message("Kamikaze still on cooldown...");
		}
	}
}
else
{
	show_message("Kamikaze not unlocked");
}


