///@description POWER
var i, iris_numb, flax_numb, engines, lf_1_numb, mp_1_numb, shields, dronedesign, shiptype;
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

//POWER 5 ----------------------------------
if Power >= 5
{
	//INFOS
	RPOINT=irandom_range(80,100);
	rings=choose(3,3,3,4,4,4,4,4);

	//DRONES
	iris_numb = irandom_range(7,10);
	flax_numb = 10 - iris_numb;
	dronedesign=choose(1,1,2,3,2,3) //1=normal, 2=havoc, 3=hercules
	if dronedesign=1 then {dnormal=1; dhavoc=0; dhercules=0;}
	else if dronedesign=2 then {dnormal=0; dhavoc=1; dhercules=0;}
	else if dronedesign=3 then {dnormal=0; dhavoc=0; dhercules=1;}
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
	var spd2_nbrC1 = shield_slotsC1 - bo2_nbrC1
	
	var lf4_nbrC2 = round(prob1[irandom(array_length(prob1)-1)]/100*gun_slotsC2)
	var lf3_nbrC2 = gun_slotsC2-lf4_nbrC2
	
	var bo2_nbrC2 = round(prob1[irandom(array_length(prob1)-1)]/100*shield_slotsC2)
	var bo1_nbrC2 = shield_slotsC2 - bo2_nbrC2
	
	var spd3_nbrC2 = round(prob1[irandom(array_length(prob1)-1)]/100*generator_slotsC2)
	var spd2_nbrC2 = shield_slotsC2 - bo2_nbrC2
	
	//SKILLTREE
	pilotsheet_ship_hull_i=2
	if(pilotsheet_ship_hull_i=2) then pilotsheet_ship_hull_ii=choose(1,1,2,2,2,3,3,3);
	
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
	iris_numb = irandom_range(7,10);
	flax_numb = 10 - iris_numb;
	dronedesign=choose(1,1,2,3,2,3) //1=normal, 2=havoc, 3=hercules
	if dronedesign=1 then {dnormal=1; dhavoc=0; dhercules=0;}
	else if dronedesign=2 then {dnormal=0; dhavoc=1; dhercules=0;}
	else if dronedesign=3 then {dnormal=0; dhavoc=0; dhercules=1;}
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
	var spd2_nbrC1 = shield_slotsC1 - bo2_nbrC1
	
	var lf4_nbrC2 = round(prob1[irandom(array_length(prob1)-1)]/100*gun_slotsC2)
	var lf3_nbrC2 = gun_slotsC2-lf4_nbrC2
	
	var bo2_nbrC2 = round(prob1[irandom(array_length(prob1)-1)]/100*shield_slotsC2)
	var bo1_nbrC2 = shield_slotsC2 - bo2_nbrC2
	
	var spd3_nbrC2 = round(prob1[irandom(array_length(prob1)-1)]/100*generator_slotsC2)
	var spd2_nbrC2 = shield_slotsC2 - bo2_nbrC2	

	//SKILLTREE
	pilotsheet_ship_hull_i=choose(1,1,2,2,2,2,2);
	if(pilotsheet_ship_hull_i=2) then pilotsheet_ship_hull_ii=choose(0,0,0,1,1,1,1,2,2,2,3,3);
	
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
	iris_numb = irandom_range(7,10);
	flax_numb = 10 - iris_numb;	
	dronedesign=choose(1,1,2,3,2,3) //1=normal, 2=havoc, 3=hercules
	if dronedesign=1 then {dnormal=1; dhavoc=0; dhercules=0;}
	else if dronedesign=2 then {dnormal=0; dhavoc=1; dhercules=0;}
	else if dronedesign=3 then {dnormal=0; dhavoc=0; dhercules=1;}
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
	var spd2_nbrC1 = shield_slotsC1 - spd3_nbrC1 - spd1_nbrC1
	
	var lf4_nbrC2 = round(prob1[irandom(array_length(prob1)-1)]/100*gun_slotsC2)
	var mp1_nbrC2 = round(prob2[irandom(array_length(prob2)-1)]/100*gun_slotsC2)
	var lf3_nbrC2 = gun_slotsC2-lf4_nbrC2-mp1_nbrC2
	
	var bo2_nbrC2 = round(prob1[irandom(array_length(prob2)-1)]/100*shield_slotsC2)
	var bo0_nbrC2 = round(prob2[irandom(array_length(prob1)-1)]/100*shield_slotsC2)
	var bo1_nbrC2 = shield_slotsC2 - bo2_nbrC2 - bo0_nbrC2
	
	var spd3_nbrC2 = round(prob1[irandom(array_length(prob1)-1)]/100*generator_slotsC2)
	var spd1_nbrC2 = round(prob2[irandom(array_length(prob2)-1)]/100*generator_slotsC2)
	var spd2_nbrC2 = shield_slotsC2 - spd3_nbrC2 - spd1_nbrC2
	

	//SKILLTREE
	pilotsheet_ship_hull_i=choose(0,0,1,1,1,2,2);
	if(pilotsheet_ship_hull_i=2) then pilotsheet_ship_hull_ii=choose(0,0,1,1,1,2,2,2,3,3);
}



