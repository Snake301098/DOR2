image_speed=0;
image_index=1;
x=6200;
y=0;
config=1;
nickname = "gamer";
event_inherited(); 
attacking=false; //rocket launcher
KeyActionCURKEY=0;
followHP=0;
followShield=0;
moveship=true; //used for way (if touch a ship then target, then dont move ship)
mouse_debug=0;
can_use_nuke_k1=true;
can_use_warrep=true;
can_use_dmg_boost=true;
can_use_emp=true;
can_use_ish=true;
can_use_shieldbackup=true;
dmg_boost_activated=false;
critical_hit = false;
just_hit_rsb = 0; //if we click on x4 after rsb it won't stop attacking (remembers we were using rsb)
shield_def = 0
alpha=1;
using_premium_lasers=false;
destroyed=0;
MaxDamage=0;
is_using_emp=false;
is_using_ish=false;
dronesNbr=0;
passive=false;
isFollower = 0;
firing=0;
help_open=0;
map_open=false;
target=noone;
chef=0;
global.cloaked=0;
global.droneformation=1
global.attack_range = 720;
radarrange=1300;                     //Äàëüíîñòü "âèäèìîñòè" ðàäàðà, âñòðîåííîãî â ìèíèêàðòó.
range=650;
stoped=false;                       //Ñòàòóñ ñòûêîâêè.
alarm[0]=15*2;                      //Ìàññèâ, îòâå÷àþùèé çà äèçàéíû. [0] - óñòàíîâëåííûé äèçàéí, [i] - åñòü ëè ó èãðîêà i-ûé äèçàéí.
alarm[2] = 60;
destroy:=false;
protocol:="";                       //Èñïîëüçóåòñÿ äëÿ çàïèñè ïðîòîêîëà.
HUD_message:=""                     //HUD ñîîáùåíèÿ. Èñïîëüçóþòñÿ äëÿ îòîáðàæåíèÿ ñðî÷íîé èíôîðìàöèè.
HUD_message_alpha:=0;               //Îïðåäåëÿåò ïðîçðà÷íîñòü HUD ñîîáùåíèé è èñïîëüçóåòñÿ äëÿ çàòóõàíèÿ.
map_open:=false                     //Îòêðûòà ëè êàðòà óðîâíåé.
Start_Up:=true;                     //Ïåðåìåííàÿ äëÿ îáîçíà÷åíèÿ ñîçäàíèÿ èãðîêà.
Rocket_rate:=60;                    //Çàäåðæêà ìåæäó âûñòðåëàìè ðàêåò.
IsCheater:=false;                   //×èòåð ëè èãðîê.
Turbo:=false;                       //Àêòèâèðîâàí ëè Turbo-ðåæèì (òîëüêî Debug).
shoot_delay:=15;                    //Âðåìÿ ìåæäó âûñòðåëàìè.
temp:=true;
canuseemp=1;
canuseish=1;
canusewarrep=1;
canuseshieldbackup=1;
guns=0;
gunsC1=0;
gunsC2=0;
lasers=0;
gunlvlmin=0;
laserlvlmin=0;
canusesmb=1; 
canuseswitchconfig=1; 
canusespectrumability=1; 
usespectrumability=0;
useeleech=0;
v_zone_bz=false;
cloaked=0;
restore=0;
own_health_bilo=0;
damageToDraw=0;
hasStartedAlarm8=false;
RPOINT=0;

ship_sprite=spectrum_spr;
ship_name="spectrum";

//window_set_size(1920,1080);


//----- Pilotsheet -----
gamer.ship_hull_i = 0
gamer.ship_hull_ii = 0
gamer.shield_engineering = 0 
gamer.engineering = 0
gamer.bounty_hunter_i = 0 
gamer.bounty_hunter_ii = 0
gamer.alien_hunter = 0
gamer.greed = 0
gamer.luck_i = 0
gamer.luck_ii = 0
gamer.cruelty_i = 0 
gamer.cruelty_ii = 0
gamer.evasive_i = 0
gamer.evasive_ii = 0
gamer.electro_optics = 0 
gamer.shield_mechanics = 0
gamer.smb_upgrade = 0
gamer.ish_upgrade = 0
gamer.shieldbackup_upgrade = 0
gamer.warrep_upgrade = 0 

