var a,b,c;
b:=0; c:=0;
var myid=id;

clear_ship_destroy_id(id)


/*if b=true and (target=gamer.id) and (lock_=true) or(object_index=cubikon && gamer.target=id) then
    {
    if gamer.Ship="adept" or gamer.Ship="veteran"or gamer.Ship="goal" then
{
FINALEP=round((EPPOINTS*1.1))
FINALHONOR=round(HONORPOINTS)
}
else if gamer.Ship="corsair" or gamer.Ship="exalted" then 
{
FINALHONOR=round((HONORPOINTS*1.1))
FINALEP=round(EPPOINTS)
}
else
{
FINALEP=round(EPPOINTS)
FINALHONOR=round(HONORPOINTS)
}*/
if gotKilledBy=gamer.id then
{
    //global.uridium+=URIDIUM;
    global.credit+=money;
    show_protocol_message(text_add("You have destroyed a: %1.#You have recieved %2 credits.",name,money));
        global.alienkills+=1;
        global.experience+=EPPOINTS;
        global.honor+=HONORPOINTS;
        //show_protocol_message(string(text.received) + " " + string(URIDIUM) + " " + "Uridium")
        show_protocol_message(string(text.received) + " " + string(EPPOINTS) + " " + string("xp"))
        show_protocol_message(string(text.received) + " " + string(HONORPOINTS) + " " + string("honor"))
//        if x4 > 0 then
//        {show_protocol_message("You have recieved" + " " + string(x4) + " " + "x4 ammo!")
//        gamer.ammo[4,0]+=x4}        
    //Ãðóçîâàÿ êîðîáêà.
    if Loot[0,0]>0 then
        {
       /* with(instance_create(x+irandom_range(-sprite_width,sprite_width),y+irandom_range(-sprite_height,sprite_height),box))
            {
            Loot[0,0]:=other.Loot[0,0];
            for (b:=1; b<=other.Loot[0,0]; b+=1;)
                {
                Loot[b,0]:=other.Loot[b,0];
                Loot[b,1]:=other.Loot[b,1];
                }
            }*/
        }
		
		//LOOT ANIMATION
		for(var i=0; i<array_length(reward); i++)
		{
			drop = instance_create_depth(0,0,-100,dropobject);
			drop.x = x;
			drop.y = y;
			drop.object_name = reward[i,0];
			drop.object_type = "ores";
			drop.object_qty = round(reward[i,1]);
		}
    }



//Âçðûâ.
a=instance_create_depth(x,y,-3,bigexpl1);
a.image_xscale=expl_scale;
a.image_yscale=expl_scale;
if expl_color!=false then
    a.image_blend=expl_color;
//Óäàðíàÿ âîëíà.
/*
a=instance_create(x,y,wave);
a.image_xscale=wave_scale;
a.image_yscale=wave_scale;