// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_text_ol(argument0,argument1,argument2,argument3,argument4=c_black,argument5=HUD_font){
//draw_text_ol(x, y, òåêñò, îñíîâíîé öâåò, äîïîëíèòåëüíûé öâåò) - ðèñóåò îáâåä¸ííûé òåêñò
var color1;
if argument4=0 then color1=c_black
    else color1=argument4;
if argument5!=0 then draw_set_font(argument5);
draw_set_color(color1)
//draw_text(round(argument0-1),round(argument1),argument2)
//draw_text(round(argument0+1),round(argument1),argument2)
//draw_text(round(argument0),round(argument1-1),argument2)
//draw_text(round(argument0),round(argument1+1),argument2)
draw_set_color(argument3)
draw_text(round(argument0),round(argument1),argument2)
}