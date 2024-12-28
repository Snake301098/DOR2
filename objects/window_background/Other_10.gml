/// @description DRAW ABOVE BUTTONS
var start_length, end_length, total_length, number_btn, first_layer_buttons;

start_length=470;
end_length=1440;
first_layer_buttons=170;
total_length = end_length-start_length;
number_btn = 5


var hangar_btn_0 = instance_create_depth(0,0,depth-1,button_hangar)
hangar_btn_0.x = start_length + total_length / (number_btn-1) * 0;
hangar_btn_0.y = first_layer_buttons;
hangar_btn_0.button_sprite=button_default_spr;
hangar_btn_0.button_text="EQUIPMENT"
hangar_btn_0.image_index=0

var hangar_btn_1 = instance_create_depth(0,0,depth-1,button_hangar)
hangar_btn_1.x = start_length + total_length / (number_btn-1) * 1;
hangar_btn_1.y = first_layer_buttons;
hangar_btn_1.button_sprite=button_default_spr;
hangar_btn_1.button_text="SHOP"
hangar_btn_1.image_index=1

var hangar_btn_2 = instance_create_depth(0,0,depth-1,button_hangar)
hangar_btn_2.x = start_length + total_length / (number_btn-1) * 2;
hangar_btn_2.y = first_layer_buttons;
hangar_btn_2.button_sprite=button_default_spr;
hangar_btn_2.button_text="UPGRADES"
hangar_btn_2.image_index=1

var hangar_btn_3 = instance_create_depth(0,0,depth-1,button_hangar)
hangar_btn_3.x = start_length + total_length / (number_btn-1) * 3;
hangar_btn_3.y = first_layer_buttons;
hangar_btn_3.button_sprite=button_default_spr;
hangar_btn_3.button_text="SKILLTREE"
hangar_btn_3.image_index=1

var hangar_btn_4 = instance_create_depth(0,0,depth-1,button_hangar)
hangar_btn_4.x = start_length + total_length / (number_btn-1) * 4;
hangar_btn_4.y = first_layer_buttons;
hangar_btn_4.button_sprite=button_default_spr;
hangar_btn_4.button_text="GG PORTALS"
hangar_btn_4.image_index=1