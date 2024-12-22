if ENTRY="DOCK" then
{
	if instance_exists(window_background)=false then 
	{
		instance_destroy(jumpmap); 
		instance_destroy(quests_window); 
		instance_create_depth(0,0,-500,window_background)
	} 
	else  
	{
		instance_destroy(window_background)
	}
}
else if ENTRY="JUMP" then{
var tp, tpg, idd;
idd=id;
if not instance_exists(teleporting) then
{
    if distance_to_object(instance_nearest(x,y,teleport))<100 then
        {
        if info_map("map",room,"pvp")=true then
            if restore!=true then
                {
                //show_HUD_message(text.no_teleport_pvp)            
                }
        with (repbot)    {if owner=idd then instance_destroy()};
        tp=instance_nearest(x,y,teleport);
        if tp.working=true then 
            {
            tp.image_index=1;
            tpg=instance_create_depth(tp.x,tp.y,-500,teleporting);
            teleport_[0]=tp.id;
            teleport_[1]=tp.map1;
            teleport_[2]=tp.map2;
            tpg.map1=tp.map1;
            tpg.map2=tp.map2;
            tpg.tox=tp.tox; //go to x
            tpg.toy=tp.toy; //go to y
            }
        with(ship) 
            if target=other.id and other.destroy=false then 
                {
                chase:=true;
                persistent:=true;
                }
        else {} //show_HUD_message("");
        }
}
} else if ENTRY="CLOAK" then{
if global.cloaked=0 then
{
//Let's see if you have the money :)
//if global.uridium >= 500 then
//{
//He haz the money!
//show_protocol_message(string(text.boughtcloak))
//global.uridium-=500
global.cloaked=1
//}
//else
//{
//Poor ass niqqaaaa doesn't have no money
//show_protocol_message(string(text.failedtobuycloak))
//}
}
else if global.cloaked=1 then
{
//You are already cloaked.... (facepalm)
//show_protocol_message(string(text.alreadycloaked))
}
}