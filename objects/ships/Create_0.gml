depth=0;
var i;
//Íàçíà÷åíèå ïåðåìåííûõ ïðè çàãðóçêè êàðòû.
RPOINT=0;
Ship:="goliath";                    //Êàêîé êîðàáëü.
Shiptype="goliath";
target=noone;                       //Îáú¸êò â ëîêå.
firing=0;                           //Ñòàòóñ ïîäãîòîâêè ëàçåðà(êîãäà <15, ëàçåð åù¸ íå ãîòîâ).
health_def=1000;                    //Ìàêñèìàëüíàÿ ïðî÷íîñòü êîðàáëÿ.
//own_health=health_def;              //Íàïîëíåíèå ïåðåìåííîé, îòâå÷àþùåé çà ñèþìèíóòíîå êîë-âî ïðî÷êè.
shield_def=0;                       //Ìàêñèìàëüíîå êîë-âî ùèòà.
restore=false;                      //Ñòàòóñ ïîêîÿ (íå â áîþ).
ownership=0;
targetedship=0;
cloaked = 0;
//ammo_selected = x1_ammo
dmg_boost_activated = false;
count=3;
hasused=0;
canusersb = 1;

Power=6;
gotKilledBy = 0;
pvpClan="";     //which team in 4-4 map
damageReceived = 0; //check if gamer inflicted more than 50% of the total health, if yes, then got the kill as well
directions=0;
v_zone_bz=false;
MaxDamageGun=10;
MaxDamageLaser=10;
gunlvlmin=0;
laserlvlmin=0;
emp=0;
passive=false;
isFollower = choose(0,0,1,1,1); //for alarm 1 ship movement AI logic

//SKILLTREE
pilotsheet_ship_hull_i=0
pilotsheet_ship_hull_ii=0

follow_angle = 0; //follow angle for drones

//own_shield_c1=shield_def;
//own_shield_c2=shield_def;
config=1;
critical_hit = false;

//own_shield=shield_def;              //Íàïîëíåíèå ïåðåìåííîé, îòâå÷àþùåé çà ñèþìèíóòíîå êîë-âî ùèòà.
bluing=false;                       //"Ñèíüêà". Åñëè =true, òî ëàçåð öâåòíîé.
ship_speed=35;                       //Ñêîðîñòü êîðàáëÿ.
isBot="No";
v_zone_bz=false;                    //Äåéñòâóåò ëè íà èãðîêà áåçîïàñíàÿ çîíà.
teleport_[2]=noone; 
teleport_[0]=noone;  //Ñâîéñòâà ïîðòà, ÷åðåç êîòîðûé èãðîê ïîïàë íà êàðòó. [0]-èäåíòèôèêàòîð, [1] è [2]-ïóíêòû íàçíà÷åíèÿ ïîðòà.
range=600;                          //Äàëüíîñòü ñòðåëüáû.
//own_health_bilo=own_health;         //Ïåðåìåííàÿ, èñïîëüçóåìàÿ â ïðîïèñè íàíîñèìîãî óðîíà.
//own_shield_bilo=own_shield;         //Ïåðåìåííàÿ, èñïîëüçóåìàÿ â ïðîïèñè íàíîñèìîãî óðîíà.
MaxDamage:=0;                       //Ìàêñèìàëüíûé óðîí.
attacking=false;                    //Ñòðåëüáà.
image_speed=0;                      //Îñòàíîâêà ñìåíû êàäðîâ ìîäåëè ãåéìåðà.
guns=1;                             //Êîë-âî ïóøåê, óñòàíîâëåííûõ íà êîðàáëå è äðîèäàõ.
lasers=1;
corporation:=0;                     //Êîðïîðàöèÿ èãðîêà.
tdmteam="";                        //Check team corporation it"s a ship battling in TDM map or not
action[0]:="battle";                //Ìîäåëü ïîâåäåíèÿ.
action[1]:="";                      //Ñòàòóñ ïîâåäåíèÿ.
designs[0]=1; 
designs[1]=true; 
for (i:=2; i<=5; i+=1)
    designs[i]=false;               //Ìàññèâ, îòâå÷àþùèé çà äèçàéíû. [0] - óñòàíîâëåííûé äèçàéí, [i] - åñòü ëè ó èãðîêà i-ûé äèçàéí.
