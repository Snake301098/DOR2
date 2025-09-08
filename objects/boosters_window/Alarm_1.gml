/// @description update global var

//store old valaues
old_dmg_value = dmg_value;
old_hp_value = hp_value;
old_shd_value = shd_value;

//reset values
dmg_value = 0;
hp_value = 0;
shd_value = 0;

dmg_i_time = global.booster_damage_i;
dmg_ii_time = global.booster_damage_ii;
hp_i_time = global.booster_hp_i;
hp_ii_time = global.booster_hp_ii;
shd_i_time = global.booster_shield_i;
shd_ii_time = global.booster_shield_ii;

//dmg
if dmg_i_time != 0 and dmg_ii_time !=0
{
	dmg_time = min(dmg_i_time,dmg_ii_time);
}
else
{
	if dmg_ii_time = 0 then dmg_time = dmg_i_time else dmg_time = dmg_ii_time;
}

//hp
if hp_i_time != 0 and hp_ii_time !=0
{
	hp_time = min(hp_i_time,hp_ii_time);
}
else
{
	if hp_ii_time = 0 then hp_time = hp_i_time else hp_time = hp_ii_time;
}

//shd
if shd_i_time != 0 and shd_ii_time !=0
{
	shd_time = min(shd_i_time,shd_ii_time);
}
else
{
	if shd_ii_time = 0 then shd_time = shd_i_time else shd_time = shd_ii_time;
}

if dmg_i_time > 0 then dmg_value += global.booster_damage_i_value;
if dmg_ii_time > 0 then dmg_value += global.booster_damage_ii_value;
if hp_i_time > 0 then hp_value += global.booster_hp_i_value;
if hp_ii_time > 0 then hp_value += global.booster_hp_ii_value;
if shd_i_time > 0 then shd_value += global.booster_shield_i_value;
if shd_ii_time > 0 then shd_value += global.booster_shield_ii_value;

global.booster_damage_i = dmg_i_time;
global.booster_damage_ii = dmg_ii_time;
global.booster_hp_i = hp_i_time;
global.booster_hp_ii = hp_ii_time;
global.booster_shield_i = shd_i_time;
global.booster_shield_ii = shd_ii_time;

//if value changed then gun installation for gamer
if old_dmg_value != dmg_value or old_hp_value != hp_value or old_shd_value != shd_value then guns_installation(gamer.id);

alarm[1] = room_speed * 5;

