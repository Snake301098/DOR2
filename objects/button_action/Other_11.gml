/// @description PET FUEL

var buff=0;
buff = get_integer("How much fuel do you want to buy? (Price: 1 uridium for 1 fuel)","");
if buff = noone then exit;
if buff<1 then exit;
else
{
	qty=buff;
	with(window_background){buy_qty=buff;event_user(10);};
}


