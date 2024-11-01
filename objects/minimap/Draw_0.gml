//ROOM LIMITS BORDERS
//Ãðàíèöû êîìíàòû
draw_set_alpha(0.5);
draw_set_color(make_color_rgb(160,0,0));
draw_line(0,0,room_width,0);
draw_line(0,0,0,room_height);
draw_line(0,room_height,room_width,room_height);
draw_line(room_width,0,room_width,room_height);

draw_set_halign(fa_center)

draw_set_font(wendy_font);



//HUD NICKNAME ETC

var xx = round(gamer.x);
var yy = round(gamer.y);
var a, dmgBoost, hpBoost, shdBoost;
with (gamer) {



//Ïîëîñêà çäîðîâüÿ è ùèòà. 
//Îòîáðàæåíèå íèêà.
draw_set_halign(fa_center);
draw_set_alpha(10);
draw_set_font(nicktext);
draw_set_color(global.HUD_color);
rpf=global.rpfactor;
rpbelow=0;
rpabove=0;
    
if global.rankpoints <= 5499*rpf then  //Basic space pilot
{subimg=0; rpbelow=0; rpabove=5500*rpf; RPOINT=5}
if global.rankpoints > 5500*rpf then  //Space pilot
{subimg=1; rpbelow=5500*rpf; rpabove=9000*rpf; RPOINT=10}
if global.rankpoints > 9000*rpf then //Chief space pilot
{subimg=2; rpbelow=9000*rpf; rpabove=12000*rpf; RPOINT=15}
if global.rankpoints > 12000*rpf then //Basic sergeant
{subimg=3; rpbelow=12000*rpf; rpabove=5500*rpf; RPOINT=20}
if global.rankpoints > 15000*rpf then  //Sergeant
{subimg=4; rpbelow=15000*rpf; rpabove=20000*rpf; RPOINT=25}
if global.rankpoints > 20000*rpf then    //Chief sergeant
{subimg=5; rpbelow=20000*rpf; rpabove=27500*rpf; RPOINT=30}
if global.rankpoints > 27500*rpf then  //Basic lieutenant
{subimg=6; rpbelow=27500*rpf; rpabove=35000*rpf; RPOINT=35}
if global.rankpoints > 35000*rpf then  //lieutenant  
{subimg=7; rpbelow=35000*rpf; rpabove=50000*rpf; RPOINT=40}
if global.rankpoints > 50000*rpf then //chief lieutenant
{subimg=8; rpbelow=50000*rpf; rpabove=80000*rpf; RPOINT=45}
if global.rankpoints > 80000*rpf then  //basic captain
{subimg=9; rpbelow=80000*rpf; rpabove=125000*rpf; RPOINT=50}
if global.rankpoints > 125000*rpf then  //captain
{subimg=10; rpbelow=125000*rpf; rpabove=150000*rpf; RPOINT=55}
if global.rankpoints > 150000*rpf then //chief captain
{subimg=11; rpbelow=150000*rpf; rpabove=200000*rpf; RPOINT=60}
if global.rankpoints > 200000*rpf then  //basic major
{subimg=12; rpbelow=200000*rpf; rpabove=300000*rpf; RPOINT=65}
if global.rankpoints > 300000*rpf then  //major
{subimg=13; rpbelow=300000*rpf; rpabove=525000*rpf; RPOINT=70}
if global.rankpoints > 525000*rpf then //chief major
{subimg=14; rpbelow=525000*rpf; rpabove=850000*rpf; RPOINT=75}
if global.rankpoints > 850000*rpf then  //basic colonel
{subimg=15; rpbelow=850000*rpf; rpabove=1600000*rpf; RPOINT=80}
if global.rankpoints > 1600000*rpf then   //colonel
{subimg=16; rpbelow=1600000*rpf; rpabove=2800000*rpf; RPOINT=85}
if global.rankpoints > 2800000*rpf then //chief colonel
{subimg=17; rpbelow=2800000*rpf; rpabove=3800000*rpf; RPOINT=90}
if global.rankpoints > 3800000*rpf then  //Basic general
{subimg=18; rpbelow=3800000*rpf; rpabove=5000000*rpf; RPOINT=95}
if global.rankpoints > 5000000*rpf then  //General
{subimg=19; rpbelow=5000000*rpf; rpabove=99999999999; RPOINT=100}
if global.isadmin then
{subimg=20}

global.subimg=subimg;
global.rpbelow=rpbelow;
global.rpabove=rpabove;
	
/*
* ****USERNAME + COMPANY + RANK + GATES**** *
*/ 
if gamer.destroyed=0 then //check if gamer not killed
{
draw_set_font(nicktext)    
if (global.killstreak>0) then {global.DisplayNickname=string(global.nickname)+" | "+string(global.kills)+" (" + string(global.killstreak)+")";} else {global.DisplayNickname=string(global.nickname)+" | "+ string(global.kills);}
draw_set_valign(fa_center);
draw_text_ol(xx,yy+73,global.DisplayNickname,global.HUD_color,c_black); //nickname
draw_sprite(icons_spr,corporation,xx+string_width(global.DisplayNickname)/2+15,yy+73); //firm
draw_sprite(ranks_spr,subimg,xx-string_width(global.DisplayNickname)/2-15,yy+75) 
    
if(global.alphacompleted+global.betacompleted+global.gammacompleted+global.deltacompleted == 4) {
	draw_sprite(ggring_spr,1,xx-string_width(global.DisplayNickname)/2-15,yy+63)
} else {
	if(global.alphacompleted == 1) {
	    draw_sprite(ggring_spr,0,xx-string_width(global.DisplayNickname)/2-21,yy+63) //476
	}
	if(global.betacompleted == 1) {
	    draw_sprite(ggring_spr,0,xx-string_width(global.DisplayNickname)/2-15,yy+63)//476
	}
	if(global.gammacompleted == 1) {
	    draw_sprite(ggring_spr,0,xx-string_width(global.DisplayNickname)/2-9,yy+63)//476
	}
	if(global.deltacompleted == 1) {
	    draw_sprite(ggring_spr,0,xx-string_width(global.DisplayNickname)/2-15,yy+63-5)//454
	}
}
	/*
	* ****DRONE STUFF IS DOWN HERE**** *
*/   
if(global.droid_enable=false) {
	draw_set_halign(fa_center)
	draw_set_alpha(0.6)
	draw_set_font(Digits);
	startx = round(x-27);
	for(i=1; i<=12; i+=1){
	    if(droid[i,1] == "flax"){
	        if(droid[i,4] == "HAVOC"){draw_set_color(c_red)
	            draw_text(startx,round(y-60),string("F"))
	            startx+=5;
	        }
	        else if(droid[i,4] == "HERCULES"){draw_set_color(c_aqua)
	            draw_text(startx,round(y-60),string("F"))
	            startx+=5;
	        }
	        else{draw_set_color(c_white)
	            draw_text(startx,round(y-60),string("F"))
	            startx+=5;
	        }
	    }else if(droid[i,1] == "iris"){
	        if(droid[i,4] == "HAVOC"){draw_set_color(c_red)
	            draw_text(startx,round(y-60),string("I"))
	            startx+=5;
	        }
	        else if(droid[i,4] == "HERCULES"){draw_set_color(c_aqua)
	            draw_text(startx,round(y-60),string("I"))
	            startx+=5;
	        }
	        else{draw_set_color(c_white)
	            draw_text(startx,round(y-60),string("I"))
	            startx+=5;
	        }
	    }else if(droid[i,1] == "apis"){
	        if(droid[i,4] == "HAVOC"){draw_set_color(c_red)
	            draw_text(startx,round(y-60),string("A"))
	            startx+=5;
	        }
	        else if(droid[i,4] == "HERCULES"){draw_set_color(c_aqua)
	            draw_text(startx,round(y-60),string("A"))
	            startx+=5;
	        }
	        else{draw_set_color(c_white)
	            draw_text(startx,round(y-60),string("A"))
	            startx+=5;
	        }
	    }else if(droid[i,1] == "zeus"){
	        if(droid[i,4] == "HAVOC"){draw_set_color(c_red)
	            draw_text(startx,round(y-60),string("Z"))
	            startx+=5;
	        }
	        else if(droid[i,4] == "HERCULES"){draw_set_color(c_aqua)
	            draw_text(startx,round(y-60),string("Z"))
	            startx+=5;
	        }
	        else{draw_set_color(c_white)
	            draw_text(startx,round(y-60),string("Z"))
	            startx+=5;
	        }
	    }
	}
	draw_set_color(global.HUD_color); //Bugfix
}
{
	//draw_set_halign(fa_center); draw_sprite(HUDDRONE,((global.droneformation)-1),xx+round(x-50),yy+round(y-75))
	draw_set_halign(fa_center); draw_sprite(huddrone_spr,((global.droneformation)-1),xx-60,yy-55)
}
}
}