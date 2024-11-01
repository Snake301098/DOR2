xscale:=128;
yscale:=120; //80

xmultiplier:=room_width *1.5  / xscale
ymultiplier:=room_height *1.5  / yscale

event_user(0);

//Let's draw ALL the minimap images :D
//VRU
if room=lv3_1 then mimage=lv3_1_bg;
if room=lv3_2 then mimage=lv3_2_bg;
if room=lv3_3 then mimage=3;
if room=lv3_4 then mimage=2;
if room=lv3_5 then mimage=32;
if room=lv3_6 then mimage=33;
if room=lv3_7 then mimage=34;
if room=lv3_8 then mimage=35;
//EIC
if room=lv2_1 then mimage=lv2_1_bg;
if room=lv2_2 then mimage=lv2_2_bg;
if room=lv2_3 then mimage=7;
if room=lv2_4 then mimage=8;
if room=lv2_5 then mimage=28;
if room=lv2_6 then mimage=29;
if room=lv2_7 then mimage=30;
if room=lv2_8 then mimage=31;
//MMO
if room=lv1_1 then mimage=42;
if room=lv1_2 then mimage=10;
if room=lv1_3 then mimage=11;
if room=lv1_4 then mimage=12;
if room=lv1_5 then mimage=24;
if room=lv1_6 then mimage=25;
if room=lv1_7 then mimage=26;
if room=lv1_8 then mimage=27;
//PVP
if room=lv4_1 then mimage=36;
if room=lv4_2 then mimage=37;
if room=lv4_3 then mimage=38;
if room=lv4_4 then mimage=39;
if room=lv4_5 then mimage=23;
//Special Maps
if room=arena then mimage=43;
if room=control then mimage=39;
//GG
if room=GGA then mimage=GGA_bg;
if room=GGB then mimage=GGB_bg;
if room=GGY then mimage=GGD_bg;
if room=GGD then mimage=GGY_bg;

//Some bugfixes
with (ship) {range = 700}
with (gamer) {range = 700}
