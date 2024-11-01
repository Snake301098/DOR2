if gamer.x<room_width and gamer.x>0 and gamer.y<room_height and gamer.y>0 then {alarm[6]:=-1; exit;}
own_health-=min(own_health,health_def*0.1+irandom_range(-health_def*0.02,health_def*0.02));
alarm[6]:=30*2;