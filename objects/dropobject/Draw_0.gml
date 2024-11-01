
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, image_alpha);

if object_qty > 0 then
{
	draw_set_alpha(image_alpha);
	draw_set_color(c_white);
	draw_set_font(HUD_mes_font);
	draw_set_halign(fa_left);
	draw_set_valign(fa_center);
	draw_text(x+30,y, "+" + string(object_qty));
	if movement = "touched_player"
	{
		image_alpha -= 0.01;
	}
	draw_set_halign(fa_center);
	draw_set_alpha(1);
}