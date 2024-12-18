/// @description BUY SHOP

var buff=0;
buff = get_integer(text_add(text.rocket_buy,"something","50"),"");
if buff = noone then exit;
if buff<1 then exit;
else
{
	qty=buff;
	with(window_background){buy_qty=buff;event_user(3);};
}
