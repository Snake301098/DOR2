///@description POWER
var i, iris_numb, flax_numb, engines, lf_1_numb, mp_1_numb, shields, dronedesign, shiptype, dronedesign_proba;
iris_numb:=0; flax_numb:=0; engines:=0   dronedesign:=0; shiptype=0;
var lf4_nbrC1=0;lf4_nbrC2=0;lf3_nbrC1=0;lf3_nbrC2=0;mp1_nbrC1=0;mp1_nbrC2=0;bo2_nbrC1=0;bo2_nbrC2=0;bo1_nbrC1=0;bo1_nbrC2=0;bo0_nbrC1=0;bo0_nbrC2=0;spd3_nbrC1=0;spd3_nbrC2=0;spd2_nbrC1=0;spd2_nbrC2=0;spd1_nbrC1=0;spd1_nbrC2=0;

//Ñëó÷àéíûé âûáîð ñèëû ïðîòèâíèêà.
//ships.Power := Power;


//INIT
health_def = info_shiptypes(Shiptype, "health");
var guns_list = [];
var lasers_list = [];
if Shiptype = "citadel" then guns_list = ["HST-2_1","HST-2_2","HST-2_3","HST-2_4","HST-2_5"] else guns_list = ["HST-1_1","HST-1_2","HST-1_3","HST-1_4","HST-1_5"];
if Shiptype = "vengeance" then lasers_list = ["LF-4_1","LF-4_2","LF-4_3","LF-4_4","LF-4_5"] else lasers_list = ["LF-3_1","LF-3_2","LF-3_3","LF-3_4","LF-3_5"];

if Ship = "bigboy" then {gun_slots = 6; engine_slots=5}
if Ship = "leonov" then {gun_slots = 8; engine_slots=7}
if Ship = "nostromo" then {gun_slots = 5; engine_slots=4}
if Shiptype = "vengeance" then {gun_slots = 10; engine_slots=12}
if Shiptype = "goliath" then {gun_slots = 15; engine_slots=15}
if Ship = "aegis" then {gun_slots = 8; engine_slots=12}
if Ship = "citadel" then {gun_slots = 5; engine_slots=18}
if Ship = "spearhead" then {gun_slots = 5; engine_slots=7}


var lf4_nbr = 0;
var lf3_nbr = 0;
var mp1_nbr = 0;

var bo2_nbr = 0;
var bo1_nbr = 0;
var bo0_nbr = 0;

Gun=[]
GunC1=[]
GunC2=[]
Engine=[]
EngineC1=[]
EngineC2=[]
droid=[]
droidC1=[]
droidC2=[]

dronedesign=choose("normal","havoc","havoc","hercules","mix","mix") 
	