//POWER 2 ----------------------------------
if Power = 2
{
	//INFOS
	RPOINT=irandom_range(20,40);
	rings=choose(0,0,0,1,1,1,1,1,2,2);

	//DRONES
	iris_numb = irandom_range(7,10);
	flax_numb = 10 - iris_numb;
	dronedesign=choose(1,1,2,3,2,3) //1=normal, 2=havoc, 3=hercules
	if dronedesign=1 then {dnormal=1; dhavoc=0; dhercules=0;}
	else if dronedesign=2 then {dnormal=0; dhavoc=1; dhercules=0;}
	else if dronedesign=3 then {dnormal=0; dhavoc=0; dhercules=1;}
	droneformation=choose(1,2,3)//1=default, 2=heart
	
	
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
	var spd2_nbrC1 = shield_slotsC1 - spd1_nbrC1
	
	var mp1_nbrC2 = round(prob2[irandom(array_length(prob2)-1)]/100*gun_slotsC2)
	var lf3_nbrC2 = gun_slotsC2-mp1_nbrC2
	
	var bo0_nbrC2 = round(prob2[irandom(array_length(prob2)-1)]/100*shield_slotsC2)
	var bo1_nbrC2 = shield_slotsC2 - bo0_nbrC2
	
	var spd1_nbrC2 = round(prob2[irandom(array_length(prob2)-1)]/100*generator_slotsC2)
	var spd2_nbrC2 = shield_slotsC2 - spd1_nbrC2
	
	
	//SKILLTREE
	pilotsheet_ship_hull_i=choose(0,0,0,0,0,1,1,1,1,2,2);
	if(pilotsheet_ship_hull_i=2) then pilotsheet_ship_hull_ii=choose(0,0,0,0,0,1,1,1,1,1,2,2,2,3,3);
}



//POWER 1 ----------------------------------
if Power = 1
{
	//INFOS
	RPOINT=irandom_range(5,20);
	rings=choose(0,0,0,0,0,0,0,1);

	//DRONES
	iris_numb = irandom_range(7,10);
	flax_numb = 10 - iris_numb;
	for (i=1;i<=min(flax_numb,10);i++){droid[i,1]:="flax";}
	for (i=flax_numb+1; i<=min(flax_numb+iris_numb,10);i++){if (i>=0) droid[i,1]:="iris";}	
	dronedesign=choose(1,1,2,3,2,3) //1=normal, 2=havoc, 3=hercules
	if dronedesign=1 then {dnormal=1; dhavoc=0; dhercules=0;}
	else if dronedesign=2 then {dnormal=0; dhavoc=1; dhercules=0;}
	else if dronedesign=3 then {dnormal=0; dhavoc=0; dhercules=1;}
	droneformation=choose(1,2,3)//1=default, 2=heart
	
	
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
	pilotsheet_ship_hull_i=choose(0,0,0,0,0,1,1,1);
	if(pilotsheet_ship_hull_i=2) then pilotsheet_ship_hull_ii=choose(0,0,0,0,0,1,1,1,1,1,2,2,2,3,3);
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

array_push(GunC1,gun_shipC1)
array_push(EngineC1,engine_shipC1)

array_push(GunC2,gun_shipC2)
array_push(EngineC2,engine_shipC2)

for (i:=1; i<=mp1_nbrC1; i+=1;) {array_push(GunC1,"MP-1");}
for (i:=1; i<=lf3_nbrC1; i+=1;) {array_push(GunC1,"LF-3");}
for (i:=1; i<=lf4_nbrC1; i+=1;) {array_push(GunC1,"LF-4");}

for (i:=1; i<=bo0_nbrC1; i+=1;) {array_push(EngineC1,"B0-0");}
for (i:=1; i<=bo1_nbrC1; i+=1;) {array_push(EngineC1,"B0-1");}
for (i:=1; i<=bo2_nbrC1; i+=1;) {array_push(EngineC1,"B0-2");}

for (i:=1; i<=spd1_nbrC1; i+=1;) {array_push(EngineC1,"SPD-1");}
for (i:=1; i<=spd2_nbrC1; i+=1;) {array_push(EngineC1,"SPD-2");}
for (i:=1; i<=spd3_nbrC1; i+=1;) {array_push(EngineC1,"SPD-3");}

for (i:=1; i<=mp1_nbrC2; i+=1;) {array_push(GunC2,"MP-1");}
for (i:=1; i<=lf3_nbrC2; i+=1;) {array_push(GunC2,"LF-3");}
for (i:=1; i<=lf4_nbrC2; i+=1;) {array_push(GunC2,"LF-4");}

for (i:=1; i<=bo0_nbrC2; i+=1;) {array_push(EngineC2,"B0-0");}
for (i:=1; i<=bo1_nbrC2; i+=1;) {array_push(EngineC2,"B0-1");}
for (i:=1; i<=bo2_nbrC2; i+=1;) {array_push(EngineC2,"B0-2");}

for (i:=1; i<=spd1_nbrC2; i+=1;) {array_push(EngineC2,"SPD-1");}
for (i:=1; i<=spd2_nbrC2; i+=1;) {array_push(EngineC2,"SPD-2");}
for (i:=1; i<=spd3_nbrC2; i+=1;) {array_push(EngineC2,"SPD-3");}

for (i:=1; i<=flax_numb; i+=1;) {droid[i,1]="flax"}
for (i=1+flax_numb;i<=flax_numb+iris_numb;i++){droid[i,1]:="iris";}
    	
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