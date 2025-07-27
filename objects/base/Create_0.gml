decx=32;
decy=60;
corp = "";
isCPspawn = false;
image_xscale = 0.8;
image_yscale = 0.8;
depth=60;

if room=lv1_1{
x:=1024/2;
y:=1024/2;
}
if room=lv2_1{
x:=14960/2;
y:=1024/2;
}
if room=lv3_1{
x:=14960/2;
y:=8960/2;
}
if room=lv1_8{
x:=1024/2;
y:=5000/2;
}
if room=lv2_8{
x:=8000/2;
y:=1024/2;
}
if room=lv3_8{
x:=14960/2;
y:=5000/2;
}

if room=TDM{
x:=800;
y:=800;
}

/*
if room=chaos{
x:=1024;
y:=1024;
}
*/

if instance_exists(gamer)=false then instance_create_depth(0,0,0,gamer);

switch room
    {
    case lv1_1: sprite_index:=base0_spr; break;
    case lv2_1: sprite_index:=base1_spr; break;
    case lv3_1: sprite_index:=base2_spr; break;
    case lv1_8: sprite_index:=base0_spr; break;
    case lv2_8: sprite_index:=base1_spr; break;
    case lv3_8: sprite_index:=base2_spr; break;  
    //case chaos: sprite_index:=global.base1_spr; break;  
    //case lvJPA: sprite_index:=global.base1_spr; break;  
    }
//xmultiplier:=3000 / sprite_width;
//ymultiplier:=3000 / sprite_height;

alarm[0] = 1;