xscale:=128;
yscale:=120; //80

xmultiplier:=room_width *1.5  / xscale
ymultiplier:=room_height *1.5  / yscale

event_user(0);

//Let's draw ALL the minimap images :D
//VRU
if room=lv3_1 then mimage=lv3_1_bg;
if room=lv3_2 then mimage=lv3_2_bg;
if room=lv3_3 then mimage=lv3_3_bg;
if room=lv3_4 then mimage=lv3_4_bg;
if room=lv3_5 then mimage=lv3_5_bg;
if room=lv3_6 then mimage=lv3_6_bg;
if room=lv3_7 then mimage=lv3_7_bg;
if room=lv3_8 then mimage=lv3_8_bg;
//EIC
if room=lv2_1 then mimage=lv2_1_bg;
if room=lv2_2 then mimage=lv2_2_bg;
if room=lv2_3 then mimage=lv2_3_bg;
if room=lv2_4 then mimage=lv2_4_bg;
if room=lv2_5 then mimage=lv2_5_bg;
if room=lv2_6 then mimage=lv2_6_bg;
if room=lv2_7 then mimage=lv2_7_bg;
if room=lv2_8 then mimage=lv2_8_bg;
//MMO
if room=lv1_1 then mimage=lv1_1_bg;
if room=lv1_2 then mimage=lv1_2_bg;
if room=lv1_3 then mimage=lv1_3_bg;
if room=lv1_4 then mimage=lv1_4_bg;
if room=lv1_5 then mimage=lv1_5_bg;
if room=lv1_6 then mimage=lv1_6_bg;
if room=lv1_7 then mimage=lv1_7_bg;
if room=lv1_8 then mimage=lv1_8_bg;
//PVP
if room=lv4_1 then mimage=lv4_1_bg;
if room=lv4_2 then mimage=lv4_2_bg;
if room=lv4_3 then mimage=lv4_3_bg;
if room=lv4_4 then mimage=lv4_4_bg;
if room=lv4_5 then mimage=23;
//Special Maps
if room=arena then mimage=lv4_4_bg;
if room=TDM then mimage=lv4_4_bg;
//GG
if room=GGA then mimage=GGA_bg;
if room=GGB then mimage=GGB_bg;
if room=GGY then mimage=GGD_bg;
if room=GGD then mimage=GGY_bg;

//Some bugfixes
with (ship) {range = 700}
with (gamer) {range = 700}
