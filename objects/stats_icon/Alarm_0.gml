/// @description 
if ship_name = "saturn" then sprite_index = saturn_spr
if ship_name = "lightning" then sprite_index = lightning_spr
if ship_name = "citadel" then sprite_index = citadel_spr
if ship_name = "kristallon" then sprite_index = kristallon_spr
if ship_name = "devolarium" then sprite_index = devolarium_spr
if ship_name = "lordakia" then sprite_index = lordakia_spr



if owned = true then owned_color = c_white

alpha=1

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
image_index = 21

if owned = 1 then owned = true else owned = false