//POWER 5 ----------------------------------
if Power >= 5
{
	//INFOS
	RPOINT=irandom_range(80,100);
	rings=choose(3,3,3,4,4,4,4,4);

	//DRONES
	iris_numb = irandom_range(8,10);
	flax_numb = 10 - iris_numb;
	dronedesign_proba=choose(80,90,100);
	droneformation=choose(1,2,3)//1=default, 2=heart
	
	var gun_slotsC1 = gun_slots ;
	var shield_slotsC1 = engine_slots*0 + flax_numb + iris_numb*2;
	var generator_slotsC1 = engine_slots;
	
	var gun_slotsC2 = gun_slots + flax_numb + iris_numb*2;
	var shield_slotsC2 = engine_slots;
	var generator_slotsC2 = engine_slots*0;
	
	var prob1 = [70,75,80,85,90]
		
	var lf4_nbrC1 = round(prob1[irandom(array_length(prob1)-1)]/100*gun_slotsC1)
	var lf3_nbrC1 = gun_slotsC1-lf4_nbrC1
	
	var bo2_nbrC1 = round(prob1[irandom(array_length(prob1)-1)]/100*shield_slotsC1)
	var bo1_nbrC1 = shield_slotsC1 - bo2_nbrC1
	
	var spd3_nbrC1 = round(prob1[irandom(array_length(prob1)-1)]/100*generator_slotsC1)
	var spd2_nbrC1 = generator_slotsC1 - spd3_nbrC1
	
	var lf4_nbrC2 = round(prob1[irandom(array_length(prob1)-1)]/100*gun_slotsC2)
	var lf3_nbrC2 = gun_slotsC2-lf4_nbrC2
	
	var bo2_nbrC2 = round(prob1[irandom(array_length(prob1)-1)]/100*shield_slotsC2)
	var bo1_nbrC2 = shield_slotsC2 - bo2_nbrC2
	
	var spd3_nbrC2 = round(prob1[irandom(array_length(prob1)-1)]/100*generator_slotsC2)
	var spd2_nbrC2 = generator_slotsC2 - spd3_nbrC2
	
	//SKILLTREE
	ship_hull_i=2
	if ship_hull_i=2 then ship_hull_ii = choose(1,1,2,2,2,3,3,3);
	shield_engineering = choose(2,3,3,4,4,5,5);
	engineering = choose(2,3,3,4,4,5,5);
	bounty_hunter_i = 2
	if bounty_hunter_i = 2 then bounty_hunter_ii = choose(1,1,2,2,2,3,3,3);
	alien_hunter = choose(2,3,3,4,4,5,5);
	greed = choose(2,3,3,4,4,5,5);
	luck_i = 2
	if luck_i = 2 then luck_ii = choose(1,1,2,2,2,3,3,3);
	cruelty_i = 2
	if cruelty_i = 2 then cruelty_ii = choose(1,1,2,2,2,3,3,3);
	evasive_i = 2
	if evasive_i = 2 then evasive_ii = choose(1,1,2,2,2,3,3,3);
	electro_optics = choose(2,3,3,4,4,5,5);
	shield_mechanics = choose(2,3,3,4,4,5,5);
	smb_upgrade = choose(2,3,3,4,4,5,5);
	ish_upgrade = choose(2,3,3,4,4,5,5);
	shieldbackup_upgrade = choose(2,3,3,4,4,5,5);
	warrep_upgrade = choose(2,3,3,4,4,5,5);
	
	//ABILITIES
	ability_1 = "warrep"
}




//POWER 4 ----------------------------------
if Power = 4
{
	//INFOS
	RPOINT=irandom_range(60,80);
	rings=choose(2,2,2,3,3,3,3,3,4,4,4);

	//DRONES
	iris_numb = irandom_range(6,10);
	flax_numb = 10 - iris_numb;
	dronedesign_proba=choose(60,70,80);
	droneformation=choose(1,2,3)//1=default, 2=heart

	var gun_slotsC1 = gun_slots ;
	var shield_slotsC1 = engine_slots*0 + flax_numb + iris_numb*2;
	var generator_slotsC1 = engine_slots;
	
	var gun_slotsC2 = gun_slots + flax_numb + iris_numb*2;
	var shield_slotsC2 = engine_slots;
	var generator_slotsC2 = engine_slots*0;
		
	var prob1 = [45,50,55,60,65,70,75]
	
	var lf4_nbrC1 = round(prob1[irandom(array_length(prob1)-1)]/100*gun_slotsC1)
	var lf3_nbrC1 = gun_slotsC1-lf4_nbrC1
	
	var bo2_nbrC1 = round(prob1[irandom(array_length(prob1)-1)]/100*shield_slotsC1)
	var bo1_nbrC1 = shield_slotsC1 - bo2_nbrC1
	
	var spd3_nbrC1 = round(prob1[irandom(array_length(prob1)-1)]/100*generator_slotsC1)
	var spd2_nbrC1 = shield_slotsC1 - spd3_nbrC1
	
	var lf4_nbrC2 = round(prob1[irandom(array_length(prob1)-1)]/100*gun_slotsC2)
	var lf3_nbrC2 = gun_slotsC2-lf4_nbrC2
	
	var bo2_nbrC2 = round(prob1[irandom(array_length(prob1)-1)]/100*shield_slotsC2)
	var bo1_nbrC2 = shield_slotsC2 - bo2_nbrC2
	
	var spd3_nbrC2 = round(prob1[irandom(array_length(prob1)-1)]/100*generator_slotsC2)
	var spd2_nbrC2 = generator_slotsC2 - spd3_nbrC2	
	
	//SKILLTREE
	ship_hull_i=2
	if ship_hull_i=2 then ship_hull_ii = choose(0,0,0,1,1,1,2,2);
	shield_engineering = choose(1,2,2,3,3,4,4,5);
	engineering = choose(1,2,2,3,3,4,4,5);
	bounty_hunter_i = 2
	if bounty_hunter_i = 2 then bounty_hunter_ii = choose(0,0,0,1,1,1,2,2);
	alien_hunter = choose(1,2,2,3,3,4,4,5);
	greed = choose(1,2,2,3,3,4,4,5);
	luck_i = 2
	if luck_i = 2 then luck_ii = choose(0,0,0,1,1,1,2,2);
	cruelty_i = 2
	if cruelty_i = 2 then cruelty_ii = choose(0,0,0,1,1,1,2,2);
	evasive_i = 2
	if evasive_i = 2 then evasive_ii = choose(0,0,0,1,1,1,2,2);
	electro_optics = choose(1,2,2,3,3,4,4,5);
	shield_mechanics = choose(1,2,2,3,3,4,4,5);
	smb_upgrade = choose(1,2,2,3,3,4,4,5);
	ish_upgrade = choose(1,2,2,3,3,4,4,5);
	shieldbackup_upgrade = choose(1,2,2,3,3,4,4,5);
	warrep_upgrade = choose(1,2,2,3,3,4,4,5);
	
	//ABILITIES
	if irandom(3) = 0 then	ability_1 = "warrep"
}



