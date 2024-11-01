//if !instance_exists(target) then target=noone;

//Ships drawing
//Regular ships
if Ship = "phoenix" then
{
//    image_angle=direction;
////    image_index = (direction * 32 / 360);
sprite_index = phoenix_spr;
}
else if Ship = "nostromo" then
{
//    image_angle=direction;
//    image_index = (direction * 32 / 360);
sprite_index = nostromo_spr;
}
else if Ship = "bigboy" then
{
//    image_angle=direction;
//    image_index = (direction * 32 / 360);
sprite_index = bigboy_spr;
}
else if Ship = "leonov" then
{
//    image_angle=direction;
//    image_index = (direction * 32 / 360);
sprite_index = leonov_spr;
}
else if Ship = "vengeance" then
{
//    image_angle=direction;
//    image_index = (direction * 32 / 360);
sprite_index = vengeance_spr;
}
else if Ship = "goliath" then
{
//    image_angle=direction;
//    image_index = (direction * 32 / 360);
sprite_index = goliath_spr;
}
//Veng designs
else if Ship = "revenge" then
{
//    image_angle=direction;
//    image_index = (direction * 32 / 360);
sprite_index = revenge_spr;
}
else if Ship = "avenger" then
{
//    image_angle=direction;
//    image_index = (direction * 32 / 360);
sprite_index = avenger_spr;
}
//Veng skill designs
else if Ship = "lightning" then
{
//    image_angle=direction;
//    image_index = (direction * 32 / 360);
sprite_index = lightning_spr;
//draw_sprite(global.lightning_spr,image_index,round(x),round(y));
}
//Goliath designs
else if Ship = "bastion" then
{
//    image_angle=direction;
//    image_index = (direction * 32 / 360);
sprite_index = bastion_spr;
}
else if Ship = "enforcer" then
{
//    image_angle=direction;
//    image_index = (direction * 32 / 360);
sprite_index = enforcer_spr;
}
//Goliath skill designs
else if Ship = "sentinel" then
{
//    image_angle=direction;
//    image_index = (direction * 32 / 360);
sprite_index = sentinel_spr;
}
else if Ship = "spectrum" then
{
//    image_angle=direction;
//    image_index = (direction * 32 / 360);
sprite_index = spectrum_spr;
}
else if Ship = "solace" then
{
//    image_angle=direction;
//    image_index = (direction * 32 / 360);
sprite_index = solace_spr;
}
else if Ship = "diminisher" then
{
//    image_angle=direction;
//    image_index = (direction * 32 / 360);
sprite_index = diminisher_spr;
}
else if Ship = "venom" then
{
//    image_angle=direction;
//    image_index = (direction * 32 / 360);
sprite_index = venom_spr;
}
//New-gen
else if Ship = "adept" then
{
//    image_angle=direction;
//    image_index = (direction * 32 / 360);
sprite_index = adept_spr;
}
else if Ship = "corsair" then
{
//    image_angle=direction;
//    image_index = (direction * 32 / 360);
sprite_index = corsair_spr;
}

//Goliath soccer designs
else if Ship = "referee" then
{
//    image_angle=direction;
//    image_index = (direction * 32 / 360);
sprite_index = referee_spr;
}
else if Ship = "kick" then
{
//    image_angle=direction;
//    image_index = (direction * 32 / 360);
sprite_index = kick_spr;
}
else if Ship = "goal" then
{
//    image_angle=direction;
//    image_index = (direction * 32 / 360);
sprite_index = goal_spr;
}
//Goliath HP designs
else if Ship = "centaur" then
{
//    image_angle=direction;
//    image_index = (direction * 32 / 360);
sprite_index = centaur_spr;
}
else if Ship = "saturn" then
{
//    image_angle=direction;
//    image_index = (direction * 32 / 360);

sprite_index = saturn_spr;
//draw_sprite(global.saturn_spr,image_index,round(x),round(y))
}
//Goliath EP/Honor designs
else if Ship = "veteran" then
{
//    image_angle=direction;
//    image_index = (direction * 32 / 360);
sprite_index = veteran_spr;
}
else if Ship = "exalted" then
{
//    image_angle=direction;
//    image_index = (direction * 32 / 360);
sprite_index = exalted_spr;
}
//Other ships.... Maybe some easter eggs? ^^
else if Ship = "admin" then
{
//    image_angle=direction;
//    image_index = (direction * 32 / 360);
sprite_index = admin_spr
}
else if Ship = "spearhead" then
{
//    image_angle=direction;
//    image_index = (direction * 32 / 360);
sprite_index = spearhead_spr;
}
else if Ship = "aegis" then
{
//    image_angle=direction;
//    image_index = (direction * 32 / 360);
sprite_index = aegis_spr;
}
else if Ship = "citadel" then
{
//    image_angle=direction;
image_index = (direction * 32 / 360);
sprite_index = citadel_spr;
}
else
{}

