//Nothing
if KeyActionCURKEY = 0 then
{}
//X1
if KeyActionCURKEY = 1 then
{select_ammo(x1_ammo);}
//X2
if KeyActionCURKEY = 2 then
{select_ammo(x2_ammo);}
//X3
if KeyActionCURKEY = 3 then
{select_ammo(x3_ammo);}
//X4
if KeyActionCURKEY = 4 then
{select_ammo(x4_ammo);}
//SAB
if KeyActionCURKEY = 5 then
{select_ammo(sab);}
//RSB
if KeyActionCURKEY = 6 then
{event_user(14);}
//WARREP
if KeyActionCURKEY = 7 then
{if global.warrep > 0 then ability_trigger(id,"warrep") else show_HUD_message("No warrep remaining")}
//ShieldBackup
if KeyActionCURKEY = 8 then
{if global.shieldbackup > 0 then ability_trigger(id,"shieldbackup") else show_HUD_message("No shield backup remaining")}
//EMP
if KeyActionCURKEY = 9 then
{if global.emp > 0 then ability_trigger(id,"EMP") else show_HUD_message("No EMP remaining")}
//Cloack
if KeyActionCURKEY = 10 then
{ENTRY="CLOAK" alarm[9]=1;}
//Active PET
if KeyActionCURKEY = 11 then
{event_user(13);}
//PET kamikaze
if KeyActionCURKEY = 12 then
{with(HUD_user){event_user(0);}}
//DOCK
if KeyActionCURKEY = 13 then
{ENTRY="DOCK" alarm[9]=1;}
//STATS
if KeyActionCURKEY = 14 then
{if instance_exists(stats_window) then instance_destroy(stats_window) else { instance_destroy(window_background); instance_destroy(jumpmap); instance_destroy(window_background); instance_create_depth(0,0,-510,stats_window);}}
//QUESTS
if KeyActionCURKEY = 15 then
{if instance_exists(quests_window) then instance_destroy(quests_window) else { instance_destroy(quests_window); instance_destroy(jumpmap); instance_create_depth(0,0,-510,quests_window);}}
//Jump
if KeyActionCURKEY = 16 then
{ENTRY="JUMP" alarm[9]=1;}
//Repair
if KeyActionCURKEY = 17 then
{if (instance_exists(repbot)=false and own_health!=health_def and attacking=false) then {rep=instance_create_depth(x,y,-5,repbot); rep.owner=gamer.id;}}
//ISH
if KeyActionCURKEY = 22 then
{if global.ish > 0 then ability_trigger(id,"ISH") else show_HUD_message("No ISH remaining")}
//JUMP CPU
if KeyActionCURKEY = 24 then
{if instance_exists(jumpmap) then instance_destroy(jumpmap) else instance_create_depth(0,0,-500,jumpmap)}
//SKIP COUNTDOWN
if KeyActionCURKEY = 26 then
{if instance_exists(pop_ctrl_GG) then pop_ctrl_GG.count_down_step = 1;}
//SAVE GAME
if KeyActionCURKEY = 27 then
{save_game();}
if KeyActionCURKEY = 28 then
{if global.ish > 0 then ability_trigger(id,"SMB") else show_HUD_message("No SMB remaining")}
//CHANGE CONFIG
if KeyActionCURKEY = 29 then
{change_config(gamer.id);}
//SHIP SKILL
if KeyActionCURKEY = 30 then
{
	if ship_name = "sentinel" then {ability_trigger(id,"sentinel_effect")}
	if ship_name = "spectrum" then {ability_trigger(id,"spectrum_effect")}
	if ship_name = "solace" then {ability_trigger(id,"solace_effect")}
	if ship_name = "diminisher" then {ability_trigger(id,"diminisher_effect")}
	if ship_name = "venom" then {ability_trigger(id,"venom_effect")}
}
//MESSAGES LOG
if KeyActionCURKEY = 31 then
{if instance_exists(log_msgs_window) then instance_destroy(log_msgs_window) else instance_create_depth(0,0,-500,log_msgs_window)}




