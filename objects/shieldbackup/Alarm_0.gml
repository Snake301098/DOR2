/// @description Init
owner.can_use_shieldbackup = false;
//owner.own_shield+=50000;
if owner = gamer.id then update_stats("shieldbackup_used")
if owner = gamer.id then update_stats("shieldbackup_shield",min(owner.shield_def - owner.own_shield,50000 * (1 + owner.shieldbackup_upgrade * 0.05)))
deal_healing(owner,owner,"shieldbackup",50000 * (1 + owner.shieldbackup_upgrade * 0.05),"shield")
if owner.own_shield > owner.shield_def then owner.own_shield = owner.shield_def;
//if point_distance(gamer.x,gamer.y,owner.x,owner.y) <= 600 then audio_play_sound(,1,false)

