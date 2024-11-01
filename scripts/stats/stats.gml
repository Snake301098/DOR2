function stats(){
	/***************************************************
  ?????? ??? ?????????? ?????????? ??????????
 ***************************************************/
var i, free, gun_in_ship, gun_in_droids, droids_numb, damage, engines,shields;
gun_in_ship=0; gun_in_droids=0; droids_numb=0; free=0; damage:=0; engines:=0; shields:=0;
guns_installation(argument0);
with (argument0) 
{
for (i:=1; i<=Gun[0]; i+=1;)
    {
    if Gun[i]!="noone" and Gun[i]!="" then
        {gun_in_ship+=1; damage+=info(Gun[i],"damage");}
    }

for (i:=1; i<=Generator[0]; i+=1;)
    {
    if Generator[i]!="noone" and Generator[i]!="" then shields+=1;
    }

for (i:=1; i<=Engine[0]; i+=1;)
    {
    if Engine[i]!="noone" and Engine[i]!="" then engines+=1;      
    }

//drone?.
for (i:=1; i<=10; i+=1)
    {
    if droid[i,1]="noone" or droid[i,1]="" then break;
    droids_numb+=1;
    switch info(droid[i,2],"type")
        {
        case "gun": gun_in_droids+=1; damage+=info(droid[i,2],"damage"); break;
        case "¨´¨¨¨°": shields+=1; break;
        }
    switch info(droid[i,3],"type")
        {
        case "gun":  gun_in_droids+=1; damage+=info(droid[i,3],"damage"); break;
        case "¨´¨¨¨°": shields+=1; break;
        }
    }
    
    //-------Boosters------
    if gamer.booster_damage_regular >= 1 {damage*=1.1; hasRegDmg=1}
    if gamer.booster_damage_extend >= 1 {damage*=1.1; hasExtDmg=1}     
                            
    //Drone bonusses
        if(gamer.droneformation == 1)      {damage*=1;} //Normal
        else if(gamer.droneformation == 2) {damage*=0.9;} //Heart
        else if(gamer.droneformation == 3) {damage*=1.1} //Moth
        
        if(gamer.dnormal == 1)        {damage*=1;}
        else if(gamer.dhavoc == 1)    {damage*=1.1}
        else if(gamer.dhercules == 1) {damage*=1}
    
    switch gamer.Ship
    {
        case "phoenix":             {damage*=1;} break;
        case "nostromo":            {damage*=1;} break;
        case "leonov":              {damage*=1;} break;
        case "bigboy":              {damage*=1;} break;
        case "admin":               {damage*=1;} break;
        case "kringspiermusketier": {damage*=1;} break;
        //Vengies
        case "vengeance":           {damage*=1;} break;
        case "adept":               {damage*=1;} break;
        case "corsair":             {damage*=1;} break;
        case "avenger":             {damage*=1;} break;
        case "revenge":             {damage*=1;} break;
        case "lightning":           {damage*=1.25;} break;
        //Golies
        case "goliath":             {damage*=1;} break;
        case "veteran":             {damage*=1;} break;
        case "exalted":             {damage*=1;} break;
        case "goal":                {damage*=1;} break;
        case "bastion":             {damage*=1;} break;
        case "kick":                {damage*=1;} break;
        case "sentinel":            {damage*=1;} break;
        case "solace":              {damage*=1;} break;
        case "spectrum":            {damage*=1;} break;
        case "enforcer":            {damage*=1;} break;
        case "diminisher":          {damage*=1;} break;
        case "venom":               {damage*=1;} break;
        case "referee":             {damage*=1;} break;
        case "centaur":             {damage*=1;} break;
        case "saturn":              {damage*=1;} break;
        //Newgen
        case "spearhead":           {damage*=1;} break;
        case "aegis":               {damage*=1;} break;
        case "citadel":             {damage*=1;} break;
    }        
if argument1="sms" then
{
	show_message("SMS message")
//show_message(text_add(text.review_sms,round(min(own_health,health_def)),round(health_def),droids_numb,gun_in_ship+gun_in_droids,
//damage,shields,own_shield,shield_def,engines,info(Ship,"speed")*10,(ship_speed)*10,round(global.kupons/global.code1),
//round(global.details/global.code1)))
}
else if argument1="droids" then {return droids_numb}
else if argument1="guns_install" then {return (gun_in_ship+gun_in_droids)}
else if argument1="gun_in_ship" then {return (gun_in_ship)}
else if argument1="gun_in_droids" then {return (gun_in_droids)}
else if argument1="damage" then {return (damage)}
}
guns_installation(argument0);
}