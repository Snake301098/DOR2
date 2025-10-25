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

var gamer_get_reward = false;

if killed_by_gamer_kami = true then gamer_get_reward = true;

if instance_exists(gamer.target)
{
	if gamer.target = id
	{
		gamer_get_reward = true;
	}
}
if gamer_get_reward = true
{
	//SHIP SKINS
	var _xp_bonus = 1;
	var _honor_bonus = 1;
	var _uridium_bonus = 1;
	if gamer.ship_name = "adept" then _xp_bonus = 1.1;
	if gamer.ship_name = "veteran" then _xp_bonus = 1.1;
	if gamer.ship_name = "corsair" then _honor_bonus = 1.1;
	if gamer.ship_name = "exalted" then _honor_bonus = 1.1;
	if gamer.ship_name = "goal" then _uridium_bonus = 1.05;
	URIDIUM = URIDIUM * (1 + gamer.luck_i * 0.02 + gamer.luck_ii * 0.03) * _uridium_bonus
	CREDITS = CREDITS * (1 + gamer.greed * 0.03)
	EPPOINTS = EPPOINTS * _xp_bonus;
	HONORPOINTS = HONORPOINTS * (1 + gamer.cruelty_i * 0.02 + gamer.cruelty_ii * 0.03) * _honor_bonus;
	global.uridium+=URIDIUM;
	global.credit+=CREDITS;
	show_protocol_message(text_add("You have destroyed a: %1.#You have recieved %2 credits.",name,CREDITS));
	global.alienkills+=1;
	global.experience+=EPPOINTS;
	global.honor+=HONORPOINTS
	show_protocol_message(string(text.received) + " " + string(URIDIUM) + " " + "Uridium")
	show_protocol_message(string(text.received) + " " + string(EPPOINTS) + " " + string("xp"))
	show_protocol_message(string(text.received) + " " + string(HONORPOINTS) + " " + string("honor"))

	//LOGFILE REWARD based on Box Muller transfor to sort a normal distribution
	if room!=GGA and room!=GGB and room!=GGY and room!=GGD
	{
		var hp_ref = 800//k
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
	
		//spawn chest
		if irandom_range(0,10) == 1 then
		{
			var type = "green"
			if irandom_range(0,10) == 1 then
			{
				type = "gold";
			}
			var _chest = instance_create_depth(x+irandom_range(-50,50),y+irandom_range(-50,50),0,chest)
			_chest.type = type;
		}
	}
	
	check_quests(id,room)
		
	update_stats(mob_name+"_kills")
	update_stats("credit",CREDITS)
	update_stats("uridium",URIDIUM)
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