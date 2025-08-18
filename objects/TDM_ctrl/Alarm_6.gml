/// @description GO BACK BASE
instance_destroy(ship);
if gamer.corporation = 0 then room_goto(lv1_1);
if gamer.corporation = 1 then room_goto(lv2_1);
if gamer.corporation = 2 then room_goto(lv3_1);
if instance_exists(base) then {with(gamer){x = base.x; y = base.y}};
instance_destroy();