//POWER 3 ----------------------------------
if Power = 3
{
	//INFOS
	RPOINT=irandom_range(40,60);
	rings=choose(1,1,2,2,2,2,3,3,3,4);

	//DRONES
	iris_numb = irandom_range(2,6);
	flax_numb = 10 - iris_numb;	
	dronedesign_proba=choose(35,50,60);
	droneformation=choose(1,2,3)//1=default, 2=heart

	
	var gun_slotsC1 = gun_slots ;
	var shield_slotsC1 = engine_slots*0 + flax_numb + iris_numb*2;
	var generator_slotsC1 = engine_slots;
	
	var gun_slotsC2 = gun_slots + flax_numb + iris_numb*2;
	var shield_slotsC2 = engine_slots;
	var generator_slotsC2 = engine_slots*0;
	
	var prob1 = [10,15,20,25]
	var prob2 = [0,5,10,15]
	
	var lf4_nbrC1 = round(prob1[irandom(array_length(prob1)-1)]/100*gun_slotsC1)
	var mp1_nbrC1 = round(prob2[irandom(array_length(prob2)-1)]/100*gun_slotsC1)
	var lf3_nbrC1 = gun_slotsC1-lf4_nbrC1-mp1_nbrC1
	
	var bo2_nbrC1 = round(prob1[irandom(array_length(prob2)-1)]/100*shield_slotsC1)
	var bo0_nbrC1 = round(prob2[irandom(array_length(prob1)-1)]/100*shield_slotsC1)
	var bo1_nbrC1 = shield_slotsC1 - bo2_nbrC1 - bo0_nbrC1
	
	var spd3_nbrC1 = round(prob1[irandom(array_length(prob1)-1)]/100*generator_slotsC1)
	var spd1_nbrC1 = round(prob2[irandom(array_length(prob2)-1)]/100*generator_slotsC1)
	var spd2_nbrC1 = generator_slotsC1 - spd3_nbrC1 - spd1_nbrC1
	
	var lf4_nbrC2 = round(prob1[irandom(array_length(prob1)-1)]/100*gun_slotsC2)
	var mp1_nbrC2 = round(prob2[irandom(array_length(prob2)-1)]/100*gun_slotsC2)
	var lf3_nbrC2 = gun_slotsC2-lf4_nbrC2-mp1_nbrC2
	
	var bo2_nbrC2 = round(prob1[irandom(array_length(prob2)-1)]/100*shield_slotsC2)
	var bo0_nbrC2 = round(prob2[irandom(array_length(prob1)-1)]/100*shield_slotsC2)
	var bo1_nbrC2 = shield_slotsC2 - bo2_nbrC2 - bo0_nbrC2
	
	var spd3_nbrC2 = round(prob1[irandom(array_length(prob1)-1)]/100*generator_slotsC2)
	var spd1_nbrC2 = round(prob2[irandom(array_length(prob2)-1)]/100*generator_slotsC2)
	var spd2_nbrC2 = generator_slotsC2 - spd3_nbrC2 - spd1_nbrC2
	

	//SKILLTREE
	ship_hull_i=choose(0,1,1,2,2);
	if ship_hull_i=2 then ship_hull_ii = choose(0,0,0,1,1,1,2,2);
	shield_engineering = choose(0,1,1,2,2,2,2,3,3,4,5);
	engineering = choose(0,1,1,2,2,2,2,3,3,4,5);
	bounty_hunter_i = choose(0,1,1,2,2);
	if bounty_hunter_i = 2 then bounty_hunter_ii = choose(0,0,0,1,1,1,2,2);
	alien_hunter = choose(0,1,1,2,2,2,2,3,3,4,5);
	greed = choose(0,1,1,2,2,2,2,3,3,4,5);
	luck_i = choose(0,1,1,2,2);
	if luck_i = 2 then luck_ii = choose(0,0,0,1,1,1,2,2);
	cruelty_i = choose(0,1,1,2,2);
	if cruelty_i = 2 then cruelty_ii = choose(0,0,0,1,1,1,2,2);
	evasive_i = choose(0,1,1,2,2);
	if evasive_i = 2 then evasive_ii = choose(0,0,0,1,1,1,2,2);
	electro_optics = choose(0,1,1,2,2,2,2,3,3,4,5);
	shield_mechanics = choose(0,1,1,2,2,2,2,3,3,4,5);
	smb_upgrade = choose(0,1,1,2,2,2,2,3,3,4,5);
	ish_upgrade = choose(0,1,1,2,2,2,2,3,3,4,5);
	shieldbackup_upgrade = choose(0,1,1,2,2,2,2,3,3,4,5);
	warrep_upgrade = choose(0,1,1,2,2,2,2,3,3,4,5);
}



