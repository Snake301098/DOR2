event_user(0)
alarm[0]=1;
alarm[2]=1;
alarm[3]=irandom_range(5,100) * room_speed;
//alarm[1]=1;
//alarm[9]=60;

if room = GGA or room = GGB or room = GGD or room = GGY then instance_create_depth(0,0,0,pop_ctrl_GG);

if room = TDM then instance_create_depth(0,0,0,TDM_ctrl);