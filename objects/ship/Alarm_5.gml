///@description cooldown attacking reset
attacking = false;
var _is_a_target = false;
var myid = id;
with (ship) {if instance_exists(target) {if target = myid then _is_a_target = true}}
with (mob) {if instance_exists(target) {if target = myid then _is_a_target = true}}
with (gamer) {if instance_exists(target) {if target = myid then _is_a_target = true}}
if _is_a_target=false
{
	if own_health < 0.9 * health_def then own_health += health_def * 0.1 else own_health = health_def
	if own_shield < 0.9 * shield_def then own_shield += shield_def * 0.1 else own_shield = shield_def
}
alarm[5] = irandom_range(160,240);