//POWER 2 ----------------------------------
if Power = 2
{
	//INFOS
	RPOINT=irandom_range(20,40);
	rings=choose(0,0,0,1,1,1,1,1,2,2);

	//DRONES
	iris_numb = irandom_range(0,1);
	flax_numb = irandom_range(2,5);
	dronedesign_proba=choose(15,20,30);
	droneformation=1//1=default, 2=heart
	
	
	var gun_slotsC1 = gun_slots ;
	var shield_slotsC1 = engine_slots*0 + flax_numb + iris_numb*2;
	var generator_slotsC1 = engine_slots;
	
	var gun_slotsC2 = gun_slots + flax_numb + iris_numb*2;
	var shield_slotsC2 = engine_slots;
	var generator_slotsC2 = engine_slots*0;
	
	var prob2 = [15,20,25,30,35,40,45]
	
	var mp1_nbrC1 = round(prob2[irandom(array_length(prob2)-1)]/100*gun_slotsC1)
	var lf3_nbrC1 = gun_slotsC1-mp1_nbrC1
	
	var bo0_nbrC1 = round(prob2[irandom(array_length(prob2)-1)]/100*shield_slotsC1)
	var bo1_nbrC1 = shield_slotsC1 - bo0_nbrC1
	
	var spd1_nbrC1 = round(prob2[irandom(array_length(prob2)-1)]/100*generator_slotsC1)
	var spd2_nbrC1 = generator_slotsC1 - spd1_nbrC1
	
	var mp1_nbrC2 = round(prob2[irandom(array_length(prob2)-1)]/100*gun_slotsC2)
	var lf3_nbrC2 = gun_slotsC2-mp1_nbrC2
	
	var bo0_nbrC2 = round(prob2[irandom(array_length(prob2)-1)]/100*shield_slotsC2)
	var bo1_nbrC2 = shield_slotsC2 - bo0_nbrC2
	
	var spd1_nbrC2 = round(prob2[irandom(array_length(prob2)-1)]/100*generator_slotsC2)
	var spd2_nbrC2 = generator_slotsC2 - spd1_nbrC2
	
	//SKILLTREE
	ship_hull_i=choose(0,0,1,1,2);
	if ship_hull_i=2 then ship_hull_ii = choose(0,0,0,1,1,1,2,2);
	shield_engineering = choose(0,0,1,1,1,2,2,2,3);
	engineering = choose(0,0,1,1,1,2,2,2,3);
	bounty_hunter_i = choose(0,0,1,1,2);
	if bounty_hunter_i = 2 then bounty_hunter_ii = choose(0,0,0,1,1,1,2,2);
	alien_hunter = choose(0,0,1,1,1,2,2,2,3);
	greed = choose(0,0,1,1,1,2,2,2,3);
	luck_i = choose(0,0,1,1,2);
	if luck_i = 2 then luck_ii = choose(0,0,0,1,1,1,2,2);
	cruelty_i = choose(0,0,1,1,2);
	if cruelty_i = 2 then cruelty_ii = choose(0,0,0,1,1,1,2,2);
	evasive_i = choose(0,0,1,1,2);
	if evasive_i = 2 then evasive_ii = choose(0,0,0,1,1,1,2,2);
	electro_optics = choose(0,0,1,1,1,2,2,2,3);
	shield_mechanics = choose(0,0,1,1,1,2,2,2,3);
	smb_upgrade = choose(0,0,1,1,1,2,2,2,3);
	ish_upgrade = choose(0,0,1,1,1,2,2,2,3);
	shieldbackup_upgrade = choose(0,0,1,1,1,2,2,2,3);
	warrep_upgrade = choose(0,0,1,1,1,2,2,2,3);
}



