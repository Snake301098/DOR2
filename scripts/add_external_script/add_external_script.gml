// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function add_external_script(){
/*
//Import external sprite :D
//argument0 = sprite name
//argument1 = Name of .res file
//argument2 = xoffset
//argument3 = yoffset

* USAGE *
* Argument0 is spritename.
* Make sure you've added the proper entry for all the sprites.

//argument0=sprite_add_sprite(working_directory + "\data\'" + "\" + argument1)
//sprite_set_offset(argument0,argument2,argument3)
*/
//Ships, effects, etc
switch(argument0){
    case "": {
        global._spr=sprite_add_sprite(working_directory + "\data\'" + "\_spr.res")
        sprite_set_offset(global._spr,39,34)
     break;
     }
     
     case "smb": {
        global.smb_spr=sprite_add_sprite(working_directory + "\data\'" + "\smb_spr.res")
        sprite_set_offset(global.smb_spr,160,160)
     break;
     }
     
     
     case "sloweffect": {
        global.sloweffect_spr=sprite_add_sprite(working_directory + "\data\'" + "\sloweffect_spr.res")
        sprite_set_offset(global.sloweffect_spr,94,94)
     break;
     }
     
     case "ish": {
        global.ish_spr=sprite_add_sprite(working_directory + "\data\'" + "\ish_spr.res")
        sprite_set_offset(global.ish_spr,120,120)
     break;
     }
     
     case "emp": {
        global.emp_spr=sprite_add_sprite(working_directory + "\data\'" + "\emp_spr.res")
        sprite_set_offset(global.emp_spr,225,225)
     break;
     }
     
     case "eleech": {
        global.eleech_spr=sprite_add_sprite(working_directory + "\data\'" + "\eleech_spr.res")
        sprite_set_offset(global.eleech_spr,112,112)
     break;
     }
     
     case "shieldbackup": {
        global.shieldbackup_spr=sprite_add_sprite(working_directory + "\data\'" + "\shieldbackup_spr.res")
        sprite_set_offset(global.shieldbackup_spr,90,90)
     break;
     }
     
     case "warrep": {
        global.warrep_spr=sprite_add_sprite(working_directory + "\data\'" + "\warrep_spr.res")
        sprite_set_offset(global.warrep_spr,79,79)
     break;
     }
     
     case "shieldrestore": {
        global.shieldrestore_spr=sprite_add_sprite(working_directory + "\data\'" + "\shieldrestore_spr.res")
        sprite_set_offset(global.shieldrestore_spr,120,120)
     break;
     }
     
     case "diminisher": {
        global.diminisher_spr=sprite_add_sprite(working_directory + "\data\'" + "\diminisher_spr.res")
        sprite_set_offset(global.diminisher_spr,65,57)
     break;
     }
     
     case "saturn": {
        global.saturn_spr=sprite_add_sprite(working_directory + "\data\'" + "\saturn_spr.res")
        sprite_set_offset(global.saturn_spr,74,60)
     break;
     }
     
     case "referee": {
        global.referee_spr=sprite_add_sprite(working_directory + "\data\'" + "\referee_spr.res")
        sprite_set_offset(global.referee_spr,73,58)
     break;
     }
     
     case "kick": {
        global.kick_spr=sprite_add_sprite(working_directory + "\data\'" + "\kick_spr.res")
        sprite_set_offset(global.kick_spr,73,58)
     break;
     }
     
     case "goal": {
        global.goal_spr=sprite_add_sprite(working_directory + "\data\'" + "\goal_spr.res")
        sprite_set_offset(global.goal_spr,73,58)
     break;
     }
     
     case "adept": {
        global.adept_spr=sprite_add_sprite(working_directory + "\data\'" + "\adept_spr.res")
        sprite_set_offset(global.adept_spr,68,50)
     break;
     }
     
     case "admin": {
        global.admin_spr=sprite_add_sprite(working_directory + "\data\'" + "\admin_spr.res")
        sprite_set_offset(global.admin_spr,50,41)
     break;
     }
     
     case "avenger": {
        global.avenger_spr=sprite_add_sprite(working_directory + "\data\'" + "\avenger_spr.res")
        sprite_set_offset(global.avenger_spr,68,50)
     break;
     }
     
     case "bastion": {
        global.bastion_spr=sprite_add_sprite(working_directory + "\data\'" + "\bastion_spr.res")
        sprite_set_offset(global.bastion_spr,76,61)
     break;
     }
     
     case "bigboy": {
        global.bigboy_spr=sprite_add_sprite(working_directory + "\data\'" + "\bigboy_spr.res")
        sprite_set_offset(global.bigboy_spr,62,60)
     break;
     }
     
     case "corsair": {
        global.corsair_spr=sprite_add_sprite(working_directory + "\data\'" + "\corsair_spr.res")
        sprite_set_offset(global.corsair_spr,68,50)
     break;
     }
     
     case "enforcer": {
        global.enforcer_spr=sprite_add_sprite(working_directory + "\data\'" + "\enforcer_spr.res")
        sprite_set_offset(global.enforcer_spr,76,61)
        //sprite_set_width=sprite_get_width(global.enforcer_spr)
     break;
     }
     
     case "exalted": {
        global.exalted_spr=sprite_add_sprite(working_directory + "\data\'" + "\exalted_spr.res")
        sprite_set_offset(global.exalted_spr,76,61)
     break;
     }
     
     case "goliath": {
        global.goliath_spr=sprite_add_sprite(working_directory + "\data\'" + "\goliath_spr.res")
        sprite_set_offset(global.goliath_spr,76,61)
     break;
     }
     
     case "leonov": {
        global.leonov_spr=sprite_add_sprite(working_directory + "\data\'" + "\leonov_spr.res")
        sprite_set_offset(global.leonov_spr,62,44)
     break;
     }
     
     case "lightning": {
        global.lightning_spr=sprite_add_sprite(working_directory + "\data\'" + "\lightning_spr.res")
        sprite_set_offset(global.lightning_spr,64,47)
     break;
     }
     
     case "nostromo": {
        global.nostromo_spr=sprite_add_sprite(working_directory + "\data\'" + "\nostromo_spr.res")
        sprite_set_offset(global.nostromo_spr,62,51)
     break;
     }
     
     case "phoenix": {
        global.phoenix_spr=sprite_add_sprite(working_directory + "\data\'" + "\phoenix_spr.res")
        sprite_set_offset(global.phoenix_spr,34,32)
     break;
     }
     
     case "revenge": {
        global.revenge_spr=sprite_add_sprite(working_directory + "\data\'" + "\revenge_spr.res")
        sprite_set_offset(global.revenge_spr,68,50)
     break;
     }
     
     case "sentinel": {
        global.sentinel_spr=sprite_add_sprite(working_directory + "\data\'" + "\sentinel_spr.res")
        sprite_set_offset(global.sentinel_spr,86,89)
     break;
     }
     
     case "solace": {
        global.solace_spr=sprite_add_sprite(working_directory + "\data\'" + "\solace_spr.res")
        sprite_set_offset(global.solace_spr,72,61)
     break;
     }
     
     case "spectrum": {
        global.spectrum_spr=sprite_add_sprite(working_directory + "\data\'" + "\spectrum_spr.res")
        sprite_set_offset(global.spectrum_spr,69,54)
     break;
     }
     
     case "vengeance": {
        global.vengeance_spr=sprite_add_sprite(working_directory + "\data\'" + "\vengeance_spr.res")
        sprite_set_offset(global.vengeance_spr,68,50)
     break;
     }
     
     case "veteran": {
        global.veteran_spr=sprite_add_sprite(working_directory + "\data\'" + "\veteran_spr.res")
        sprite_set_offset(global.veteran_spr,76,60)
     break;
     }
     
     case "kringspiermusketier": {
        global.kringspiermusketier_spr=sprite_add_sprite(working_directory + "\data\'" + "\kringspiermusketier_spr.res")
        sprite_set_offset(global.kringspiermusketier_spr,129,105)
     break;
     }
     
     case "venom": {
        global.venom_spr=sprite_add_sprite(working_directory + "\data\'" + "\venom_spr.res")
        sprite_set_offset(global.venom_spr,82,58)
     break;
     }
     
     case "centaur": {
        global.centaur_spr=sprite_add_sprite(working_directory + "\data\'" + "\centaur_spr.res")
        sprite_set_offset(global.centaur_spr,74,60)
     break;
     }
     
     case "aegis": {
        global.aegis_spr=sprite_add_sprite(working_directory + "\data\'" + "\aegis_spr.res")
        sprite_set_offset(global.aegis_spr,68,77)
     break;
     }
     
     case "citadel": {
        global.citadel_spr=sprite_add_sprite(working_directory + "\data\'" + "\citadel_spr.res")
        sprite_set_offset(global.citadel_spr,86,87)
     break;
     }
     
     case "spearhead": {
        global.spearhead_spr=sprite_add_sprite(working_directory + "\data\'" + "\spearhead_spr.res")
        sprite_set_offset(global.spearhead_spr,64,58)
     break;
     }

}

