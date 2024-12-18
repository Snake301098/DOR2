event_inherited()                       //Çàïóñê ðîä. ñîáûòèÿ.
alienname="-=[ Kristallon "
if room=GGA then {mapname="GG A ]=-"}
else if room=GGB then {mapname="GG B ]=-"}
else if room=GGY then {mapname="GG Y ]=-"}
else if room=GGD then {mapname="GG D ]=-"}
//else if room=GGE then {mapname="GG E ]=-"}
//else if room=GGZ then {mapname="GG Z ]=-"}
//else if room=GGKA then {mapname="GG K ]=-"}
//else if room=GGKR then {mapname="GG K ]=-"}
else {mapname="]=-"}
name=alienname + mapname
sprite_index=kristallon_spr
health_def=400000;                         //Îïðåäåëåíèå ìàêñèìàëüíîãî çäîðîâüÿ ìîáà.
own_health=health_def;                  //Ïðèðàâíèâàíèå òåêóùåãî êîë-âà çäîðîâüÿ ê ìàêñèìàëüíîìó.
shield_def=300000;                           //Ìàêñèìàëüíîå êîë-âî ùèòà.
shield_restore=false;                   //Ñòàòóñ âîññòàíîâëåíèÿ ùèòà. (ìîáàì áåç ùèòà íå íóæíî)
own_shield=shield_def;                  //Íàïîëíåíèå ïåðåìåííîé, îòâå÷àþùåé çà ñèþìèíóòíîå êîë-âî ùèòà.
range=500                               //Äàëüíîñòü àòàêè.
ship_speed=2*250/280;;                           //Ñêîðîñòü ìîáà.
money=102400*global.GAMERATE;                               //Íàãðàäà çà ìîáà ââèäå äåíåã.
damage=4000;                              //Êàê áîëüíî êóñàåòñÿ ìîá.
own_health_bilo=own_health;             //Ïåðåìåííàÿ, èñïîëüçóåìàÿ â ïðîïèñè íàíîñèìîãî óðîíà.
own_shield_bilo=own_shield;             //Ïåðåìåííàÿ, èñïîëüçóåìàÿ â ïðîïèñè íàíîñèìîãî óðîíà.
runing=false;                           //Îïðåäåëÿåò, ïûòàåòñÿ ëè ìîá ñáåæàòü.
image_xscale=1; image_yscale=1;         //Óñòàíîâêà ðàçìåðîâ ìîáà.
//ammo[0]=x2alien; ammo[1]=sibdevo_snd;  //Áîåïðèïàñû. [1] - îáúåêò, [2] - çâóê.
expl_color:=make_color_rgb(irandom_range(150,200),0,0);   //Êàêèì öâåòîì ïîäêðàøèâàòü âçðûâû.
expl_scale:=0.75;                        //Ðàçìåð âçðûâà.
wave_scale:=0.5;                        //Ðàçìåð óäàðíîé âîëíû.

passive:=false; 
EPPOINTS:=51200*global.GAMERATE;
HONORPOINTS:=256*global.GAMERATE;
CREDITS = 409600*global.GAMERATE;
URIDIUM = 128*global.GAMERATE;
reward=set_mob_reward("sibelon", "normal", room);
followHP = health_def;
followShield = own_shield;