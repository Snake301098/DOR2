sprite_index:=choose(bigexpl1_spr,bigexpl2_spr,bigexpl3_spr,bigexpl4_spr,bigexpl5_spr);
sprite_set_speed(sprite_index, 30, spritespeed_framespersecond);
if point_distance(gamer.x,gamer.y,x,y) <= 800
    {
		audio_play_sound(bigexpl1_sound,80,false)
    }