//Aliens
if argument0 = "streuner" then
{
    global.streuner_spr=sprite_add_sprite(working_directory + "\data\'" + "\streuner_1_spr.res")
    sprite_set_offset(global.streuner_spr,39,34)
}
if argument0= "boss_streuner" then
{
    global.boss_streuner_spr=sprite_add_sprite(working_directory + "\data\'" + "\boss_streuner_1_spr.res")
    sprite_set_offset(global.boss_streuner_spr,65,58)
}
if argument0= "uber_streuner" then
{
    global.uber_streuner_spr=sprite_add_sprite(working_directory + "\data\'" + "\uber_streuner_1_spr.res")
    sprite_set_offset(global.uber_streuner_spr,65,58)
}
if argument0= "lordakia" then
{
    global.lordakia_spr=sprite_add_sprite(working_directory + "\data\'" + "\lordakia_spr.res")
    sprite_set_offset(global.lordakia_spr,35,32)
}
if argument0= "boss_lordakia" then
{
    global.boss_lordakia_spr=sprite_add_sprite(working_directory + "\data\'" + "\boss_lordakia_spr.res")
    sprite_set_offset(global.boss_lordakia_spr,43,38)
}
if argument0= "uber_lordakia" then
{
    global.uber_lordakia_spr=sprite_add_sprite(working_directory + "\data\'" + "\uber_lordakia_spr.res")
    sprite_set_offset(global.uber_lordakia_spr,43,38)
}
if argument0= "kristallon" then
{
    global.kristallon_spr=sprite_add_sprite(working_directory + "\data\'" + "\kristallon_spr.res")
    sprite_set_offset(global.kristallon_spr,89,92)
}
if argument0= "boss_kristallon" then
{
    global.boss_kristallon_spr=sprite_add_sprite(working_directory + "\data\'" + "\boss_kristallon_spr.res")
    sprite_set_offset(global.boss_kristallon_spr,87,81)
}
if argument0= "uber_kristallon" then
{
    global.uber_kristallon_spr=sprite_add_sprite(working_directory + "\data\'" + "\uber_kristallon_spr.res")
    sprite_set_offset(global.uber_kristallon_spr,86,75)
}
if argument0= "sibelon" then
{
    global.sibelon_spr=sprite_add_sprite(working_directory + "\data\'" + "\sibelon_spr.res")
    sprite_set_offset(global.sibelon_spr,136,110)
}
if argument0= "boss_sibelon" then
{
    global.boss_sibelon_spr=sprite_add_sprite(working_directory + "\data\'" + "\boss_sibelon_spr.res")
    sprite_set_offset(global.boss_sibelon_spr,142,115)
}
if argument0= "uber_sibelon" then
{
    global.uber_sibelon_spr=sprite_add_sprite(working_directory + "\data\'" + "\uber_sibelon_spr.res")
    sprite_set_offset(global.uber_sibelon_spr,142,115)
}
if argument0= "StreuneR" then
{
    global.StreuneR_spr=sprite_add_sprite(working_directory + "\data\'" + "\StreuneR_spr.res")
    sprite_set_offset(global.StreuneR_spr,53,47)
}
if argument0= "boss_StreuneR" then
{
    global.boss_StreuneR_spr=sprite_add_sprite(working_directory + "\data\'" + "\boss_StreuneR_spr.res")
    sprite_set_offset(global.boss_StreuneR_spr,61,56)
}
if argument0= "uber_StreuneR" then
{
    global.uber_StreuneR_spr=sprite_add_sprite(working_directory + "\data\'" + "\uber_StreuneR_spr.res")
    sprite_set_offset(global.uber_StreuneR_spr,61,56)
}
if argument0= "mordon" then
{
    global.mordon_spr=sprite_add_sprite(working_directory + "\data\'" + "\mordon_spr.res")
    sprite_set_offset(global.mordon_spr,75,60)
}
if argument0= "boss_mordon" then
{
    global.boss_mordon_spr=sprite_add_sprite(working_directory + "\data\'" + "\boss_mordon_spr.res")
    sprite_set_offset(global.boss_mordon_spr,93,82)
}
if argument0= "uber_mordon" then
{
    global.uber_mordon_spr=sprite_add_sprite(working_directory + "\data\'" + "\uber_mordon_spr.res")
    sprite_set_offset(global.uber_mordon_spr,93,82)
}
if argument0= "kristallin" then
{
    global.kristallin_spr=sprite_add_sprite(working_directory + "\data\'" + "\kristallin_spr.res")
    sprite_set_offset(global.kristallin_spr,52,50)
}
if argument0= "boss_kristallin" then
{
    global.boss_kristallin_spr=sprite_add_sprite(working_directory + "\data\'" + "\boss_kristallin_spr.res")
    sprite_set_offset(global.boss_kristallin_spr,53,53)
}
if argument0= "uber_kristallin" then
{
    global.uber_kristallin_spr=sprite_add_sprite(working_directory + "\data\'" + "\uber_kristallin_spr.res")
    sprite_set_offset(global.uber_kristallin_spr,52,56)
}
if argument0= "lordakium" then
{
    global.lordakium_spr=sprite_add_sprite(working_directory + "\data\'" + "\lordakium_spr.res")
    sprite_set_offset(global.lordakium_spr,98,88)
}
if argument0= "boss_lordakium" then
{
    global.boss_lordakium_spr=sprite_add_sprite(working_directory + "\data\'" + "\boss_lordakium_spr.res")
    sprite_set_offset(global.boss_lordakium_spr,114,106)
}
if argument0= "uber_lordakium" then
{
    global.uber_lordakium_spr=sprite_add_sprite(working_directory + "\data\'" + "\uber_lordakium_spr.res")
    sprite_set_offset(global.uber_lordakium_spr,114,106)
}
if argument0= "sibelonit" then
{
    global.sibelonit_spr=sprite_add_sprite(working_directory + "\data\'" + "\sibelonit_spr.res")
    sprite_set_offset(global.sibelonit_spr,40,40)
}
if argument0= "boss_sibelonit" then
{
    global.boss_sibelonit_spr=sprite_add_sprite(working_directory + "\data\'" + "\boss_sibelonit_spr.res")
    sprite_set_offset(global.boss_sibelonit_spr,50,50)
}
if argument0= "uber_sibelonit" then
{
    global.uber_sibelonit_spr=sprite_add_sprite(working_directory + "\data\'" + "\uber_sibelonit_spr.res")
    sprite_set_offset(global.uber_sibelonit_spr,50,50)
}
if argument0= "devolarium" then
{
    global.devolarium_spr=sprite_add_sprite(working_directory + "\data\'" + "\devolarium_spr.res")
    sprite_set_offset(global.devolarium_spr,91,73)
}
if argument0= "boss_devolarium" then
{
    global.boss_devolarium_spr=sprite_add_sprite(working_directory + "\data\'" + "\boss_devolarium_spr.res")
    sprite_set_offset(global.boss_devolarium_spr,148,113)
}
if argument0= "uber_devolarium" then
{
    global.uber_devolarium_spr=sprite_add_sprite(working_directory + "\data\'" + "\uber_devolarium_spr.res")
    sprite_set_offset(global.uber_devolarium_spr,148,113)
}
if argument0= "saimon" then
{
    global.saimon_spr=sprite_add_sprite(working_directory + "\data\'" + "\saimon_spr.res")
    sprite_set_offset(global.saimon_spr,37,39)
}
if argument0= "boss_saimon" then
{
    global.boss_saimon_spr=sprite_add_sprite(working_directory + "\data\'" + "\boss_saimon_spr.res")
    sprite_set_offset(global.boss_saimon_spr,48,48)
}
if argument0= "uber_saimon" then
{
    global.uber_saimon_spr=sprite_add_sprite(working_directory + "\data\'" + "\uber_saimon_spr.res")
    sprite_set_offset(global.uber_saimon_spr,48,48)
}
if argument0= "sanejewiz" then
{
    global.sanejewiz_spr=sprite_add_sprite(working_directory + "\data\'" + "\sanejewiz_spr.res")
    sprite_set_offset(global.sanejewiz_spr,67,50)
}
if argument0= "protegit" then
{
    global.protegit_spr=sprite_add_sprite(working_directory + "\data\'" + "\protegit_spr.res")
    sprite_set_offset(global.protegit_spr,32,23)
}
if argument0= "cubikon" then
{
    global.cubikon_spr=sprite_add_sprite(working_directory + "\data\'" + "\cubikon_spr.res")
    sprite_set_offset(global.cubikon_spr,112,123)
}
}