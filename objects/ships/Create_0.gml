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
killed_by_gamer_kami = false;
can_use_kami = true;
cloaked = 0;
//ammo_selected = x1_ammo
dmg_boost_activated = false;
count=3;
hasused=0;
canusersb = 1;
can_change_config = true;

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
is_using_emp=0;
passive=false;
isFollower = choose(0,0,1,1,1); //for alarm 1 ship movement AI logic

//ABILITIES
can_use_sentinel = false;
can_use_solace = false;
can_use_diminisher = false;
can_use_spectrum = false;
can_use_venom = false;
is_using_sentinel = false;
is_using_solace = false;
is_using_diminisher = false;
is_using_spectrum = false;
is_using_venom = false;

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

//SKILLTREE
ship_hull_i = 0
ship_hull_ii = 0
shield_engineering = 0
engineering = 0
bounty_hunter_i = 0
bounty_hunter_ii = 0
alien_hunter = 0
greed = 0
luck_i = 0
luck_ii = 0
cruelty_i = 0
cruelty_ii = 0
evasive_i = 0
evasive_ii = 0
electro_optics = 0
shield_mechanics = 0
smb_upgrade = 0
ish_upgrade = 0
shieldbackup_upgrade = 0
warrep_upgrade = 0
will_run = 0 //if =1, then will run when getting under a certain % of HP
running_HP = 0; // how much percentage of hp will start running

Inventory[0]:=72;
for (i:=1; i<=Inventory[0]; i+=1) Inventory[i]="noone"
/* Ñâåäåíèÿ î ñëîòàõ èíâåíòàðÿ. Inventory[i]= êàêèì îáîðóäîâàíèåì çàíÿò i-é ñëîò èíâåíòàðÿ*/

Reserv[0]:=0;
for (i:=1; i<=40; i+=1) Reserv[i]="noone"
/* Ñâåäåíèÿ î ñëîòàõ ðåçåðâà. Reserv[i]= êàêîé ïóøêîé çàíÿò i-é ðåçåðâíûé ñëîò. */

//GunSprite[0]:=noone; GunSprite[1]:=0;  //[0] - èíäåêñ ñïðàéòà ïóøåê. [1] - êàäð ñïðàéòà ïóøåê.
