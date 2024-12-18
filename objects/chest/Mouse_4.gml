/// @description Insert description here
// You can write your code in this editor

if type = "green"
{
	if global.chest_green_key > 0
	{
		clicked = true;
	}
	else
	{
		show_protocol_message("A green chest key is needed to open the chest")
	}
}


if type = "gold"
{
	if global.chest_gold_key > 0
	{
		clicked = true;
	}
	else
	{
		show_protocol_message("A gold chest key is needed to open the chest")
	}
}


