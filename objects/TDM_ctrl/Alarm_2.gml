///@description check if ship on point

/*var mmo, eic, vru, cp;
if instance_exists(controlpoint) then cp = instance_nearest(gamer.x, gamer.y, controlpoint);
mmo=0;
eic=0;
vru=0;

//CONTROL POINT
if room=global.cproom then
{
    //cp = instance_nearest(x,y,controlpoint);

    with(ship)
    {
        if distance_to_object(cp) < 400 then //DISTANCE TO SCORE
        {
            if corporation = 0 then mmo+=1;
            if corporation = 1 then eic+=1;
            if corporation = 2 then vru+=1;
			v_zone_bz=false
        }
    }
  
    with(gamer)
    {
        
        if distance_to_object(cp) < 400 then //DISTANCE TO SCORE
        {
            global.isgameronpc = "IN";
            if gamer.corporation = 0 then mmo+=1;
            if gamer.corporation = 1 then eic+=1;
            if gamer.corporation = 2 then vru+=1;
        } else {global.isgameronpc = "OUT";}
    }
    global.mmooncp=mmo;
    global.eiconcp=eic;
    global.vruoncp=vru;


}
alarm[1]=room_speed;