if logfile > 0 
{
	show_HUD_message(string(logfile) + " logfiles received!")
	global.logfile += logfile
}

if gg_energy > 0 
{
	show_HUD_message(string(gg_energy) + " GG energies received!")
	global.ggenergy += gg_energy
}

instance_destroy()

/*
var a, ammo_type;
//Ðàíäîìíûå áîíóñû.
draw_set_halign(fa_center);


if chance<25
{
money_chance_num=random(100);
    if money_chance_num<=10
        {money=irandom_range(2400,4800);}
    if money_chance_num<60 and money_chance_num>10
        {money=irandom_range(600,1800);}
    if money_chance_num>=60
        {URI=irandom_range(900,1500);
            global.uridium+=URI;
    show_protocol_message(text.received + string(URI) + ' Uridium'); break;}
    global.money+=money*global.code1;
    show_protocol_message(text_add(text.bonus_grub_money,money));
}
else if (chance>=25) and (chance<75) then
    {
    ammo_type=irandom_range(1,3);
    ammo_chance_num=irandom(100)
    if ammo_chance_num<=20 and ammo_type=1
        {ammo=1000;}
    if ammo_chance_num<60 and ammo_chance_num>20 and ammo_type=1
        {ammo=500;}
    if ammo_chance_num>=60 and ammo_type=1
        {ammo=250;}
    if ammo_chance_num<=20 and ammo_type=2
        {ammo=500;}
    if ammo_chance_num<60 and ammo_chance_num>20 and ammo_type=2
        {ammo=250;}
    if ammo_chance_num>=60 and ammo_type=2
        {ammo=150;}
    if ammo_chance_num<=20 and ammo_type=3
        {ammo=250;}
    if ammo_chance_num<60 and ammo_chance_num>20 and ammo_type=3
        {ammo=150;}
    if ammo_chance_num>=60 and ammo_type=3
        {ammo=50;}
    other.ammo[ammo_type,0]+=ammo*global.code1; 
    show_protocol_message(text_add(text.bonus_grub_ammo,ammo,ammo_type));
    }
else 
    {
    ammo_chance_num=irandom(100)
    if ammo_chance_num<=20
        {ammo=100;}
    if ammo_chance_num<60 and ammo_chance_num>20
        {ammo=50;}
    if ammo_chance_num>=60
        {ammo=30;}
    other.rocket_ammo[1,0]+=ammo*global.code1;
    show_protocol_message(text_add(text.bonus_grub_rocket,ammo));
    }
	
	*/
	
instance_destroy()