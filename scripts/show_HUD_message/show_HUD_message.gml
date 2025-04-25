function show_HUD_message(argument0){
	gamer.HUD_message=argument0;
	gamer.alarm[5]:=1;
	gamer.HUD_message_alpha:=2;
	if array_length(global.protocol_log)>50 then array_shift(global.protocol_log)
	array_push(global.protocol_log,argument0)
}