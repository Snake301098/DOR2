/// @description name text init

if category = "ships"
{
	name=content;
}
	   
if category = "weapons"
{
	theContent = info_weapons(theContent,"weapon_name")
}
	   
if category = "ammos"
{
	theContent = info_ammos(theContent,"ammo_name")
}
	   