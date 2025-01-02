/// @description GG click BUTTON
//storing rewards
//rewards=[["ggpart",0],["x1",0],["x2",0],["x3",0],["x3",0],["x3",0],["x3",0],["x3",0],["x3",0],["x3",0],["x3",0],["x3",0],["x3",0]] 

if global.ggenergy >= buy_qty
{
	_x1 = 0;
	_x2 = 0;
	_x3 = 0;
	_x4 = 0;
	_x5 = 0;
	_x6 = 0;
	_ish = 0;
	_smb = 0;
	_warrep = 0;
	_shieldbackup = 0;
	_emp = 0;
	_ggpart = 0;
	_ggpart_dupp = 0;

	//will determine which reward
	var reward;

	//looping clicks until buy_qty
	var clicks; 

	clicks=buy_qty;


	//CALCULATING REWARDS
	while clicks>0
	{
		reward = irandom_range(0,100);
		var _reward = irandom_range(0,100);
	
		if(reward >=0 and reward <68) then
		{
			//ammo
			if(_reward >=0 and _reward <20) then _x1 += irandom_range(1000,3000)
			if(_reward >=20 and _reward <40) then _x2 += irandom_range(100,2000)
			if(_reward >=40 and _reward <60) then _x3 += irandom_range(100,1000)
			if(_reward >=60 and _reward <70) then _x4 += irandom_range(100,500)
			if(_reward >=70 and _reward <90) then _x5 += irandom_range(100,100)
			if(_reward >=90 and _reward <=100) then _x6 += irandom_range(100,500)
		} else
	
		if(reward>=68 and reward<82) then
		{
			//ggpart
			var owned_parts, total_parts;
			if active_side_tab = "ALPHA" then {owned_parts = global.alphaparts; total_parts = 34}
			if active_side_tab = "BETA" then {owned_parts = global.betaparts; total_parts = 48}
			if active_side_tab = "GAMMA" then {owned_parts = global.gammaparts; total_parts = 82}
			if active_side_tab = "DELTA" then {owned_parts = global.deltaparts; total_parts = 128}
		
			var is_dupp = false;
			if irandom(total_parts) < owned_parts then is_dupp = true
			if is_dupp = true then {_ggpart_dupp++; clicks+=2;}
			if is_dupp = false then _ggpart++
		} else
	
		if(reward>=82 and reward<=100) then
		{
			//special ammos;
			if(_reward >=0 and _reward <20) then _shieldbackup++
			if(_reward >=20 and _reward <40) then _warrep++
			if(_reward >=40 and _reward <60) then _smb++
			if(_reward >=60 and _reward <80) then _ish++
			if(_reward >=80 and _reward <=100) then _emp++
		}
	
		clicks-=1;
	}

	global.x1 += _x1
	global.x2 += _x2
	global.x3 += _x3
	global.x4 += _x4
	global.x5 += _x5
	global.x6 += _x6
	global.shieldbackup += _shieldbackup
	global.warrep += _warrep
	global.ish += _ish
	global.smb += _smb
	global.emp += _emp
	if active_side_tab = "ALPHA" then global.alphaparts	+= _ggpart
	if active_side_tab = "BETA" then global.betaparts += _ggpart
	if active_side_tab = "GAMMA" then global.gammaparts	+= _ggpart
	if active_side_tab = "DELTA" then global.deltaparts	+= _ggpart
	
	if global.alphaparts >= info("alpha","total_parts") and global.alphaonmap = 0 then {global.alphaparts = info("alpha","total_parts"); global.alphaonmap = 1; global.alphalife = 3; global.alphawave = 1;}
	if global.betaparts >= info("beta","total_parts") and global.betaonmap = 0 then {global.betaparts = info("beta","total_parts"); global.betaonmap = 1; global.betalife = 3; global.betawave = 1;}
	if global.gammaparts >= info("gamma","total_parts") and global.gammaonmap = 0 then {global.gammaparts = info("gamma","total_parts"); global.gammaonmap = 1; global.gammalife = 3; global.gammawave = 1;}
	if global.deltaparts >= info("delta","total_parts") and global.deltaonmap = 0 then {global.deltaparts = info("delta","total_parts"); global.deltaonmap = 1; global.deltalife = 3; global.deltawave = 1;}

	rewards=[[_x1,"x1"],[_x2,"x2"],[_x3,"x3"],[_x4,"x4"],[_x5,"x5"],[_x6,"x6"],[_shieldbackup,"shieldbackup"],[_warrep,"warrep"],[_ish,"ish"],[_smb,"smb"],[_emp,"emp"],[_ggpart,"ggpart"],[_ggpart_dupp,"ggpart_dupp"]]
	global.ggenergy -= buy_qty
}
else
{
	show_message("Not enough GG energies")
}
