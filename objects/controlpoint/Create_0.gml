x=0;
y=0;

mapowner = info_map(room,"owners");
sprite_index=base2_spr;
if mapowner = 0 then sprite_index:=base0_spr;
if mapowner = 1 then sprite_index:=base1_spr;
if mapowner = 2 then sprite_index:=base2_spr;

decx=32;
decy=60;
mmo=0;
eic=0;
vru=0;
isover="no";

alarm[1]=1;