/*

//AdminMode
if KeyActionCURKEY = 11 then
{if admincheat=1 then{if global.isadmin=0 then {SHPRTN=Ship; global.isadmin=1; Ship = "admin"; event_user(0); guns_installation(gamer); show_protocol_message(string(text.adminon)){}}else if global.isadmin=1 then {global.isadmin=0Ship = SHPRTN;alarm[1]=10*2;show_protocol_message(string(text.adminoff))event_user(0);gamer.MaxDamage=dmgrtn{}}}else if admincheat=0 then{show_HUD_message(string(text.adminmodeisdisabled))}}
//ChangeShip
if KeyActionCURKEY = 12 then
//{if global.isadmin=1 then{gamer.Ship:=(get_string(string(text.entershipname),gamer.Ship))} else if global.isadmin=0 then{show_protocol_message(string(text.noadmin)) show_HUD_message(string(text.noadmin))}}
{


{OwnerID=id; if canuseswitchconfig=1 then{save_game(); if config = "Config 1" then{gamer.own_shield_c1=gamer.own_shield; gamer.own_shield=own_shield_c2; config= "Config 2";} else{gamer.own_shield_c2=gamer.own_shield; gamer.own_shield=own_shield_c1;config="Config 1";}; load_configs();  canuseswitchconfig=0; gamercooldowns.alarm[4]=1; } else {show_HUD_message("You have to wait 5 seconds to switch config")}}
}

//PET
if KeyActionCURKEY = 13 then
//{show_protocol_message("cool");show_protocol_message(string(room)); if not instance_exists(PET) then {instance_create(gamer.x,gamer.y,PET)} else with (PET) {instance_destroy()}}

{ 
    dirx=(mouse_x-gamer.x)/sqrt((mouse_x-gamer.x)*(mouse_x-gamer.x)+(mouse_y-gamer.y)*(mouse_y-gamer.y))
    diry=(mouse_y-gamer.y)/sqrt((mouse_x-gamer.x)*(mouse_x-gamer.x)+(mouse_y-gamer.y)*(mouse_y-gamer.y))
    gamer.x+=dirx*600
    gamer.y+=diry*600
    
/*
    OwnerID=id; 
    if Ship = "spectrum" and canusespectrumability=1 then
    {
        {a=instance_create(x,y,spectrum_ability)} with (a) {owner=OwnerID} 
        canusespectrumability=0; ships_ability_cooldowns.alarm[0]=1;
    } 
    else 
    {
        show_HUD_message(string("Spectrum ability is loading..."))
    } */
//}
/*

//EnergyLeech
if KeyActionCURKEY = 14 then
{if global.eleech=0 then{global.eleech=1;show_HUD_message(string(text.eleechon))instance_create(x,y,eleech_obj)}else if global.eleech=1 then{global.eleech=0;show_HUD_message(string(text.eleechoff))}}


//DroneFormationDefault
if KeyActionCURKEY = 18 then
{if global.droneformation!=1 then{global.droneformation=1; guns_installation(gamer); restore=true; alarm[1]=15*2;}}
//DroneFormationHeart
if KeyActionCURKEY = 19 then
{if global.droneformation!=2 then{global.droneformation=2; guns_installation(gamer); restore=true; alarm[1]=15*2;}}
//DroneFormationMoth
if KeyActionCURKEY = 20 then
{if global.droneformation!=3 then{global.droneformation=3; guns_installation(gamer); restore=true; alarm[1]=15*2;}}
//Cheats
if KeyActionCURKEY = 21 then
{cheatcode=get_string(string(text.entercheat),"") ENTRY="CHEAT" alarm[9]=1;}
//InstaShield
if KeyActionCURKEY = 22 then
{OwnerID=id; if global.ishcount >=1 then{ if canuseish=1 then{ with (instance_create(x,y,ish_obj)) {owner=OwnerID} global.ishcount-=1 is_using_ish=1 alarm[7]=2*room_speed canuseish=0 gamercooldowns.alarm[6]=1;}else{{show_HUD_message("ISH is recharging!"); show_protocol_message(string(text.ishrecharging))}}}else{{show_HUD_message("You have no mines!"); show_protocol_message(string(text.noishs))}}}
//DCR250
if KeyActionCURKEY = 23 then
{ENTRY="DCR" alarm[9]=1;}
//JumpCPU
if KeyActionCURKEY = 24 then
{
	if instance_exists(jumpmap) then with(jumpmap) instance_destroy(); else instance_create_depth(x,y,-100,jumpmap);
}
//ToggleHUD
if KeyActionCURKEY = 25 then
{if global.hidehud=0 then{ global.hidehud=1; show_protocol_message("Hiding HUD") show_HUD_message("Hiding HUD")} else{ global.hidehud=0 show_protocol_message("Revealing HUD") show_HUD_message("Revealing HUD")}}
//SkipJPACountdown
if KeyActionCURKEY = 26 then
{
    if popctrlGG.countdown > 5 then {popctrlGG.countdown=5; popctrlGG.alarm[11]=1;}
    with(instance_create(gamer.x,gamer.y,ship))
                    {
                        alarm[5]=1;
                        corporation=0;
                        //action[0]:="healer";   
                        //isInvader = 1; //prevent ship from being a botter running away          
                        Power:="low";
                    }
}
//Save game - BETA
if KeyActionCURKEY = 27 then
{save_game(); save_game(true);}
//SMB Bomb
if(KeyActionCURKEY == 28){
{
    if global.ishcount >= 1 then{ if canusesmb=1 then{ {a=instance_create(x,y,smb_obj)} a.ownerNumber=id; global.ishcount -= 1; canusesmb=0; gamercooldowns.alarm[11]=1;} else {show_HUD_message(string("SMB Not ready yet!"))} } else {show_HUD_message(string("Not enough mines!"))}}
}

//move bottom //S
//if(KeyActionCURKEY == 29){
//{
    //if global.ishcount >= 1 then{ if canusesmb=1 then{ {a=instance_create(x,y,smb_obj)} a.ownerNumber=id; global.ishcount -= 1; canusesmb=0; gamercooldowns.alarm[11]=1;} else {show_HUD_message(string("SMB Not ready yet!"))} } else {show_HUD_message(string("Not enough mines!"))}}
//}