Engines=0;                          //Ýôôåêò ïîëíîãî êîë-âà äâèêîâ.
Flax_numb=0; Iris_numb=0;           //Êîë-âî äðîèäîâ.
Rocket_rate:=0;                     //Çàäåðæêà ìåæäó âûñòðåëàìè ðàêåò.
SuperGunNumb:=0;                    //Êîë-âî êðóòûõ ïóøåê.
DroidOff=false;                     //Îòêëþ÷åíû ëè äðîèäû (äëÿ ïîâûøåíèÿ ïðîèç-ñòè).
/*Ñâåäåíèÿ î áîåïðèïàñàõ.
[0,0]=íîìåð âûáðàííûõ áîåïðèïàñîâ. [i,1]=êîë-âî i-ûõ áîåïðèïàñîâ. [i,1]=èíäåêñ ìîäåëè i-ãî âûñòðåëà. [i,2]=èíäåêñ çâóêà i-ãî âûñòðåëà.*/
/*
ammo[0,0]=1;  ammo[1,0]=100*global.code1; ammo[1,1]=x1ammo; ammo[1,2]=global.x1ammo_sound;
ammo[2,0]=5*global.code1; ammo[2,1]=x2ammo; ammo[2,2]=global.x1ammo_sound;
ammo[3,0]=5*global.code1; ammo[3,1]=x3ammo; ammo[3,2]=global.x1ammo_sound;
ammo[4,0]=5*global.code1; ammo[4,1]=x4ammo; ammo[4,2]=global.x4ammo_sound;
ammo[5,0]=5*global.code1; ammo[5,1]=sub_ammo; ammo[5,2]=global.sub_ammo_sound;
//Òîò æå ìàññèâ, íî ïðî ðàêåòû. rocket_ammo[i,3]-óðîí.
rocket_ammo[0,0]:=1; rocket_ammo[1,0]:=10*global.code1; rocket_ammo[1,1]:=rocket_spr;
rocket_ammo[1,2]:=global.rocket_s; rocket_ammo[1,3]:=100;
*/
//for (i:=1; i<=12; i+=1) {
//droid[i,0]=noone; droid[i,1]:="noone"; droid[i,2]:="noone"; droid[i,3]:="noone"; droid[i,4]:="noone";}
/* Ñâåäåíèÿ î äðîèäàõ. [i,0] - id i-ãî ñëîòà äðîèäîâ. [i,1] - êàêîé äðîèä ïîä íîìåðîì i. [i,1+j] - ÷åì çàíÿò j-é ñëîò äðîèäà ïîä íîìåðîì i. */
/*
Laser[0]:=5;
for (i:=1; i<=5; i+=1) Laser[i]="noone"
/* Ñâåäåíèÿ î ñëîòàõ ïóøåê íà êîðàáëå. Gun[i]= êàêîé ïóøêîé çàíÿò i-é ñëîò äëÿ ïóøåê íà êîðàáëå */
/*
GunDmg[0]:=5;
for (i:=1; i<=5; i+=1) GunDmg[i]=0;
//Storing the dmg for each gun

GunLvl[0]:=5;
for (i:=1; i<=5; i+=1) GunLvl[i]=0;
//Storing the lvl for each gun

LaserLvl[0]:=5;
for (i:=1; i<=5; i+=1) LaserLvl[i]=0;
//Storing the lvl for each laser

LaserDmg[0]:=5;
for (i:=1; i<=5; i+=1) LaserDmg[i]=0;
//Storing the dmg for each gun

Generator[0]:=9;
for (i:=1; i<=30; i+=1) Generator[i]="noone"
/* Ñâåäåíèÿ î ñëîòàõ ãåíåðàòîðîâ íà êîðàáëå. Generator[i]= êàêèì ãåíåðàòîðîì çàíÿò i-é ñëîò äëÿ ãåíåðàòîðîâ íà êîðàáëå */

Inventory[0]:=72;
for (i:=1; i<=Inventory[0]; i+=1) Inventory[i]="noone"
/* Ñâåäåíèÿ î ñëîòàõ èíâåíòàðÿ. Inventory[i]= êàêèì îáîðóäîâàíèåì çàíÿò i-é ñëîò èíâåíòàðÿ*/

Reserv[0]:=0;
for (i:=1; i<=40; i+=1) Reserv[i]="noone"
/* Ñâåäåíèÿ î ñëîòàõ ðåçåðâà. Reserv[i]= êàêîé ïóøêîé çàíÿò i-é ðåçåðâíûé ñëîò. */

//GunSprite[0]:=noone; GunSprite[1]:=0;  //[0] - èíäåêñ ñïðàéòà ïóøåê. [1] - êàäð ñïðàéòà ïóøåê.
