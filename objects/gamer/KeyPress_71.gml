///@description NUKE

/*
if can_use_nuke_k1 = true
{
	if global.nuke_k1 > 0
	{
		var _nuke=instance_create_depth(0,0,-3,nuke);
		_nuke.x=gamer.x;
		_nuke.y=gamer.y;
		_nuke.targetx=mouse_x;
		_nuke.targety=mouse_y;
		_nuke.corporation=gamer.corporation;
		_nuke.sprite_index=nuke_spr;
		_nuke.owner=gamer.id;
	}
	else
	{
		show_HUD_message("No more Nukes")
	}
}
else
{
	show_HUD_message("Nuke still recharging")
}


