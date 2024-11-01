var a,b,ship_numb, numb_waiters, numb_corp, numb_travelers,numb_bonus_grubers,numb_hunters_mob,yy,xx,mmocount,eiccount,vrucount,cp;
//Îáíóëåíèå ïåðåìåííûõ.
numb_waiters:=0; numb_corp[0]:=0; numb_corp[1]:=0; numb_corp[2]:=0; numb_travelers:=0;
numb_bonus_grubers:=0; numb_hunters_mob:=0;
mmocount=0;
eiccount=0;
vrucount=0;
popupennemy=0;
//Çàïóñê ñèñòåìû âîññòàíîâëåíèÿ ïîïóëÿöèè.
//alarm[0]=1;
//alarm[1]=1;
//alarm[9]=room_speed*10;

//if instance_exists(gamercooldowns) = false then {instance_create_depth(x,y,0,gamercooldowns)}
//if instance_exists(ships_ability_cooldowns) = false then {instance_create_depth(x,y,0,ships_ability_cooldowns)}
//Ñîçäàíèå ïîðòîâ.
event_user(0);
    