/// @description INIT

owner.can_use_warrep = false;


healthRegen=10000 * (1 + owner.ish_upgrade * 0.05);

if owner = gamer.id then update_stats("warrep_used")