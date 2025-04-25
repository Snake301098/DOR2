/// @description BUY SHOP
if ask_quantity = true
{
	var buff=0;
	buff = get_integer(text_add(text.rocket_buy,"this","50"),"");
	if buff = noone then exit;
	if buff<1 then exit;
	else
	{
		qty=buff;
		with(window_background){buy_qty=buff;event_user(3);};
	}
}
else
{
		with(window_background){buy_qty=1;event_user(3);};	
}

