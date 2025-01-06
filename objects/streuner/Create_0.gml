event_inherited()                       //Çàïóñê ðîä. ñîáûòèÿ.
alienname="-=[ Streuner "
if room=GGA then {mapname="GG A ]=-"}
else if room=GGB then {mapname="GG B ]=-"}
else if room=GGY then {mapname="GG Y ]=-"}
else if room=GGD then {mapname="GG D ]=-"}
else {mapname="]=-"}
name=alienname + mapname
mob_name = "streuner"
target=noone;
sprite_index=streuner_1_spr
health_def=600;                         //Îïðåäåëåíèå ìàêñèìàëüíîãî çäîðîâüÿ ìîáà.
own_health=health_def;                  //Ïðèðàâíèâàíèå òåêóùåãî êîë-âà çäîðîâüÿ ê ìàêñèìàëüíîìó.
shield_def=500;                           //Ìàêñèìàëüíîå êîë-âî ùèòà.
shield_restore=false;                   //Ñòàòóñ âîññòàíîâëåíèÿ ùèòà. (ìîáàì áåç ùèòà íå íóæíî)
own_shield=shield_def;                  //Íàïîëíåíèå ïåðåìåííîé, îòâå÷àþùåé çà ñèþìèíóòíîå êîë-âî ùèòà.
range=400                               //Äàëüíîñòü àòàêè.
ship_speed=2;                           //Ñêîðîñòü ìîáà.
money=400;                               //Íàãðàäà çà ìîáà ââèäå äåíåã.
damage=20;                              //Êàê áîëüíî êóñàåòñÿ ìîá.
own_health_bilo=own_health;             //Ïåðåìåííàÿ, èñïîëüçóåìàÿ â ïðîïèñè íàíîñèìîãî óðîíà.
own_shield_bilo=own_shield;             //Ïåðåìåííàÿ, èñïîëüçóåìàÿ â ïðîïèñè íàíîñèìîãî óðîíà.
runing=false;                           //Îïðåäåëÿåò, ïûòàåòñÿ ëè ìîá ñáåæàòü.
image_xscale=1; image_yscale=1;         //Óñòàíîâêà ðàçìåðîâ ìîáà.
//ammo[0]=x1alien; ammo[1]=mob_shot_1;  //Áîåïðèïàñû. [1] - îáúåêò, [2] - çâóê.
expl_color:=make_color_rgb(irandom_range(150,200),0,0);   //Êàêèì öâåòîì ïîäêðàøèâàòü âçðûâû.
expl_scale:=0.5;                        //Ðàçìåð âçðûâà.
wave_scale:=0.25;                        //Ðàçìåð óäàðíîé âîëíû.
alarm[0]=15;
alarm[1]=2;
alarm[10]=30;
passive:=true; 
EPPOINTS:=400*global.GAMERATE;
HONORPOINTS:=2*global.GAMERATE;
CREDITS:=400*global.GAMERATE;
URIDIUM:=1*global.GAMERATE;
reward=set_mob_reward("streuner_1", "normal", room);
followHP = health_def;
followShield = own_shield;