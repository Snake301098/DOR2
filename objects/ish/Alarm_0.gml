/// @description Init
owner.can_use_ish = false;
owner.is_using_ish = true;

alarm[1] = 60 * 2 * (1 + owner.ish_upgrade * 0.05); //end of ISH

if point_distance(gamer.x,gamer.y,owner.x,owner.y) <= 600 then audio_play_sound(ish_sound,1,false)


if owner = gamer.id then update_stats("ish_used")