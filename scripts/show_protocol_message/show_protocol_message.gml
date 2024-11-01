function show_protocol_message(argument0){
	strCount = string_count("#",gamer.protocol)
	if strCount >= 24 then{
	gamer.protocol=""
	gamer.protocol+=argument0;
    
	}
	else{
	  gamer.protocol+="\n"+argument0;  
	}


	gamer.alarm[4]:=global.protocol_time;
}