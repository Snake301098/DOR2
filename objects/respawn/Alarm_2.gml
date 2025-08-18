/// @description go back base after gg

instance_destroy(ship);
instance_destroy(mob);
instance_destroy(TDM_ctrl);
instance_destroy(pop_ctrl_GG);
if gamer.corporation = 0 then room_goto(lv1_1);
if gamer.corporation = 1 then room_goto(lv2_1);
if gamer.corporation = 2 then room_goto(lv3_1);
if instance_exists(base) then {with(gamer){x = base.x; y = base.y}};
