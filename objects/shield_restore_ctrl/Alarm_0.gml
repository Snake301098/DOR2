/// @description restore shield
if owner.own_shield < owner.shield_def
{
	owner.own_shield += restore_qty*owner.shield_def;
}

alarm[0] = delay