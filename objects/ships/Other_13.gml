///@description POWER
var i, iris_numb, flax_numb, engines, lf_1_numb, mp_1_numb, shields, dronedesign, shiptype;
iris_numb:=0; flax_numb:=0; engines:=0   dronedesign:=0; shiptype=0;
//Ñëó÷àéíûé âûáîð ñèëû ïðîòèâíèêà.
//ships.Power := Power;


//INIT
health_def = info_shiptypes(Shiptype, "health");
var guns_list = [];
var lasers_list = [];
if Shiptype = "citadel" then guns_list = ["HST-2_1","HST-2_2","HST-2_3","HST-2_4","HST-2_5"] else guns_list = ["HST-1_1","HST-1_2","HST-1_3","HST-1_4","HST-1_5"];
if Shiptype = "vengeance" then lasers_list = ["LF-4_1","LF-4_2","LF-4_3","LF-4_4","LF-4_5"] else lasers_list = ["LF-3_1","LF-3_2","LF-3_3","LF-3_4","LF-3_5"];


//POWER 5 ----------------------------------
if Power = 5
{
	//INFOS
	RPOINT=irandom_range(80,100);
	rings=choose(3,3,3,4,4,4,4,4);

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
	
	//GUNS
	guns = choose(4,4,5,5,5,5); //number of guns
	for (i:=1; i<=guns; i+=1;) {Gun[i]=choose(guns_list[2],guns_list[3],guns_list[3],guns_list[3],guns_list[4]);} 
	
	//LASERS
	lasers = choose(4,4,5,5,5,5); //number of guns
	for (i:=1; i<=lasers; i+=1;) {Laser[i]=choose(lasers_list[2],lasers_list[3],lasers_list[3],lasers_list[3],lasers_list[4]);} 
	
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
	for (i=1;i<=min(flax_numb,10);i++){droid[i,1]:="flax";}
	for (i=flax_numb+1; i<=min(flax_numb+iris_numb,10);i++){if (i>=0) droid[i,1]:="iris";}	
	dronedesign=choose(1,1,2,3,2,3) //1=normal, 2=havoc, 3=hercules
	if dronedesign=1 then {dnormal=1; dhavoc=0; dhercules=0;}
	else if dronedesign=2 then {dnormal=0; dhavoc=1; dhercules=0;}
	else if dronedesign=3 then {dnormal=0; dhavoc=0; dhercules=1;}
	droneformation=choose(1,2,3)//1=default, 2=heart
	
	//GUNS
	guns = choose(3,3,4,4,4,5); //number of guns
	for (i:=1; i<=guns; i+=1;) {Gun[i]=choose(guns_list[1],guns_list[2],guns_list[3],guns_list[3],guns_list[4]);} 
	
	//LASERS
	lasers = choose(3,3,4,4,4,5); //number of guns
	for (i:=1; i<=lasers; i+=1;) {Laser[i]=choose(lasers_list[1],lasers_list[2],lasers_list[3],lasers_list[3],lasers_list[4]);} 
	
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
	for (i=1;i<=min(flax_numb,10);i++){droid[i,1]:="flax";}
	for (i=flax_numb+1; i<=min(flax_numb+iris_numb,10);i++){if (i>=0) droid[i,1]:="iris";}	
	dronedesign=choose(1,1,2,3,2,3) //1=normal, 2=havoc, 3=hercules
	if dronedesign=1 then {dnormal=1; dhavoc=0; dhercules=0;}
	else if dronedesign=2 then {dnormal=0; dhavoc=1; dhercules=0;}
	else if dronedesign=3 then {dnormal=0; dhavoc=0; dhercules=1;}
	droneformation=choose(1,2,3)//1=default, 2=heart
	
	//GUNS
	guns = choose(2,3,3,3,4,4); //number of guns
	for (i:=1; i<=guns; i+=1;) {Gun[i]=choose(guns_list[1],guns_list[2],guns_list[3],guns_list[3],guns_list[4]);} 
	
	//LASERS
	lasers = choose(2,3,3,3,4,4); //number of guns
	for (i:=1; i<=lasers; i+=1;) {Laser[i]=choose(lasers_list[1],lasers_list[2],lasers_list[3],lasers_list[3],lasers_list[4]);}
	
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
	for (i=1;i<=min(flax_numb,10);i++){droid[i,1]:="flax";}
	for (i=flax_numb+1; i<=min(flax_numb+iris_numb,10);i++){if (i>=0) droid[i,1]:="iris";}	
	dronedesign=choose(1,1,2,3,2,3) //1=normal, 2=havoc, 3=hercules
	if dronedesign=1 then {dnormal=1; dhavoc=0; dhercules=0;}
	else if dronedesign=2 then {dnormal=0; dhavoc=1; dhercules=0;}
	else if dronedesign=3 then {dnormal=0; dhavoc=0; dhercules=1;}
	droneformation=choose(1,2,3)//1=default, 2=heart
	
	//GUNS
	guns = choose(1,2,2,3,3,3); //number of guns
	for (i:=1; i<=guns; i+=1;) {Gun[i]=choose(guns_list[0],guns_list[1],guns_list[1],guns_list[2],guns_list[2]);} 
	
	//LASERS
	lasers = choose(1,2,2,3,3,3); //number of guns
	for (i:=1; i<=lasers; i+=1;) {Laser[i]=choose(lasers_list[0],lasers_list[1],lasers_list[1],lasers_list[2],lasers_list[2]);} 
	
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
	
	//GUNS
	guns = choose(1,1,2,2,2,3); //number of guns
	for (i:=1; i<=guns; i+=1;) {Gun[i]=choose(guns_list[0],guns_list[0],guns_list[1],guns_list[1],guns_list[1]);} 
	
	//LASERS
	lasers = choose(1,1,2,2,2,3); //number of guns
	for (i:=1; i<=lasers; i+=1;) {Laser[i]=choose(lasers_list[0],lasers_list[0],lasers_list[1],lasers_list[1],lasers_list[1]);} 
	
	//SKILLTREE
	pilotsheet_ship_hull_i=choose(0,0,0,0,0,1,1,1);
	if(pilotsheet_ship_hull_i=2) then pilotsheet_ship_hull_ii=choose(0,0,0,0,0,1,1,1,1,1,2,2,2,3,3);
}
    	
event_user(0);
	
guns_installation(id);	
	
if id.object_index=gamer then {};

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