if visible=true then
    {
    if corporation=gamer.corporation then color:=make_color_rgb(7,151,247)
    else color:=make_color_rgb(190,0,0);
    //Ïðîðèñîâêà ñïðàéòà íà ñòàíäàðòíîì âèäå
    if view_current!=1
        {
        //Îòîáðàæåíèå íèêà.
    draw_set_halign(fa_center);
    draw_set_valign(fa_center);
    draw_set_font(nicktext);
    draw_set_color(c_red)
    draw_set_alpha(0.6)
	//var foll = ""
	//if chef > 0 then foll = " " + chef.nickname;
	//var acti = " " + action[0];
	//draw_text_ol(round(x),round(y+62),nickname + acti + foll,color,c_black); draw_set_alpha(1)
	draw_text_ol(round(x),round(y+62),nickname + " " + string(action[0]) + " " + string(isInvader),color,c_black); draw_set_alpha(1)
    
	//Èêîíêà êîðïîðàöèè.
//Won"t be needing this in JPB! OH NVM WE DO! LOLLLL
    draw_sprite(icons_spr,corporation,round(x+(string_width(nickname)/2)+8),round(y+62));

if giveadmin=0 then    
{  
    if RPOINT <= 5 then
    subimg=0
    if RPOINT > 5 and RPOINT <= 10 then
    subimg=1
    if RPOINT > 10 and RPOINT <= 15 then                      
    subimg=2
    if RPOINT > 15 and RPOINT <= 20 then
    subimg=3
    if RPOINT > 20 and RPOINT <= 25 then  
    subimg=4
    if RPOINT > 25 and RPOINT <= 30 then                        
    subimg=5
    if RPOINT > 30 and RPOINT <= 35 then  
    subimg=6
    if RPOINT > 35 and RPOINT <= 40 then  
    subimg=7
    if RPOINT > 40 and RPOINT <= 45 then                      
    subimg=8
    if RPOINT > 45 and RPOINT <= 50 then  
    subimg=9
    if RPOINT > 50 and RPOINT <= 55 then  
    subimg=10
    if RPOINT > 55 and RPOINT <= 60 then                    
    subimg=11
    if RPOINT > 60 and RPOINT <= 65 then  
    subimg=12
    if RPOINT > 65 and RPOINT <= 70 then  
    subimg=13
    if RPOINT > 70 and RPOINT <= 75 then                          
    subimg=14
    if RPOINT > 75 and RPOINT <= 80 then  
    subimg=15
    if RPOINT > 80 and RPOINT <= 85 then  
    subimg=16
    if RPOINT >85  and RPOINT <= 90 then                          
    subimg=17
    if RPOINT > 90 and RPOINT <= 99 then  
    subimg=18
    if RPOINT > 99 then  
    subimg=19
//    if RPOINT > 0 then 
//    draw_sprite(corona,0,round(x)-(string_width(nickname)/2)-8,round(y)+80)          
}
else if giveadmin=1 then
{
    subimg=20
}
    draw_sprite(ranks_spr,subimg,round(x-(string_width(nickname)/2)-13),round(y+65)) //95
if rings=3 then {drawalpha=1; drawbeta=1; drawgamma=1;}
if rings=2 then {drawalpha=1; drawbeta=1;}
if rings=1 then {drawalpha=1;}
//GG rings
if rings=1 then
{
{draw_sprite(ggring_spr,0,round(x-(string_width(nickname)/2)-18),round(y+45))}
}
else if rings=2 then
{
{draw_sprite(ggring_spr,0,round(x-(string_width(nickname)/2)-18),round(y+45))}
{draw_sprite(ggring_spr,0,round(x-(string_width(nickname)/2)-13),round(y+45))}
}
else if rings=3 then
{
{draw_sprite(ggring_spr,0,round(x-(string_width(nickname)/2)-18),round(y+45))}
{draw_sprite(ggring_spr,0,round(x-(string_width(nickname)/2)-13),round(y+45))} //75
{draw_sprite(ggring_spr,0,round(x-(string_width(nickname)/2)-8),round(y+45))}
}
else if rings=4 then
{
{draw_sprite(ggring_spr,1,round(x-(string_width(nickname)/2)-13),round(y+45))}
}}
{
    //Êîë-âî äðîèäîâ (åñëè èõ îòîáðàæåíèå îòêëþ÷åíî).
    if global.droid_enable=false then
        {
        var drawIris, drawFlax, drawApis, drawZeus;
        {
        //Find number of iris
        if Iris_numb=0 then drawIris=""
        else if Iris_numb=1 then drawIris="I"
        else if Iris_numb=2 then drawIris="II"
        else if Iris_numb=3 then drawIris="III"
        else if Iris_numb=4 then drawIris="IIII"
        else if Iris_numb=5 then drawIris="IIIII"
        else if Iris_numb=6 then drawIris="IIIIII"
        else if Iris_numb=7 then drawIris="IIIIIII"
        else if Iris_numb=8 then drawIris="IIIIIIII"
        else if Iris_numb=9 then drawIris="IIIIIIIIA"
        else if Iris_numb=10 then drawIris="IIIIIIIIAZ"        
        }
        {
        //Find number of flax
        if Flax_numb=0 then drawFlax=""
        else if Flax_numb=1 then drawFlax="F"
        else if Flax_numb=2 then drawFlax="FF"
        else if Flax_numb=3 then drawFlax="FFF"
        else if Flax_numb=4 then drawFlax="FFFF"
        else if Flax_numb=5 then drawFlax="FFFFF"
        else if Flax_numb=6 then drawFlax="FFFFFF"
        else if Flax_numb=7 then drawFlax="FFFFFFF"
        else if Flax_numb=8 then drawFlax="FFFFFFFF"
        else if Flax_numb=9 then drawFlax="FFFFFFFFA"
        else if Flax_numb=10 drawFlax="FFFFFFFFAZ"
        }
        draw_set_halign(fa_center)
        draw_set_alpha(0.6)
        draw_set_font(Digits);
        startx = round(x-10)
        for(i=1; i<=12; i+=1){
            if(droid[i,1] == "flax"){
                if(droid[i,4] == "HAVOC"){
                    draw_text_ol(startx,round(y-75),string("F"),c_red)
                    startx+=5;
                }
                else if(droid[i,4] == "HERCULES"){
                    draw_text_ol(startx,round(y-75),string("F"),c_aqua)
                    startx+=5;
                }
                else{
                    draw_text_ol(startx,round(y-75),string("F"),c_white)
                    startx+=5;
                }
            }else if(droid[i,1] == "iris"){
                if(droid[i,4] == "HAVOC"){
                    draw_text_ol(startx,round(y-75),string("I"),c_red)
                    startx+=5;
                }
                else if(droid[i,4] == "HERCULES"){
                    draw_text_ol(startx,round(y-75),string("I"),c_aqua)
                    startx+=5;
                }
                else{
                    draw_text_ol(startx,round(y-75),string("I"),c_white)
                    startx+=5;
                }
            }else if(droid[i,1] == "apis"){
                if(droid[i,4] == "HAVOC"){
                    draw_text_ol(startx,round(y-75),string("A"),c_red)
                    startx+=5;
                }
                else if(droid[i,4] == "HERCULES"){
                    draw_text_ol(startx,round(y-75),string("A"),c_aqua)
                    startx+=5;
                }
                else{
                    draw_text_ol(startx,round(y-75),string("A"),c_white)
                    startx+=5;
                }
            }else if(droid[i,1] == "zeus"){
                if(droid[i,4] == "HAVOC"){
                    draw_text_ol(startx,round(y-75),string("Z"),c_red)
                    startx+=5;
                }
                else if(droid[i,4] == "HERCULES"){
                    draw_text_ol(startx,round(y-75),string("Z"),c_aqua)
                    startx+=5;
                }
                else{
                    draw_text_ol(startx,round(y-75),string("Z"),c_white)
                    startx+=5;
                }
            }
        }

        if dnormal=1 and dhavoc=0 and dhercules=0 then
        {draw_text_ol(x-10,round(y-75),string(drawIris) + string(drawFlax),c_white);}
        else if dnormal=0 and dhavoc=1 and dhercules=0 then
        {draw_text_ol(x-10,round(y-75),string(drawIris) + string(drawFlax),c_red);}
        else if dnormal=0 and dhavoc=0 and dhercules=1 then
        {draw_text_ol(x-10,round(y-75),string(drawIris) + string(drawFlax),c_aqua);} 
        else
        {draw_text_ol(round(x-10),round(y-75),string(text.droneerror) +
        string(dnormal) + string(dhavoc) + string(dhercules) + string(droneformation) + string(dronedesign),c_aqua);}
       // draw_text_ol(x-25,round(y)+75+string_height(global.nickname)+5,"I: " +string(Iris_numb),c_aqua,c_black);
       // draw_text_ol(x+25,round(y)+75+string_height(global.nickname)+5,"F: " +string(Flax_numb),c_aqua,c_black); draw_set_alpha(1)
       
        }

image_xscale = global.scale;
image_yscale = global.scale;
draw_sprite_ext(sprite_index,image_index,round(x),round(y),image_xscale,image_yscale,0,c_white,1);
       
//NOAR DRONE STUFF
form=id.droneformation
{draw_set_halign(fa_center); draw_sprite(huddrone_spr,((form)-1),round(x-65),round(y-55))}        
    //Îòîáðàæåíèå çíà÷êà ëîêà è õåëñáàðà â ëîêå.
    }}

