
//test movement
Ship="goliath"
targetx=0;
targety=0;
hadTarget=0; //for IA comparison, =1 if had a target before, =0 if no target before
xdec=0;
ydec=0;
decx=32;
decy=60;
x1=0;//direction at time 1
y1=0;
x2=0;//direction at time 2
y2=0;
cooldown_alarm1=1 //=1 if can use
isStopped=0; //ship movement IA when just not moving
isAttacked=0; //if another ship is attacking id
isAttacking=0; //if is attacking another ship
can_use_nuke_k1=true;
ammo_selected=x4_ammo;

money=0;                                //Íàãðàäà çà êîðàáëü ââèäå äåíåã.
runing=false;                           //Îïðåäåëÿåò, ïûòàåòñÿ ëè êîðàáëü ñáåæàòü.
droids_numb=0;    
Shiptype="";                      //Êîë-âî äðîèäîâ ó êîðàáëÿ.
nickname=info("give_nick",irandom(global.nicklistlength));          //Íèê "ïèëîòà".
//nickname=string(owner.power);
//nickname=string(owner.RPOINT);
own_health=5000;
health_def=5000;
health_restore=health_def;
//shield_restore=shield_def;
own_health=health_def;
followHP = 0;
followShield = 0;
move_speed=0; //speed to do
testship=0;
buffership=0;
waiting_cp_spawn=0;
using_premium_lasers=false;
chef=0; //player to follow

rounding[0]=0;                          //Óãîë îò ìàÿêà, èçìåíåíèå êîòîðîãî ïðîèçâîäèò âðàùåíèå.
rounding[1]=0;                          //Ñêîðîñòü çàêðóòêè.
rounding[2]=0;                          //Ìèíè-ìàññèâ äëÿ êîíòðîëÿ êðó÷åíèÿ. (Ïî÷åìó íå îïèñàë??)
rounding[3]=0;                          //Ìèíè-ìàññèâ äëÿ êîíòðîëÿ êðó÷åíèÿ. (Ïî÷åìó íå îïèñàë??)
rounding[4]=0;                          //Ñòàòóñ êðóòÿùåãî: 0 - íå êðóòèòñÿ, 1 - ãëàâíûé â ïàðå, 2 - ïàðòíåð â ïàðå,
                                        //3 - êðóòèò îäíîãî èç ïàðû.
rounding[5]=noone;                      //ID ìàÿ÷êà äëÿ êðó÷åíèÿ.

critical_hit = false;
nearestship=noone;
v_zone_bz=false;
ish=0;
cloaked=0;
passive=false;
tdmteam="";
isBot="No";
chef=0;
actionclock = 200;
emp=0;
giveadmin=0;
rings=0;
MaxDamage=0;
droneformation=1;
corporation=0;
cpclock=100; //clock for alarm for control point not going out of the objective
cpisfar="no"; //if yes it will go to the control point
isoncp="no"; //shows if is on cp or not
usespectrumability=0
useeleech=0
hasJumped=0   //when running
alarm1count=0; //use in battle for behavior so the bot doesn't change way every 2 sec
isFollower = 0;
isInvader=0;
action[0]="";                        //Ìîäåëü ïîâåäåíèÿ.
action[1]:=noone; action[2]:="noone";   //Àðãóìåíò äëÿ ïîâåäåíèÿ.
action[4]:="noone";                     //Õðàíèò áûâøóþ ìîäåëü ïîâåäåíèÿ (äëÿ âðåìåííîé ñìåíû).
attacking:=false;                       //Äëÿ êîíòðîëÿ ñòðåëüáû.
designs[0]=irandom_range(1,2); designs[1]=true; 
designs[2]=false;                       //Ìàññèâ, îòâå÷àþùèé çà äèçàéíû. [0] - óñòàíîâëåííûé äèçàéí, [i] - åñòü ëè ó èãðîêà i-ûé äèçàéí.
chase:=false;                           //Ïðûãàåò ëè êîðàáëü âñëåä çà èãðîêîì â ïîðò.
time_chase:=0;                          //Òàéìåð âûïðûãèâàíèÿ âðàãîâ ïðè ïðèñëåäîâàíèè.
Rocket_rate:=4;                         //Çàäåðæêà ìåæäó âûñòðåëàìè ðàêåò.
//Power:="azz";                          //Àðãóìåíò äëÿ ðàíäîìàéçåðà ñèëû.
MaxAmmo:=1;                             //Êàêèå ñàìûå êðóòûå ïàòðîíû åñòü â àðñåíàëå âðàãà.
visible=false;
alarm[5]=1;
damageToDraw=0;
hasStartedAlarm8=false;
gotKilledBy = 0;
//----
var OwnerID;
OwnerID=id;
//----
//--- Let"s make some improved AI
canuseemp=1
canuseish=1
canusersb=1
canwarrep=true;
canshieldbackup=true;
cansmb=1;
//---

//---Botters
//--
BotRandom=irandom_range(0,100)
//--
isbotter=0
if action[0]!="bonus_grub" then{
if room=lv1_1 or room=lv2_1 or room=lv3_1
then {if BotRandom<= 40 then isbotter=1}
if room=lv1_2 or room=lv2_2 or room=lv3_2
then {if BotRandom<= 80 then isbotter=1}
if room=lv1_3 or room=lv2_3 or room=lv3_3 or
room=lv1_4 or room=lv2_4 or room=lv3_4 
then {if BotRandom<= 35 then isbotter=1}
if room=lv1_5 or room=lv2_5 or room=lv3_5 or
room=lv1_6 or room=lv2_6 or room=lv3_6 or 
room=lv1_7 or room=lv2_7 or room=lv3_7 or
room=lv1_8 or room=lv2_8 or room=lv3_8 
then {if BotRandom<= 55 then isbotter=1}}
//---
isbotter=0;

if isInvader = 1 then isbotter=0;

gun_slots=0
shield_slots=0

/*
if Ship = "bigboy" then {gun_slots = 6; shield_slots=5}
if Ship = "leonov" then {gun_slots = 8; shield_slots=7}
if Ship = "nostromo" then {gun_slots = 5; shield_slots=4}
if Shiptype = "vengeance" then {gun_slots = 10; shield_slots=12}
if Shiptype = "goliath" then {gun_slots = 15; shield_slots=15}
if Ship = "aegis" then {gun_slots = 8; shield_slots=12}
if Ship = "citadel" then {gun_slots = 5; shield_slots=18}
if Ship = "spearhead" then {gun_slots = 5; shield_slots=7}

*/

config = 1

Gun=[]
GunC1=[]
GunC2=[]
Engine=[]
EngineC1=[]
EngineC2=[]


event_inherited();                      //Çàïóñê ðîä. ñîáûòèÿ.
event_user(3);
guns_installation(id);
own_health=health_def;


var _cooldown = instance_create_depth(0,0,0,cooldowns_ctrl);
_cooldown.owner = id;

//ABILITIES
ability_1 = "a"
ability_2 = "a"
can_use_ability_1 = true;
can_use_ability_2 = true;


visible=true;
alarm[0]=irandom_range(10,120);
alarm[1]=irandom_range(10,120);
alarm[2]=irandom_range(10,120);
alarm[3]=irandom_range(10,120);
alarm[6]=irandom_range(10,120);
alarm[9] = irandom_range(10,120);