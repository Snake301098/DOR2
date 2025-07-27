
if (distance_to_object(instance_nearest(x,y,portal_object))<200 or place_meeting(x,y,base)=true)
  and info_map(room,"pvp")=false and attacking=false and is_attacked=false then 
    {
    if info_map(room,"owners")=corporation then
        v_zone_bz=true}
else v_zone_bz=false;

if own_health_bilo>own_health then 
    {
    own_health_bilo=own_health;
    restore=0;
    //if own_health<=health_def*0.15 then { if not sound_isplaying(beep) then sound_loop(beep)} else {if sound_isplaying(beep) then sound_stop(beep)}
    alarm[2]=-1*2;
    }
else  
    {
    //if own_health<=health_def*0.15 and own_health>0 then { if not sound_isplaying(beep) then sound_loop(beep)} else {if sound_isplaying(beep) then sound_stop(beep)}
    if alarm[2]<0 and restore=0 then {alarm[2]=150*2; restore=2;}
    }
alarm[0]=15*1;
