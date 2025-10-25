/// @description
function get_rankpoints()
{
	var subimg = 0;
	var rpbelow = 0;
	var rpabove = 0;
	var RPOINT = 0;
	var rpf = global.rpfactor;
	
	if global.rankpoints <= 5499*rpf then  //Basic space pilot
	{subimg=0; rpbelow=0; rpabove=5500*rpf; RPOINT=5}
	if global.rankpoints > 5500*rpf then  //Space pilot
	{subimg=1; rpbelow=5500*rpf; rpabove=9000*rpf; RPOINT=10}
	if global.rankpoints > 9000*rpf then //Chief space pilot
	{subimg=2; rpbelow=9000*rpf; rpabove=12000*rpf; RPOINT=15}
	if global.rankpoints > 12000*rpf then //Basic sergeant
	{subimg=3; rpbelow=12000*rpf; rpabove=15000*rpf; RPOINT=20}
	if global.rankpoints > 15000*rpf then  //Sergeant
	{subimg=4; rpbelow=15000*rpf; rpabove=20000*rpf; RPOINT=25}
	if global.rankpoints > 20000*rpf then    //Chief sergeant
	{subimg=5; rpbelow=20000*rpf; rpabove=27500*rpf; RPOINT=30}
	if global.rankpoints > 27500*rpf then  //Basic lieutenant
	{subimg=6; rpbelow=27500*rpf; rpabove=35000*rpf; RPOINT=35}
	if global.rankpoints > 35000*rpf then  //lieutenant  
	{subimg=7; rpbelow=35000*rpf; rpabove=50000*rpf; RPOINT=40}
	if global.rankpoints > 50000*rpf then //chief lieutenant
	{subimg=8; rpbelow=50000*rpf; rpabove=80000*rpf; RPOINT=45}
	if global.rankpoints > 80000*rpf then  //basic captain
	{subimg=9; rpbelow=80000*rpf; rpabove=125000*rpf; RPOINT=50}
	if global.rankpoints > 125000*rpf then  //captain
	{subimg=10; rpbelow=125000*rpf; rpabove=150000*rpf; RPOINT=55}
	if global.rankpoints > 150000*rpf then //chief captain
	{subimg=11; rpbelow=150000*rpf; rpabove=200000*rpf; RPOINT=60}
	if global.rankpoints > 200000*rpf then  //basic major
	{subimg=12; rpbelow=200000*rpf; rpabove=300000*rpf; RPOINT=65}
	if global.rankpoints > 300000*rpf then  //major
	{subimg=13; rpbelow=300000*rpf; rpabove=525000*rpf; RPOINT=70}
	if global.rankpoints > 525000*rpf then //chief major
	{subimg=14; rpbelow=525000*rpf; rpabove=850000*rpf; RPOINT=75}
	if global.rankpoints > 850000*rpf then  //basic colonel
	{subimg=15; rpbelow=850000*rpf; rpabove=1600000*rpf; RPOINT=80}
	if global.rankpoints > 1600000*rpf then   //colonel
	{subimg=16; rpbelow=1600000*rpf; rpabove=2800000*rpf; RPOINT=85}
	if global.rankpoints > 2800000*rpf then //chief colonel
	{subimg=17; rpbelow=2800000*rpf; rpabove=3800000*rpf; RPOINT=90}
	if global.rankpoints > 3800000*rpf then  //Basic general
	{subimg=18; rpbelow=3800000*rpf; rpabove=5000000*rpf; RPOINT=95}
	if global.rankpoints > 5000000*rpf then  //General
	{subimg=19; rpbelow=5000000*rpf; rpabove=99999999999; RPOINT=100}
	if global.isadmin then
	{subimg=20}
	
	return([subimg,rpbelow,rpabove,RPOINT])
}