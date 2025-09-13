// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function clear_ship_destroy_id(_id)
{
	var myid = _id; //ID of who get killed


	//Ïðåäîòâðàùåíèå îøèáîê.
	with (ammo_ship) {if (target = myid or owner=myid) then instance_destroy();}
	with (ammo_mob) {if (target = myid or owner=myid) then instance_destroy();}
	with (laser_ship) {if (target = myid or owner=myid) then instance_destroy();}
	with (heal_ammo) {if (target = myid or owner=myid) then instance_destroy();}
	with (ammo_explosion) {if (target = myid or owner=myid) then instance_destroy();}
	with (sentinel_effect) {if owner=myid then instance_destroy();}
	with (spectrum_effect) {if owner=myid then instance_destroy();}
	with (solace_effect) {if owner=myid then instance_destroy();}
	with (venom_effect) {if owner=myid then instance_destroy();}
	with (diminisher_effect) {if owner=myid then instance_destroy();}
	with (droid_obj) {if (owner=myid) then instance_destroy();}
	with (way) {if owner=myid then instance_destroy();}
	with (warrep) {if owner=myid then instance_destroy();}
	with (shieldbackup) {if owner=myid then instance_destroy();}
	with (emp) {if owner=myid then instance_destroy();}
	with (ish) {if owner=myid then instance_destroy();}
	with (smb) {if owner=myid then instance_destroy();}
	with (shield_restore_ctrl) {if owner=myid then instance_destroy();}
	with (cooldowns_ctrl) {if owner=myid then instance_destroy();}
	with (nuke) {if owner=myid then instance_destroy();}
	with(mob){if target=myid then {target=noone;attacking=false;}}
	with (ship) {if chef=myid then chef=0; if target=myid then {target=noone;attacking=false;}}
	with(gamer){if target=myid then {target=noone;attacking=false}}
}