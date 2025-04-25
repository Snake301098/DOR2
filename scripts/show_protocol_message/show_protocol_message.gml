function show_protocol_message(argument0){
	strCount = string_count("#",gamer.protocol)
	if strCount >= 24 then{
	gamer.protocol=""
	gamer.protocol+=argument0;
	}
	else{
	  gamer.protocol+="\n"+argument0;  
	}
	if array_length(global.protocol_log)>50 then array_shift(global.protocol_log)
	array_push(global.protocol_log,argument0)

	gamer.alarm[4]:=global.protocol_time;
}