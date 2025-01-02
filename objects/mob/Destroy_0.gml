var a,b,c;
b:=0; c:=0;
var myid=id;



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
if instance_exists(gamer.target)
{
	if gamer.target = id
	{
	    global.uridium+=URIDIUM * (1 + gamer.luck_i * 0.02 + gamer.luck_ii * 0.03);
	    global.credit+=CREDITS * (1 + gamer.greed * 0.03);
	    show_protocol_message(text_add("You have destroyed a: %1.#You have recieved %2 credits.",name,CREDITS));
	    global.alienkills+=1;
	    global.experience+=EPPOINTS;
	    global.honor+=HONORPOINTS * (1 + gamer.cruelty_i * 0.02 + gamer.cruelty_ii * 0.03);
	    show_protocol_message(string(text.received) + " " + string(URIDIUM) + " " + "Uridium")
	    show_protocol_message(string(text.received) + " " + string(EPPOINTS) + " " + string("xp"))
	    show_protocol_message(string(text.received) + " " + string(HONORPOINTS) + " " + string("honor"))

		//LOGFILE REWARD based on Box Muller transfor to sort a normal distribution
		var hp_ref = 400//k
		var log_avg_ref = 5//ggenergy for hpref k hit+shield points
		var log_std_ref = 2//ggenergy for hpref k hit+shield points
	
		var i = random(1);
		var j = random(1);
	
		var X = sqrt(-2*ln(i))*cos(2*pi*j)
	
		var avg = (health_def + shield_def)/1000 * log_avg_ref / hp_ref
		var std = avg * log_std_ref / log_avg_ref
	
		var alpha = sqrt(avg * log_std_ref / log_avg_ref)/std
		var beta = (health_def + shield_def)/1000 * log_avg_ref / hp_ref - avg * alpha
	
		var ggenergy_qty = round(avg + std * X)
		if ggenergy_qty < 0 then ggenergy_qty = 0
	  
		var _cargobox = instance_create_depth(x,y,0,cargo_box);
		_cargobox.gg_energy = ggenergy_qty
		
		check_quests(id,room)
	}
}

clear_ship_destroy_id(id)

//Âçðûâ.
a=instance_create_depth(x,y,-3,bigexpl1);
a.image_xscale=expl_scale;
a.image_yscale=expl_scale;
if expl_color!=false then a.image_blend=expl_color;
//Óäàðíàÿ âîëíà.
/*
a=instance_create(x,y,wave);
a.image_xscale=wave_scale;
a.image_yscale=wave_scale;