//POWER 1 ----------------------------------
if Power = 1
{
	//INFOS
	RPOINT=irandom_range(5,20);
	rings=choose(0,0,0,0,0,0,0,1);

	//DRONES
	iris_numb = 0;
	flax_numb = irandom_range(0,3);
	for (i=1;i<=min(flax_numb,10);i++){droid[i,1]:="flax";}
	for (i=flax_numb+1; i<=min(flax_numb+iris_numb,10);i++){if (i>=0) droid[i,1]:="iris";}	
	dronedesign_proba=choose(0,5,10);
	droneformation=1//1=default, 2=heart
	
	
	var gun_slotsC1 = gun_slots ;
	var shield_slotsC1 = engine_slots*0 + flax_numb + iris_numb*2;
	var generator_slotsC1 = engine_slots;
	
	var gun_slotsC2 = gun_slots + flax_numb + iris_numb*2;
	var shield_slotsC2 = engine_slots;
	var generator_slotsC2 = engine_slots*0;
	
	var prob1 = [30,35,40,45,50]
	var prob2 = [15,20]
	
	var mp1_nbrC1 = round(prob1[irandom(array_length(prob1)-1)]/100*gun_slotsC1)
	var lf3_nbrC1 = round(prob2[irandom(array_length(prob2)-1)]/100*gun_slotsC1)
	
	var bo0_nbrC1 = round(prob1[irandom(array_length(prob1)-1)]/100*shield_slotsC1)
	var bo1_nbrC1 = round(prob2[irandom(array_length(prob2)-1)]/100*shield_slotsC1)
	
	var spd1_nbrC1 = round(prob1[irandom(array_length(prob1)-1)]/100*generator_slotsC1)
	var spd2_nbrC1 = round(prob2[irandom(array_length(prob2)-1)]/100*generator_slotsC1)
	
	var mp1_nbrC2 = round(prob1[irandom(array_length(prob1)-1)]/100*gun_slotsC2)
	var lf3_nbrC2 = round(prob2[irandom(array_length(prob2)-1)]/100*gun_slotsC2)
	
	var bo0_nbrC2 = round(prob1[irandom(array_length(prob1)-1)]/100*shield_slotsC2)
	var bo1_nbrC2 = round(prob2[irandom(array_length(prob2)-1)]/100*shield_slotsC2)
	
	var spd1_nbrC2 = round(prob1[irandom(array_length(prob1)-1)]/100*generator_slotsC2)
	var spd2_nbrC2 = round(prob2[irandom(array_length(prob2)-1)]/100*generator_slotsC2)
	
	
	//SKILLTREE
	ship_hull_i=choose(0,0,0,1,1);
	if ship_hull_i=2 then ship_hull_ii = choose(0,0,0,1,1,1,2,2);
	shield_engineering = choose(0,0,0,1,1,1,2,2);
	engineering = choose(0,0,0,1,1,1,2,2);
	bounty_hunter_i = choose(0,0,0,1,1);
	if bounty_hunter_i = 2 then bounty_hunter_ii = choose(0,0,0,1,1,1,2,2);
	alien_hunter = choose(0,0,0,1,1,1,2,2);
	greed = choose(0,0,0,1,1,1,2,2);
	luck_i = choose(0,0,0,1,1);
	if luck_i = 2 then luck_ii = choose(0,0,0,1,1,1,2,2);
	cruelty_i = choose(0,0,0,1,1);
	if cruelty_i = 2 then cruelty_ii = choose(0,0,0,1,1,1,2,2);
	evasive_i = choose(0,0,0,1,1);
	if evasive_i = 2 then evasive_ii = choose(0,0,0,1,1,1,2,2);
	electro_optics = choose(0,0,0,1,1,1,2,2);
	shield_mechanics = choose(0,0,0,1,1,1,2,2);
	smb_upgrade = choose(0,0,0,1,1,1,2,2);
	ish_upgrade = choose(0,0,0,1,1,1,2,2);
	shieldbackup_upgrade = choose(0,0,0,1,1,1,2,2);
	warrep_upgrade = choose(0,0,0,1,1,1,2,2);
}


