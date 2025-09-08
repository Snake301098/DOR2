/// @description 
if ship_name = "goliaths" then sprite_index = goliaths_spr
if ship_name = "vengeances" then sprite_index = vengeances_spr
if ship_name = "bad_ships" then sprite_index = bad_ships_spr
if ship_name = "new_gens" then sprite_index = new_gens_spr
if ship_name = "leonov" then sprite_index = leonov_spr
if ship_name = "phoenix" then sprite_index = phoenix_spr
if ship_name = "nostromo" then sprite_index = nostromo_spr
if ship_name = "bigboy" then sprite_index = bigboy_spr
if ship_name = "vengeance" then sprite_index = vengeance_spr
if ship_name = "adept" then sprite_index = adept_spr
if ship_name = "avenger" then sprite_index = avenger_spr
if ship_name = "lightning" then sprite_index = lightning_spr
if ship_name = "revenge" then sprite_index = revenge_spr
if ship_name = "corsair" then sprite_index = corsair_spr
if ship_name = "goliath" then sprite_index = goliath_spr
if ship_name = "bastion" then sprite_index = bastion_spr
if ship_name = "enforcer" then sprite_index = enforcer_spr
if ship_name = "centaur" then sprite_index = centaur_spr
if ship_name = "exalted" then sprite_index = exalted_spr
if ship_name = "goal" then sprite_index = goal_spr
if ship_name = "kick" then sprite_index = kick_spr
if ship_name = "saturn" then sprite_index = saturn_spr
if ship_name = "referee" then sprite_index = referee_spr
if ship_name = "veteran" then sprite_index = veteran_spr
if ship_name = "diminisher" then sprite_index = diminisher_spr
if ship_name = "sentinel" then sprite_index = sentinel_spr
if ship_name = "solace" then sprite_index = solace_spr
if ship_name = "spectrum" then sprite_index = spectrum_spr
if ship_name = "venom" then sprite_index = venom_spr
if ship_name = "spearhead" then sprite_index = spearhead_spr
if ship_name = "aegis" then sprite_index = aegis_spr
if ship_name = "citadel" then sprite_index = citadel_spr

if ship_name = "streuner" then sprite_index = streuner_1_spr
if ship_name = "lordakia" then sprite_index = lordakia_spr
if ship_name = "saimon" then sprite_index = saimon_spr
if ship_name = "mordon" then sprite_index = mordon_spr
if ship_name = "sibelon" then sprite_index = sibelon_spr
if ship_name = "sibelonit" then sprite_index = sibelonit_spr
if ship_name = "devolarium" then sprite_index = devolarium_spr
if ship_name = "kristallon" then sprite_index = kristallon_spr
if ship_name = "lordakium" then sprite_index = lordakium_spr
if ship_name = "kristallin" then sprite_index = kristallin_spr
if ship_name = "streunerR" then sprite_index = streunerR_spr


if owned = true then owned_color = c_white

alpha=1

image_index = 21

if owned = 1 then owned = true else owned = false

var xsc = 3;
var ysc = xsc;
if ship_name = "x1" then {sprite_index = stats_icons_spr; image_index = 25; image_xscale = xsc; image_yscale = ysc}
if ship_name = "x2" then {sprite_index = stats_icons_spr; image_index = 26; image_xscale = xsc; image_yscale = ysc}
if ship_name = "x3" then {sprite_index = stats_icons_spr; image_index = 27; image_xscale = xsc; image_yscale = ysc}
if ship_name = "x4" then {sprite_index = stats_icons_spr; image_index = 30; image_xscale = xsc; image_yscale = ysc}
if ship_name = "x5" then {sprite_index = stats_icons_spr; image_index = 29; image_xscale = xsc; image_yscale = ysc}
if ship_name = "x6" then {sprite_index = stats_icons_spr; image_index = 28; image_xscale = xsc; image_yscale = ysc}
if ship_name = "shieldbackup" then {sprite_index = stats_icons_spr; image_index = 55; image_xscale = xsc; image_yscale = ysc}
if ship_name = "ish" then {sprite_index = stats_icons_spr; image_index = 93; image_xscale = xsc; image_yscale = ysc}
if ship_name = "smb" then {sprite_index = stats_icons_spr; image_index = 98; image_xscale = xsc; image_yscale = ysc}
if ship_name = "emp" then {sprite_index = stats_icons_spr; image_index = 51; image_xscale = xsc; image_yscale = ysc}
if ship_name = "warrep" then {sprite_index = stats_icons_spr; image_index = 56; image_xscale = xsc; image_yscale = ysc}
if ship_name = "alpha" then {sprite_index = alpha_portal_spr; image_index = 0; image_xscale = xsc; image_yscale = ysc}
if ship_name = "beta" then {sprite_index = beta_portal_spr; image_index = 0; image_xscale = xsc; image_yscale = ysc}
if ship_name = "gamma" then {sprite_index = gamma_portal_spr; image_index = 0; image_xscale = xsc; image_yscale = ysc}
if ship_name = "delta" then {sprite_index = delta_portal_spr; image_index = 0; image_xscale = xsc; image_yscale = ysc}



if clickable = true
{
	image_xscale = 100 / sprite_get_width(sprite_index)
	image_yscale = image_xscale
}
else
{
	image_xscale = 80 / sprite_get_width(sprite_index)
	image_yscale = image_xscale
}

