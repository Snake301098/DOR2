draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, 1)
if level_index_spr >= 0 then draw_sprite_ext(inv_levels_spr, level_index_spr, x, y, 1, 1, 0, c_white, 1)
if selected=true then draw_sprite_ext(cell_selected_spr,0,x,y,1,1,0,c_white,1)