/// @description set sprite add to storage
if object_type="ores" then
{
	var ores_received, current_cargo; //current cargo is cargo max
	current_cargo=get_current_cargo();
	if current_cargo+object_qty<=global.cargo_max then {ores_received=object_qty; show_protocol_message("You received " + string(ores_received) + " " + string(object_name));}
	else if current_cargo>=global.cargo_max then {ores_received=0; storage_full=1; show_HUD_message("CARGO FULL");}
	else if (current_cargo+object_qty>global.cargo_max and current_cargo<global.cargo_max) then
	{
		ores_received=global.cargo_max-current_cargo;
		show_HUD_message("CARGO FULL\nOnly " + string(ores_received) + " of " + string(object_qty)+ " " + get_ores_name(object_name) + " received");
		object_qty = ores_received;
	}
	
	//SET SPRITE
	sprite_index = ores_spr;
	image_index = object_name;
	image_xscale = 1;
	image_yscale = 1;
	
	//ADD TO STORAGE
	if ores_received > 0 then
	{
		global.ores_qty[object_name]+=ores_received;
		global.ores_received[object_name]+=ores_received;
	}
	
	if storage_full then
	{
		object_qty = 0;
		sprite_index = full_storage_spr;
	}
}

if object_type = "dollars" then 
{
	sprite_index = dollars_spr;
	image_xscale = 0.3;
	image_yscale = 0.3;
	image_index = 0;
	
	//RECEIVED
//	global.dollars += object_qty;
//	global.dollars_received += object_qty;
}

if object_type = "xp" then 
{
	sprite_index = xp_spr;
	image_xscale = 0.3;
	image_yscale = 0.3;
	image_index = 0;
	
	//RECEIVED
//	global.xp += object_qty;
}

if object_type = "pieces" then
{
	sprite_index = pieces_spr
	image_index = object_name;
	image_xscale = 1;
	image_yscale = 1;
	
	global.pieces_qty[object_name] += object_qty;
}