//Ñîçäàíèå êîíòðîëëåðîâ.
//instance_create(0,0,particles_ctrl);
//instance_create(0,0,minimap);
//instance_create(0,0,load_ctrl);
//load_npc_sprites();
alarm[1]=1*2;
alarm[10]=1*2;
dirspeed=10

/*
//Âûáîð êîðïîðàöèè.
if ActivityCtrl.corpor_set=true then
    {
    help_open=true;
    with(instance_create(x-192,y,corpor_menu)) corporation_this:=0;
    with(instance_create(x    ,y,corpor_menu)) corporation_this:=1;
    with(instance_create(x+192,y,corpor_menu)) corporation_this:=2;
    stoped:=true;
    if global.loading!=true then
        Ship:="phoenix"; guns_installation(gamer);
    }
*/

/* Ñâåäåíèÿ î äðîèäàõ. [i,0] - id i-ãî ñëîòà äðîèäîâ. [i,1] - êàêîé äðîèä ïîä íîìåðîì i. [i,1+j] - ÷åì çàíÿò j-é ñëîò äðîèäà ïîä íîìåðîì i. */

/*
Gun[0]:=5;
for (i:=1; i<=5; i+=1) Gun[i]="noone"

Laser[0]:=5;
for (i:=1; i<=5; i+=1) Laser[i]="noone"

GunDmg[0]:=5;
for (i:=1; i<=5; i+=1) GunDmg[i]=0;
//Storing the dmg for each gun

LaserDmg[0]:=5;
for (i:=1; i<=5; i+=1) LaserDmg[i]=0;
//Storing the dmg for each gun

GunLvl[0]:=5;
for (i:=1; i<=5; i+=1) GunLvl[i]=0;
//Storing the lvl for each gun

LaserLvl[0]:=5;
for (i:=1; i<=5; i+=1) LaserLvl[i]=0;
//Storing the lvl for each laser

Inventory[0]:=60;
for (i:=1; i<=Inventory[0]; i+=1) Inventory[i]="noone"
/* Ñâåäåíèÿ î ñëîòàõ èíâåíòàðÿ. Inventory[i]= êàêèì îáîðóäîâàíèåì çàíÿò i-é ñëîò èíâåíòàðÿ*/


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

Gun=array_create(15)
GunC1=array_create(15)
GunC2=array_create(15)
Engine=array_create(15)
EngineC1=array_create(15)
EngineC2=array_create(15)
own_shieldC1=0
own_shieldC2=0
ship_speedC1=0
ship_speedC2=0
MaxDamage=0
MaxDamageC1=0
MaxDamageC2=0
shieldAbsorb=0
shieldAbsorbC1=0
shieldAbsorbC2=0
Inventory=0
InventoryC1=0
InventoryC2=0
droid=array_create(11);
for (i:=1; i<=10; i+=1) {droid[i,0]=noone; droid[i,1]:="noone"; droid[i,2]:="noone"; droid[i,3]:="noone"; droid[i,4]:="noone";}
droidC1=array_create(11);
for (i:=1; i<=10; i+=1) {droidC1[i,0]=noone; droidC1[i,1]:="noone"; droidC1[i,2]:="noone"; droidC1[i,3]:="noone"; droidC1[i,4]:="noone";}
droidC2=array_create(11);
for (i:=1; i<=10; i+=1) {droidC2[i,0]=noone; droidC2[i,1]:="noone"; droidC2[i,2]:="noone"; droidC2[i,3]:="noone"; droidC2[i,4]:="noone";}


visible=true;
load_game();
load_quests()
guns_installation(gamer);
health_restore=health_def;
//shield_restore=shield_def;
own_health=health_def;
event_user(0);
event_user(15);
action[0] = "gamer"

instance_create_depth(0,0,0,oCamera);
var _cooldown = instance_create_depth(0,0,0,cooldowns_ctrl);
_cooldown.owner = id;

//Abilities
ability_1 = "warrep"
ability_2 = "dmg_boost"

ability_1_icon = warrep_icon_spr;
ability_2_icon = dmg_boost_icon_spr;

can_use_ability_1 = true;
can_use_ability_2 = true;

is_using_ability_1 = false;
is_using_ability_2 = false;


guns_installation(gamer);
count=0
hasused=0
rsb_rate=0