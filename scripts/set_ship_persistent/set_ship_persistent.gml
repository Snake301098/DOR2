/// @description
function set_ship_persistent(_id,_status1)
{
	var myid = _id;
	var _status = _status1
	with (droid_obj) {if (owner=myid) then persistent=_status;}
	with (way) {if owner=myid then persistent=_status;}
	with (warrep) {if owner=myid then persistent=_status;}
	with (shieldbackup) {if owner=myid then persistent=_status;}
	with (emp) {if owner=myid then persistent=_status;}
	with (ish) {if owner=myid then persistent=_status;}
	with (shield_restore_ctrl) {if owner=myid then persistent=_status;}
	with (cooldowns_ctrl) {if owner=myid then persistent=_status;}
	with (ship) {if id=myid then persistent=_status;}
}