var gun_shipC1 = min(gun_slots,mp1_nbrC1+lf3_nbrC1+lf4_nbrC1);
var gun_droidsC1 = max(gun_slotsC1 - gun_shipC1,0);
var generator_shipC1 = generator_slotsC1;
var shield_shipC1 = engine_slots - generator_shipC1;
var shield_droidsC1 = shield_slotsC1 - shield_shipC1;
var engine_shipC1 = shield_shipC1 + generator_shipC1;

var gun_shipC2 = min(gun_slots,mp1_nbrC2+lf3_nbrC2+lf4_nbrC2);
var gun_droidsC2 = max(gun_slotsC2 - gun_shipC2,0);
var generator_shipC2 = generator_slotsC2;
var shield_shipC2 = engine_slots - generator_shipC2;
var shield_droidsC2 = shield_slotsC2 - shield_shipC2;
var engine_shipC2 = shield_shipC2 + generator_shipC2;

/*
array_push(GunC1,gun_shipC1)
array_push(EngineC1,engine_shipC1)

array_push(GunC2,gun_shipC2)
array_push(EngineC2,engine_shipC2)
*/

array_push(GunC1,mp1_nbrC1+lf3_nbrC1+lf4_nbrC1)
array_push(EngineC1,bo0_nbrC1+bo1_nbrC1+bo2_nbrC1+spd1_nbrC1+spd2_nbrC1+spd3_nbrC1)

array_push(GunC2,mp1_nbrC2+lf3_nbrC2+lf4_nbrC2)
array_push(EngineC2,mp1_nbrC2+lf3_nbrC2+lf4_nbrC2+mp1_nbrC2+lf3_nbrC2+lf4_nbrC2)

for (i:=1; i<=mp1_nbrC1; i+=1;) {array_push(GunC1,"MP-1");}
for (i:=1; i<=lf3_nbrC1; i+=1;) {array_push(GunC1,"LF-3");}
for (i:=1; i<=lf4_nbrC1; i+=1;) {array_push(GunC1,"LF-4");}
for (i:=array_length(GunC1); i<=gun_slots;i++) {array_push(GunC1,"");}

for (i:=1; i<=bo0_nbrC1; i+=1;) {array_push(EngineC1,"B0-0");}
for (i:=1; i<=bo1_nbrC1; i+=1;) {array_push(EngineC1,"B0-1");}
for (i:=1; i<=bo2_nbrC1; i+=1;) {array_push(EngineC1,"B0-2");}

for (i:=1; i<=spd1_nbrC1; i+=1;) {array_push(EngineC1,"SPD-1");}
for (i:=1; i<=spd2_nbrC1; i+=1;) {array_push(EngineC1,"SPD-2");}
for (i:=1; i<=spd3_nbrC1; i+=1;) {array_push(EngineC1,"SPD-3");}
for (i:=array_length(EngineC1); i<=engine_slots;i++) {array_push(EngineC1,"");}

for (i:=1; i<=mp1_nbrC2; i+=1;) {array_push(GunC2,"MP-1");}
for (i:=1; i<=lf3_nbrC2; i+=1;) {array_push(GunC2,"LF-3");}
for (i:=1; i<=lf4_nbrC2; i+=1;) {array_push(GunC2,"LF-4");}
for (i:=array_length(GunC2); i<=gun_slots;i++) {array_push(GunC2,"");}

for (i:=1; i<=bo0_nbrC2; i+=1;) {array_push(EngineC2,"B0-0");}
for (i:=1; i<=bo1_nbrC2; i+=1;) {array_push(EngineC2,"B0-1");}
for (i:=1; i<=bo2_nbrC2; i+=1;) {array_push(EngineC2,"B0-2");}

