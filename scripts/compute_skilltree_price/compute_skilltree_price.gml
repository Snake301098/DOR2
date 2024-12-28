/// @description
function compute_skilltree_price()
{
	var total_skilltree_points =  gamer.ship_hull_i + gamer.ship_hull_ii +	gamer.shield_engineering +	gamer.engineering +	gamer.bounty_hunter_i + gamer.bounty_hunter_ii + gamer.alien_hunter + gamer.greed + gamer.luck_i + gamer.luck_ii + gamer.cruelty_i + gamer.cruelty_ii +  gamer.evasive_i + gamer.evasive_ii + gamer.electro_optics + gamer.shield_mechanics + gamer.smb_upgrade + gamer.ish_upgrade + gamer.shieldbackup_upgrade + gamer.warrep_upgrade
	var skilltree_cost = 30 * power(1.1,total_skilltree_points); 

	return([total_skilltree_points, skilltree_cost]);
}