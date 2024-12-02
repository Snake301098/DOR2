/// @description Init
owner.can_use_ish = false;
owner.is_using_ish = true;

if point_distance(gamer.x,gamer.y,owner.x,owner.y) <= 600 then audio_play_sound(ish_sound,1,false)