for (i:=1; i<=spd1_nbrC2; i+=1;) {array_push(EngineC2,"SPD-1");}
for (i:=1; i<=spd2_nbrC2; i+=1;) {array_push(EngineC2,"SPD-2");}
for (i:=1; i<=spd3_nbrC2; i+=1;) {array_push(EngineC2,"SPD-3");}
for (i:=array_length(EngineC2); i<=engine_slots;i++) {array_push(EngineC2,"");}

for (i:=1; i<=flax_numb; i+=1;) 
{
	droid[i,1]="flax"
	var _dronedesign = "normal"
	if irandom(100) <= dronedesign_proba then _dronedesign = dronedesign
	if _dronedesign = "mix" then _dronedesign = choose("hercules","havoc");
	droid[i,4] = _dronedesign;
}
for (i=1+flax_numb;i<=flax_numb+iris_numb;i++)
{
	droid[i,1]:="iris";
	var _dronedesign = "normal"
	if irandom(100) <= dronedesign_proba then _dronedesign = dronedesign
	if _dronedesign = "mix" then _dronedesign = choose("hercules","havoc");
	droid[i,4] = _dronedesign;
}
for (var i:=array_length(droid); i<=10;i++) {array_push(droid,["","","","",""]);}
for (var i:=array_length(droidC1); i<=10;i++) {array_push(droidC1,["","","","",""]);}
for (var i:=array_length(droidC2); i<=10;i++) {array_push(droidC2,["","","","",""]);}

GunC2 = GunC1
EngineC2 = EngineC1
droidC2 = droid
droidC1 = droid
		
event_user(0);
	
guns_installation(id);	
	
rounding[5]:=noone;




/*
			
					break;
			
			
			
			
		        //Êîðàáëü
		//shiptype=choose("newgen","vengeance","goliath","goliath","goliath","goliath","goliath")
		/*
		shiptype=choose("goliath","goliath","goliath","goliath")
		if shiptype="newgen" then
		{Ship=choose("citadel","aegis")}
		if shiptype="vengeance" then
		{Ship=choose("revenge","avenger","adept","corsair","lightning")}
		if shiptype="goliath" then
		{Ship=choose("enforcer","bastion","exalted","veteran","diminisher","venom","solace","sentinel","spectrum","saturn","goal","kick","referee")}
		if shiptype="badships" then
		{Ship=choose("spearhead","vengeance","goliath")}
		if shiptype="noobships" then
		{Ship=choose("phoenix","nostromo","bigboy","leonov")}
		        //Advanced AI
		        if global.AIEMP = 1 then {if irandom_range(0,100) < 65 {hasemp=1} }
		        if global.AIISH = 1 then {if irandom_range(0,100) < 75 {hasish=1} }
		        if global.AIRSB = 1 then {if irandom_range(0,100) < 85 {hasrsb=1} }
				*/
		        //Hull
		        //pilotsheet_ship_hull_i = 2 && pilotsheet_ship_hull_ii=0
		        //if pilotsheet_ship_hull_i = 2 then {pilotsheet_ship_hull_ii = 3 }
		        //Bounty hunter
		  /*      pilotsheet_bounty_hunter_i = 2
		        if pilotsheet_bounty_hunter_i = 2 then {pilotsheet_bounty_hunter_ii = 3 }
		        //Ship engineering
		        pilotsheet_ship_engineering = irandom_range(5,5)
		        //Shield engineering
		        pilotsheet_shield_engineering = irandom_range(5,5)
		        //Boosters
		        if irandom_range(0,100) <= 85 then {booster_damage_regular=1}
		        if irandom_range(0,100) <= 75 then {booster_damage_extend=1}
		        if irandom_range(0,100) <= 85 then {booster_hp_regular=1}
		        if irandom_range(0,100) <= 75 then {booster_hp_extend=1}
		        if irandom_range(0,100) <= 85 then {booster_shield_regular=1}
		        if irandom_range(0,100) <= 75 then {booster_shield_extend=1}*/
		        //Äðîèäû
				
				
				
		/*
//Easier new-AI stuff thingy fixy something-ishy    
switch (Power){
    case "full": {
        if(irandom_range(0,100) <= 85){
        haswarrep = true;
        hasshieldbackup = true;
        break;
        }
        if(irandom_range(0,100) <= 75){hassmb=1}
    }
	default:{}
}