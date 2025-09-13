/// @description 
//Èíèöèàëèçàöèÿ ñèñòåìû ÷àñòèö
global.sys = part_system_create();

//Ýìèòòåð
global.emitter = part_emitter_create(global.sys);
part_emitter_region(global.sys,global.emitter,x-5,x+5,y,y,ps_shape_line,ps_distr_linear);

//Îãíåííûå ÷àñòèöû
global.fire = part_type_create();
part_type_alpha2(global.fire,1,0);
part_type_color1(global.fire,make_color_rgb(255,128,64));
part_type_blend(global.fire,1);
part_type_direction(global.fire,90,90,0,0);
part_type_gravity(global.fire,0.05,270);
part_type_life(global.fire,5,8);
part_type_shape(global.fire,pt_shape_smoke);
part_type_size(global.fire,0.1,0.5,0.02,0);
part_type_speed(global.fire,2,6,0.1,0);

//Äûìîâûå ÷àñòèöû
global.smoke = part_type_create();
part_type_alpha2(global.smoke,0.8,0);
part_type_color1(global.smoke,c_dkgray);
part_type_direction(global.smoke,90,90,0,0);
part_type_life(global.smoke,5,12);
part_type_shape(global.smoke,pt_shape_smoke);
part_type_size(global.smoke,0.05,0.3,0.05,0);
part_type_speed(global.smoke,5,10,0.1,0);

//Äâèãàòåëü ìàëûõ êîðàáëåé.
global.engine_small_type = part_type_create();
part_type_sprite(global.engine_small_type,engine_small,1,1,0);
part_type_alpha3(global.engine_small_type,1,0.5,0);
part_type_life(global.engine_small_type,5,8);
part_type_speed(global.fire,2,6,0.1,0);
part_type_shape(global.fire,pt_shape_smoke);


//Îáëîìêè
global.efpiece = part_system_create();
part_system_depth(global.efpiece,-3); //ãëóáèíà ñèñòåìû ÷àñòèö

global.efpiece1 = part_type_create();
part_type_sprite(global.efpiece1,pieses_spr,0,0,1); //ñïðàéò ñî ñëó÷àéíûì êàäðîì
part_type_alpha3(global.efpiece1,1,1,0);
part_type_life(global.efpiece1,60,120);
part_type_speed(global.efpiece1,10,20,-1,0);
part_type_orientation(global.efpiece1,0,360,1,0,0);

global.efpiece2 = part_emitter_create(global.efpiece);
//part_type_color1(ind,color1) èëè part_type_color_rgb(ind,rmin,rmax,gmin,gmax,bmin,bmax) - ïåðåêðàøèâàíèå

//Çâåçäû
global.stars_sys = part_system_create();
part_system_depth(global.stars_sys,-1000); //ãëóáèíà ñèñòåìû ÷àñòèö
//"Çâåçäíûå" ÷àñòèöû
global.stars = part_type_create();
part_type_life(global.stars,100,200);
part_type_sprite(global.stars,star_spr,0,0,0);
//part_type_size(global.stars,0.5,1,0,0.5);
part_type_size(global.stars,0.5,10,0,0.5);
//Ýìèòòåð äëÿ çâåçä
global.emitter2 = part_emitter_create(global.stars_sys);
//part_emitter_region(global.stars_sys,global.emitter2,view_xview[0],view_xview[0]+view_wview[0],
part_emitter_region(global.stars_sys,global.emitter2,gamer.x-2000,gamer.x+2000,gamer.y-2000,gamer.y+2000,ps_shape_rectangle,0);
//view_yview[0],view_yview[0]+view_hview[0],ps_shape_rectangle,0);
//Ìàãíèò äëÿ çâåçä
//global.stars_magnit=part_attractor_create(global.stars_sys);


//part_type_color1(ind,color1) èëè part_type_color_rgb(ind,rmin,rmax,gmin,gmax,bmin,bmax) - ïåðåêðàøèâàíèå

//part_particles_count(ind) - Âîçâðàùàåò êîë-âî ÷àñòèö â ñèñòåìå.


	