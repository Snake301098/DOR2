draw_sprite_ext(window_background_spr,0,1920/2,1080/2,0.7,0.7,0,c_white,0.5)

draw_set_color(c_white)
draw_set_font(HUD_font)
draw_set_halign(fa_center)
draw_set_alpha(0.9)
draw_set_valign(fa_top)


//green chest key
draw_text(x,y-75-25,string(dotString(round(global.credit_reward_green_key))))
draw_healthbar(x-100,y-75-5,x+100,y-75+5,global.credit_reward_green_key/global.credit_reward_green_key_treshold*100,c_black,c_green,c_green,0,true,true);
draw_text(x,y-75+25,"Get " + string(dotString(round(global.credit_reward_green_key_treshold))) + " credit to get one green chest key")


//gold chest key
draw_text(x,y+75-25,string(dotString(round(global.uridium_reward_gold_key))))
draw_healthbar(x-100,y+75-5,x+100,y+75+5,global.uridium_reward_gold_key/global.uridium_reward_gold_key_treshold*100,c_black,c_yellow,c_yellow,0,true,true);
draw_text(x,y+75+25,"Get " + string(dotString(round(global.uridium_reward_gold_key_treshold))) + " uridium to get one gold chest key")


draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_alpha(1)