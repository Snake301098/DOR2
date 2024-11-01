/// @description GG click BUTTON
//storing rewards
rewards=[[0,"ggpart"],[0,"ammo"],[0,"weapon"]] 

//will determine which reward
var reward;

//looping clicks until buy_qty
var clicks; 

clicks=buy_qty;


//CALCULATING REWARDS
while clicks>0
{
	reward = irandom_range(0,100);
	
	if(reward >=0 and reward <50) then
	{
		//ammo
		rewards[1,0]+=irandom_range(100,250);
	} else
	
	if(reward>=50 and reward<80) then
	{
		//ggpart
		rewards[0,0]+=1;
	} else
	
	if(reward>=80 and reward<=100) then
	{
		//weapon
		rewards[2,0]+=1;
	}
	
	clicks-=1;
}