if target=noone {
image_index = (direction *image_number / 360);
}
else
{
	if instance_exists(target)
	{
		directions=point_direction(x,y,round(target.x),round(target.y)); 
		image_index=(directions*image_number/360)
	}
}


//Ïîëîñêà çäîðîâüÿ.
        draw_set_alpha(0.9);
        if corporation = gamer.corporation then
        {
            draw_healthbar(x-55,round(y)+80,round(x+55),round(y+95),followHP/health_def*100, c_black,c_orange,c_orange,0,1,1);draw_set_alpha(0.6); //c_lime
			draw_healthbar(x-55,round(y)+80,round(x+55),round(y+95),own_health/health_def*100, c_black,c_lime,c_lime,0,0,0);draw_set_alpha(0.6); //c_lime
        }
        else
        {
            draw_healthbar(x-55,round(y)+80,round(x+55),round(y+95),followHP/health_def*100, c_black,c_orange,c_orange,0,1,1);draw_set_alpha(0.6);
            draw_healthbar(x-55,round(y)+80,round(x+55),round(y+95),own_health/health_def*100, c_black,c_red,c_red,0,0,0);draw_set_alpha(0.6);
        }
        

    if id=gamer.target
        {draw_set_alpha(0.9);
        //Ëîê
        draw_sprite(lock_spr,0,round(x),round(y));
        }
		
	