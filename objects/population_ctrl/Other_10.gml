///@description portals
var scale;
scale = 16000/8000;

var gg_room_width = 2080;
var gg_room_height = 1300;

switch room
{

/*
case chaos: 
    {teleport31=instance_create_depth(1024,1024,50,teleport);
    teleport31.map1=chaos;
    teleport31.map2=chaos;
    teleport32=instance_create_depth(2000,1024,50,teleport);
    teleport32.map1=chaos;
    teleport32.map2=chaos;
    teleport34=instance_create_depth(4000,4000,50,teleport);
    teleport34.map1=chaos;
    teleport34.map2=chaos; break;}
*/
/*
case control: 
    {teleport31=instance_create_depth(102,102,50,teleport);
    teleport31.map1=lvJPA;
    teleport31.map2=lvJPA;
    teleport32=instance_create_depth(200,104,50,teleport);
    teleport32.map1=lvJPA;
    teleport32.map2=lvJPA;
    teleport34=instance_create_depth(400,400,50,teleport);
    teleport34.map1=lvJPA;
    teleport34.map2=lvJPA; break;}
*/
case lv1_1:  //MMO
    {teleport1=instance_create_depth(14960/scale,8960/scale,50,teleport);
    teleport1.map1=lv1_1;
    teleport1.map2=lv1_2;
    teleport1.tox=1024/scale;
    teleport1.toy=1024/scale;
//------------------GG-----------------------------------------       
if gamer.corporation=0 then
{
{
    teleport10=instance_create_depth(8000/scale,5000/scale,50,teleport);
    teleport10.map1=lv1_1;
    teleport10.map2=control; 
    teleport10.sprite_index=jpa_portal_spr;
    teleport10.visible=true
}
if global.alphaonmap=1 and global.alphawave <=10 then
{    
    teleport6=instance_create_depth(3100/scale,1000/scale,50,teleport);
    teleport6.map1=lv1_1;
    teleport6.map2=GGA;
    teleport6.sprite_index=alpha_portal_spr;
    teleport6.visible=true;
    teleport6.tox=irandom_range(100, gg_room_width - 100);
    teleport6.toy=irandom_range(100, gg_room_height - 100);
}
else
{teleport6.visible=false; teleport6.working=false;}
if global.betaonmap=1 and global.betawave <=10 then
{    
    teleport7=instance_create_depth(2500/scale,2300/scale,50,teleport);
    teleport7.map1=lv1_1;
    teleport7.map2=GGB;
    teleport7.sprite_index=beta_portal_spr;
    teleport7.visible=true    
    teleport7.tox=irandom_range(100, gg_room_width - 100);
    teleport7.toy=irandom_range(100, gg_room_height - 100);
}
else
{teleport7.visible=false; teleport7.working=false;}
if global.gammaonmap=1 and global.gammawave <=10 then
{    
    teleport8=instance_create_depth(1000/scale,2800/scale,50,teleport);
    teleport8.map1=lv1_1;
    teleport8.map2=GGY;
    teleport8.sprite_index=gamma_portal_spr;
    teleport8.visible=true    
    teleport8.tox=irandom_range(100, gg_room_width - 100);
    teleport8.toy=irandom_range(100, gg_room_height - 100);
}
else
{teleport8.visible=false; teleport8.working=false;}
if global.deltaonmap=1 and global.deltawave <10 then
{    
    teleport9=instance_create_depth(4000/scale,3000/scale,50,teleport);
    teleport9.map1=lv1_1;
    teleport9.map2=GGD;
    teleport9.sprite_index=delta_portal_spr;
    teleport8.visible=true  
    teleport8.tox=irandom_range(100, gg_room_width - 100);
    teleport8.toy=irandom_range(100, gg_room_height - 100);
}
else
{teleport9.visible=false; teleport9.working=false;}
}break;}
    
    
    
    
case lv3_1:  //VRU
    {
    
    teleport2=instance_create_depth(1024/scale,1024/scale,50,teleport);
    teleport2.map1=lv3_1;
    teleport2.map2=lv3_2;
    teleport2.tox=14960/scale;
    teleport2.toy=8960/scale;
//------------------GG------------------------------------------        
if gamer.corporation=2 then
{
{
    teleport10=instance_create_depth(8000/scale,5000/scale,50,teleport);
    teleport10.map1=lv3_1;
    teleport10.map2=control;
    teleport10.sprite_index=jpa_portal_spr;
    teleport10.visible=true
}
if global.alphaonmap=1 and global.alphawave <=10 then
{    
    teleport6=instance_create_depth(12800/scale,8900/scale,50,teleport);
    teleport6.map1=lv3_1;
    teleport6.map2=GGA;
    teleport6.sprite_index=alpha_portal_spr;
    teleport6.visible=true  
    teleport6.tox=irandom_range(100, gg_room_width - 100);
    teleport6.toy=irandom_range(100, gg_room_height - 100);
}
else
{teleport6.visible=false; teleport6.working=false;}
if global.betaonmap=1 and global.betawave <=10  then
{    
    teleport7=instance_create_depth(13400/scale,7600/scale,50,teleport);
    teleport7.map1=lv3_1;
    teleport7.map2=GGB;
    teleport7.sprite_index=beta_portal_spr;
    teleport7.visible=true  
    teleport7.tox=irandom_range(100, gg_room_width - 100);
    teleport7.toy=irandom_range(100, gg_room_height - 100);
}
else
{teleport7.visible=false; teleport7.working=false;}
if global.gammaonmap=1 and global.gammawave <=10  then
{    
    teleport8=instance_create_depth(14900/scale,7000/scale,50,teleport);
    teleport8.map1=lv3_1;
    teleport8.map2=GGY;
    teleport8.sprite_index=gamma_portal_spr;
    teleport8.visible=true  
    teleport8.tox=irandom_range(100, gg_room_width - 100);
    teleport8.toy=irandom_range(100, gg_room_height - 100);
}
else
{teleport8.visible=false; teleport8.working=false;}
if global.deltaonmap=1 and global.deltawave <=10  then
{    
    teleport9=instance_create_depth(12000/scale,6700/scale,50,teleport);
    teleport9.map1=lv3_1;
    teleport9.map2=GGD;
    teleport9.sprite_index=delta_portal_spr;
    teleport9.visible=true  
    teleport9.tox=irandom_range(100, gg_room_width - 100);
    teleport9.toy=irandom_range(100, gg_room_height - 100);
}
else
{teleport9.visible=false; teleport9.working=false;}
}break;}    


case lv2_1:  //EIC
    {teleport3=instance_create_depth(1024/scale,8960/scale,50,teleport);  //409 3584
    teleport3.map1=lv2_1;
    teleport3.map2=lv2_2;
    teleport3.tox=14960/scale;
    teleport3.toy=1024/scale;
//---------------------GG---------------------------------------         
if gamer.corporation=1 then
{
{
    teleport10=instance_create_depth(8000/scale,5000/scale,50,teleport);
    teleport10.map1=lv2_1;
    teleport10.map2=control; //lvJPA
    teleport10.sprite_index=jpa_portal_spr;
    teleport10.visible=true
}
if global.alphaonmap=1 and global.alphawave <=10  then
{    
    teleport6=instance_create_depth(12800/scale,1000/scale,50,teleport);
    teleport6.map1=lv2_1;
    teleport6.map2=GGA;
    teleport6.sprite_index=alpha_portal_spr;
    teleport6.visible=true  
    teleport6.tox=irandom_range(100, gg_room_width - 100);
    teleport6.toy=irandom_range(100, gg_room_height - 100);
}
else
{}//teleport6.visible=false; teleport6.working=false;
if global.betaonmap=1 and global.betawave <=10  then
{    
    teleport7=instance_create_depth(13400/scale,2300/scale,50,teleport);
    teleport7.map1=lv2_1;
    teleport7.map2=GGB;
    teleport7.sprite_index=beta_portal_spr;
    teleport7.visible=true  
    teleport7.tox=irandom_range(100, gg_room_width - 100);
    teleport7.toy=irandom_range(100, gg_room_height - 100);
}
else
{}//teleport7.visible=false; teleport7.working=false;
if global.gammaonmap=1 and global.gammawave <=10  then
{    
    teleport8=instance_create_depth(14900/scale,2800/scale,50,teleport);
    teleport8.map1=lv2_1;
    teleport8.map2=GGY;
    teleport8.sprite_index=gamma_portal_spr;
    teleport8.visible=true  
    teleport8.tox=irandom_range(100, gg_room_width - 100);
    teleport8.toy=irandom_range(100, gg_room_height - 100);
}
else
{}//teleport8.visible=false; teleport8.working=false;
if global.deltaonmap=1 and global.deltawave <=10  then
{    
    teleport9=instance_create_depth(12500/scale,3000/scale,50,teleport);
    teleport9.map1=lv2_1;
    teleport9.map2=GGD;
    teleport9.sprite_index=delta_portal_spr;
    teleport9.visible=true  
    teleport9.tox=irandom_range(100, gg_room_width - 100);
    teleport9.toy=irandom_range(100, gg_room_height - 100);
}
else
{}//{teleport9.visible=false; teleport9.working=false;
}break;}    
    
    
    ///////////////////////MMO///////////////////////////
case lv1_2: 
    {teleport1=instance_create_depth(1024/scale,1024/scale,50,teleport);
    teleport1.map1=lv1_1;
    teleport1.map2=lv1_2;
    teleport1.tox=14960/scale;
    teleport1.toy=8960/scale;
    teleport2=instance_create_depth(14960/scale,1024/scale,50,teleport);
    teleport2.map1=lv1_2;
    teleport2.map2=lv1_3;
    teleport2.tox=1024/scale;
    teleport2.toy=1024/scale;
    teleport3=instance_create_depth(1024/scale,8960/scale,50,teleport);
    teleport3.map1=lv1_2;
    teleport3.map2=lv1_4;
    teleport3.tox=1024/scale;
    teleport3.toy=1024/scale; break;}
case lv1_3: 
    {teleport2=instance_create_depth(1024/scale,8960/scale,50,teleport);
    teleport2.map1=lv1_2;
    teleport2.map2=lv1_3;
    teleport2.tox=14960/scale;
    teleport2.toy=1024/scale;
    teleport1=instance_create_depth(14960/scale,8960/scale,50,teleport);
    teleport1.map1=lv1_3;
    teleport1.map2=lv1_4;
    teleport1.tox=14960/scale;
    teleport1.toy=1024/scale;
    teleport3=instance_create_depth(14960/scale,1024/scale,50,teleport);
    teleport3.map1=lv1_3;
    teleport3.map2=lv2_3;
    teleport3.tox=1024/scale;
    teleport3.toy=8960/scale; break;}
case lv1_4: 
    {teleport1=instance_create_depth(1024/scale,1024/scale,50,teleport);
    teleport1.map1=lv1_2;
    teleport1.map2=lv1_4;
    teleport1.tox=14960/scale;
    teleport1.toy=8960/scale;
    teleport2=instance_create_depth(14960/scale,5000/scale,50,teleport);
    teleport2.map1=lv1_4;
    teleport2.map2=lv4_1;
    teleport2.tox=1024/scale;
    teleport2.toy=5000/scale;
    teleport3=instance_create_depth(14960/scale,1024/scale,50,teleport);
    teleport3.map1=lv1_3;
    teleport3.map2=lv1_4;
    teleport3.tox=14960/scale;
    teleport3.toy=8960/scale;
    teleport4=instance_create_depth(14960/scale,8960/scale,50,teleport);
    teleport4.map1=lv1_4;
    teleport4.map2=lv3_4;
    teleport4.tox=1024/scale;
    teleport4.toy=1024/scale; break;}
    case lv1_5:
  
    {teleport1=instance_create_depth(14960/scale,5000/scale,50,teleport);
    teleport1.map1=lv1_5;
    teleport1.map2=lv4_4;
    teleport1.tox=7750*0.8;
    teleport1.toy=5000*0.8;
    teleport2=instance_create_depth(8000/scale,8960/scale,50,teleport);
    teleport2.map1=lv1_5;
    teleport2.map2=lv4_5;
    teleport2.tox=1024*0.8;
    teleport2.toy=5000*0.8;
    teleport3=instance_create_depth(1024/scale,8960/scale,50,teleport);
    teleport3.map1=lv1_5;
    teleport3.map2=lv1_7;
    teleport3.tox=14960/scale;
    teleport3.toy=1024/scale;
    teleport4=instance_create_depth(1024/scale,1024/scale,50,teleport);
    teleport4.map1=lv1_5;
    teleport4.map2=lv1_6;
    teleport4.tox=14960/scale;
    teleport4.toy=8960/scale; break;}
    
    case lv1_6:
  
    {teleport1=instance_create_depth(1024/scale,8960/scale,50,teleport);
    teleport1.map1=lv1_8;
    teleport1.map2=lv1_6;
    teleport1.tox=14960/scale;
    teleport1.toy=1024/scale;
    teleport2=instance_create_depth(14960/scale,8960/scale,50,teleport);
    teleport2.map1=lv1_5;
    teleport2.map2=lv1_6;
    teleport2.tox=1024/scale;
    teleport2.toy=1024/scale; break;}
    
    case lv1_7: 
 
    {teleport1=instance_create_depth(14960/scale,1024/scale,50,teleport);
    teleport1.map1=lv1_5;
    teleport1.map2=lv1_7;
    teleport1.tox=1024/scale;
    teleport1.toy=8960/scale;
    teleport2=instance_create_depth(1024/scale,1024/scale,50,teleport);
    teleport2.map1=lv1_8;
    teleport2.map2=lv1_7;
    teleport2.tox=14960/scale;
    teleport2.toy=8960/scale; break;}
    
    case lv1_8: 
   
    {teleport1=instance_create_depth(14960/scale,1024/scale,50,teleport);
    teleport1.map1=lv1_8;
    teleport1.map2=lv1_6;
    teleport1.tox=1024/scale;
    teleport1.toy=8960/scale;
    teleport2=instance_create_depth(14960/scale,8960/scale,50,teleport);
    teleport2.map1=lv1_8;
    teleport2.map2=lv1_7;
    teleport2.tox=1024/scale;
    teleport2.toy=1024/scale; break;}    
    ///////////////////////////////// VRU/////////////////////////////
case lv3_2: 
    {teleport2=instance_create_depth(14960/scale,8960/scale,50,teleport);
    teleport2.map1=lv3_1;
    teleport2.map2=lv3_2;
    teleport2.tox=1024/scale;
    teleport2.toy=1024/scale;
    teleport1=instance_create_depth(14960/scale,1024/scale,50,teleport);
    teleport1.map1=lv3_3;
    teleport1.map2=lv3_2;
    teleport1.tox=14960/scale;
    teleport1.toy=8960/scale;
    teleport3=instance_create_depth(1024/scale,1024/scale,50,teleport);
    teleport3.map1=lv3_2;
    teleport3.map2=lv3_4;
    teleport3.tox=14960/scale;
    teleport3.toy=8960/scale; break;}
case lv3_3: 
    {teleport1=instance_create_depth(14960/scale,8960/scale,50,teleport);
    teleport1.map1=lv3_3;
    teleport1.map2=lv3_2;
    teleport1.tox=14960/scale;
    teleport1.toy=1024/scale;
    teleport2=instance_create_depth(1024/scale,8960/scale,50,teleport);
    teleport2.map1=lv3_3;
    teleport2.map2=lv3_4;
    teleport2.tox=14960/scale;
    teleport2.toy=1024/scale;
    teleport3=instance_create_depth(1024/scale,1024/scale,50,teleport);
    teleport3.map1=lv3_3;
    teleport3.map2=lv2_4;
    teleport3.tox=1024/scale;
    teleport3.toy=8960/scale; break;}
case lv3_4: 
    {teleport2=instance_create_depth(14960/scale,8960/scale,50,teleport);
    teleport2.map1=lv3_2;
    teleport2.map2=lv3_4;
    teleport2.tox=1024/scale;
    teleport2.toy=1024/scale;
    teleport1=instance_create_depth(1024/scale,1024/scale,50,teleport);
    teleport1.map1=lv1_4;
    teleport1.map2=lv3_4;
    teleport1.tox=14960/scale;
    teleport1.toy=8960/scale;
    teleport3=instance_create_depth(14960/scale,1024/scale,50,teleport);
    teleport3.map1=lv3_3;
    teleport3.map2=lv3_4;
    teleport3.tox=1024/scale;
    teleport3.toy=8960/scale;
    teleport4=instance_create_depth(8000/scale,1024/scale,50,teleport);
    teleport4.map1=lv3_4;
    teleport4.map2=lv4_3;
    teleport4.tox=14960/scale;
    teleport4.toy=5000/scale; break;}
    case lv3_5:

    {teleport3=instance_create_depth(14960/scale,1024/scale,50,teleport);
    teleport3.map1=lv3_5;
    teleport3.map2=lv4_5;
    teleport3.tox=8000*0.8;
    teleport3.toy=8960*0.8;
    teleport2=instance_create_depth(14960/scale,8960/scale,50,teleport);
    teleport2.map1=lv3_5;
    teleport2.map2=lv3_7;
    teleport2.tox=1024/scale;
    teleport2.toy=8960/scale;
    teleport4=instance_create_depth(1024/scale,1024/scale,50,teleport);
    teleport4.map1=lv3_5;
    teleport4.map2=lv4_4;
    teleport4.tox=8000*0.8;
    teleport4.toy=8960*0.8;
    teleport1=instance_create_depth(1024/scale,8960/scale,50,teleport);
    teleport1.map1=lv3_5;
    teleport1.map2=lv3_6;
    teleport1.tox=1024/scale;
    teleport1.toy=1024/scale; break;}
    
    case lv3_6:
  
    {teleport1=instance_create_depth(1024/scale,1024/scale,50,teleport);
    teleport1.map1=lv3_5;
    teleport1.map2=lv3_6;
    teleport1.tox=1024/scale;
    teleport1.toy=8960/scale;
    teleport2=instance_create_depth(14960/scale,8960/scale,50,teleport);
    teleport2.map1=lv3_6;
    teleport2.map2=lv3_8;
    teleport2.tox=1024/scale;
    teleport2.toy=8960/scale; break;}
    
    case lv3_7:
  
    {teleport2=instance_create_depth(1024/scale,8960/scale,50,teleport);
    teleport2.map1=lv3_5;
    teleport2.map2=lv3_7;
    teleport2.tox=14960/scale;
    teleport2.toy=8960/scale;
    teleport1=instance_create_depth(14960/scale,8960/scale,50,teleport);
    teleport1.map1=lv3_7;
    teleport1.map2=lv3_8;
    teleport1.tox=1024/scale;
    teleport1.toy=1024/scale; break;}
    
    case lv3_8:
    
    {teleport2=instance_create_depth(1024/scale,1024/scale,50,teleport);
    teleport2.map1=lv3_7;
    teleport2.map2=lv3_8;
    teleport2.tox=14960/scale;
    teleport2.toy=8960/scale;
    teleport1=instance_create_depth(1024,8960/scale,50,teleport);
    teleport1.map1=lv3_6;
    teleport1.map2=lv3_8;
    teleport1.tox=14960/scale;
    teleport1.toy=8960/scale; break;}    
    ////////////////////////////////EIC////////////////////////////////
case lv2_2: 
    {teleport3=instance_create_depth(14960/scale,1024/scale,50,teleport);
    teleport3.map1=lv2_1;
    teleport3.map2=lv2_2;
    teleport3.tox=1024/scale;
    teleport3.toy=8960/scale;
    teleport2=instance_create_depth(1024/scale,8960/scale,50,teleport);
    teleport2.map1=lv2_2;
    teleport2.map2=lv2_3;
    teleport2.tox=14960/scale;
    teleport2.toy=1024/scale;
    teleport3=instance_create_depth(14960/scale,8960/scale,50,teleport);
    teleport3.map1=lv2_2;
    teleport3.map2=lv2_4;
    teleport3.tox=1024/scale;
    teleport3.toy=1024/scale; break;}
case lv2_3: 
    {teleport1=instance_create_depth(14960/scale,1024/scale,50,teleport);
    teleport1.map1=lv2_2;
    teleport1.map2=lv2_3;
    teleport1.tox=1024/scale;
    teleport1.toy=8960/scale;
    teleport2=instance_create_depth(14960/scale,8960/scale,50,teleport);
    teleport2.map1=lv2_3;
    teleport2.map2=lv2_4;
    teleport2.tox=14960/scale;
    teleport2.toy=1024/scale;
    teleport3=instance_create_depth(1024/scale,8960/scale,50,teleport);
    teleport3.map1=lv1_3;
    teleport3.map2=lv2_3;
    teleport3.tox=14960/scale;
    teleport3.toy=1024/scale; break;}
case lv2_4: 
    {teleport1=instance_create_depth(1024/scale,1024/scale,50,teleport);
    teleport1.map1=lv2_2;
    teleport1.map2=lv2_4;
    teleport1.tox=14960/scale;
    teleport1.toy=8960/scale;
    teleport2=instance_create_depth(8000/scale,8960/scale,50,teleport);
    teleport2.map1=lv2_4;
    teleport2.map2=lv4_2;
    teleport2.tox=8000/scale;
    teleport2.toy=5000/scale;
    teleport3=instance_create_depth(1024/scale,8960/scale,50,teleport);
    teleport3.map1=lv3_3;
    teleport3.map2=lv2_4;
    teleport3.tox=1024/scale;
    teleport3.toy=1024/scale;
    teleport4=instance_create_depth(14960/scale,1024/scale,50,teleport);
    teleport4.map1=lv2_3;
    teleport4.map2=lv2_4;
    teleport4.tox=14960/scale;
    teleport4.toy=8960/scale; break;}
    case lv2_5: 

    {teleport1=instance_create_depth(14960/scale,1024/scale,50,teleport);
    teleport1.map1=lv2_5;
    teleport1.map2=lv2_7;
    teleport1.tox=1024/scale;
    teleport1.toy=8960/scale;
    teleport2=instance_create_depth(1024/scale,8960/scale,50,teleport);
    teleport2.map1=lv2_5;
    teleport2.map2=lv4_4;
    teleport2.tox=8000*0.8;
    teleport2.toy=1024*0.8;
    teleport3=instance_create_depth(14960/scale,8960/scale,50,teleport);
    teleport3.map1=lv2_5;
    teleport3.map2=lv4_5;
    teleport3.tox=8000*0.8;
    teleport3.toy=1024*0.8;
    teleport4=instance_create_depth(1024/scale,1024/scale,50,teleport);
    teleport4.map1=lv2_5;
    teleport4.map2=lv2_6;
    teleport4.tox=1024/scale;
    teleport4.toy=8960/scale; break;}
    
    case lv2_6:
 
    {teleport1=instance_create_depth(14960/scale,1024/scale,50,teleport);
    teleport1.map1=lv2_6;
    teleport1.map2=lv2_8;
    teleport1.tox=1024/scale;
    teleport1.toy=8960/scale;
    teleport2=instance_create_depth(1024/scale,8960/scale,50,teleport);
    teleport2.map1=lv2_5;
    teleport2.map2=lv2_6;
    teleport2.tox=1024/scale;
    teleport2.toy=1024/scale; break;}
    
    case lv2_7:

    {teleport1=instance_create_depth(1024/scale,8960/scale,50,teleport);
    teleport1.map1=lv2_5;
    teleport1.map2=lv2_7;
    teleport1.tox=14960/scale;
    teleport1.toy=1024/scale;
    teleport2=instance_create_depth(14960/scale,1024/scale,50,teleport);
    teleport2.map1=lv2_7;
    teleport2.map2=lv2_8;
    teleport2.tox=14960/scale;
    teleport2.toy=8960/scale; break;}
    
    case lv2_8:

    {teleport1=instance_create_depth(1024/scale,8960/scale,50,teleport);
    teleport1.map1=lv2_6;
    teleport1.map2=lv2_8;
    teleport1.tox=14960/scale;
    teleport1.toy=1024/scale;
    teleport2=instance_create_depth(14960/scale,8960/scale,50,teleport);
    teleport2.map1=lv2_7;
    teleport2.map2=lv2_8;
    teleport1.tox=14960/scale;
    teleport1.toy=1024/scale; break;}
    ////////////////////////////////////////PVP//////////////////////////////////////////////    
case lv4_1:  //PVP

    {teleport1=instance_create_depth(1024/scale,5000/scale,50,teleport);
    teleport1.map1=lv1_4;
    teleport1.map2=lv4_1;
    teleport1.tox=14960/scale;
    teleport1.toy=5000/scale;
    teleport2=instance_create_depth(14960/scale,1024/scale,50,teleport);
    teleport2.map1=lv4_2;
    teleport2.map2=lv4_1;
    teleport2.tox=1024/scale;
    teleport2.toy=8960/scale;
    teleport3=instance_create_depth(14960/scale,8960/scale,50,teleport);
    teleport3.map1=lv4_3;
    teleport3.map2=lv4_1;
    teleport3.tox=512/scale;
    teleport3.toy=9488/scale;
    teleport4=instance_create_depth(8000/scale,5000/scale,50,teleport);
    teleport4.map1=lv4_4
    teleport4.map2=lv4_1;
    teleport4.tox=7750*0.8;
    teleport4.toy=5000*0.8; break;}
case lv4_2:
 
    {teleport1=instance_create_depth(8000/scale,1024/scale,50,teleport);
    teleport1.map1=lv2_4;
    teleport1.map2=lv4_2;
    teleport1.tox=8000/scale;
    teleport1.toy=8960/scale;
    teleport2=instance_create_depth(8000/scale,5000/scale,50,teleport);
    teleport2.map1=lv4_4
    teleport2.map2=lv4_2;
    teleport2.tox=8250*0.8;
    teleport2.toy=4750*0.8;
    teleport3=instance_create_depth(1024/scale,8960/scale,50,teleport);
    teleport3.map1=lv4_2;
    teleport3.map2=lv4_1;
    teleport3.tox=14960/scale;
    teleport3.toy=1024/scale;
    teleport4=instance_create_depth(14960/scale,8960/scale,50,teleport);
    teleport4.map1=lv4_3;
    teleport4.map2=lv4_2;
    teleport4.tox=512/scale;
    teleport4.toy=512/scale; break;}
case lv4_3:
 
    {teleport1=instance_create_depth(14960/scale,5000/scale,50,teleport);
    teleport1.map1=lv3_4;
    teleport1.map2=lv4_3;
    teleport1.tox=8000/scale;
    teleport1.toy=1024/scale;
    teleport3=instance_create_depth(8000/scale,5000/scale,50,teleport);
    teleport3.map1=lv4_4;
    teleport3.map2=lv4_3;
    teleport3.tox=8250*0.8;
    teleport3.toy=5250*0.8;
    teleport2=instance_create_depth(512/scale,512/scale,50,teleport);
    teleport2.map1=lv4_3;
    teleport2.map2=lv4_2;
    teleport2.tox=14960/scale;
    teleport2.toy=8960/scale;
    teleport4=instance_create_depth(512/scale,9488/scale,50,teleport);
    teleport4.map1=lv4_3;
    teleport4.map2=lv4_1;
    teleport4.tox=14960/scale;
    teleport4.toy=8960/scale; break;}

case lv4_4:
 
    {teleport4=instance_create_depth(7750*0.8,5000*0.8,50,teleport);
    teleport4.map1=lv4_4;
    teleport4.map2=lv4_1;
    teleport4.tox=8000/scale;
    teleport4.toy=5000/scale;
    teleport2=instance_create_depth(8250*0.8,4750*0.8,50,teleport);
    teleport2.map1=lv4_4;
    teleport2.map2=lv4_2;
    teleport2.tox=8000/scale;
    teleport2.toy=5000/scale;
    teleport3=instance_create_depth(8250*0.8,5250*0.8,50,teleport);
    teleport3.map1=lv4_4;
    teleport3.map2=lv4_3;
    teleport3.tox=8250/scale;
    teleport3.toy=5250/scale;
    teleport1=instance_create_depth(1024*0.8,5000*0.8,50,teleport);
    teleport1.map1=lv1_5;
    teleport1.map2=lv4_4;
    teleport1.tox=14960/scale;
    teleport1.toy=5000/scale;
    teleport5=instance_create_depth(8000*0.8,1024*0.8,50,teleport);
    teleport5.map1=lv2_5;
    teleport5.map2=lv4_4;
    teleport5.tox=1024/scale;
    teleport5.toy=8960/scale;
    teleport6=instance_create_depth(8000*0.8,8960*0.8,50,teleport);
    teleport6.map1=lv3_5;
    teleport6.map2=lv4_4;
    teleport6.tox=1024/scale;
    teleport6.toy=1024/scale; break;}
    
    case lv4_5:
 
    {teleport1=instance_create_depth(8000*0.8,1024*0.8,50,teleport);
    teleport1.map1=lv2_5;
    teleport1.map2=lv4_5;
    teleport1.tox=14960/scale;
    teleport1.toy=8960/scale;
    teleport2=instance_create_depth(1024*0.8,5000*0.8,50,teleport);
    teleport2.map1=lv1_5
    teleport2.map2=lv4_5;
    teleport2.tox=8000/scale;
    teleport2.toy=8960/scale;
    teleport3=instance_create_depth(8000,8960,50,teleport);
    teleport3.map1=lv3_5;
    teleport3.map2=lv4_5;
    teleport3.tox=14960/scale;
    teleport3.toy=1024/scale; break;}  
}