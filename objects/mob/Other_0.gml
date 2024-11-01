if not room=GGA and not room=GGB and not room=GGY and not room=GGD then {
if target!=gamer then own_health-=health_def*0.1
else if distance_to_object(gamer)>3000 and gamer.target=id
    {
    target:=noone;
    lock_:=false;
    gamer.target:=noone;
    own_health-=health_def*0.1
    }}