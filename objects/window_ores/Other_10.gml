///@description draw buttons above
var start_length, end_length, total_length, number_btn, first_layer_buttons;

start_length=590;
end_length=1300;
first_layer_buttons=290;
total_length = end_length-start_length;
number_btn = 4


var hangar_btn_0 = instance_create_depth(0,0,depth-1,button_ores_window)
hangar_btn_0.x = start_length + total_length / (number_btn-1) * 0;
hangar_btn_0.y = first_layer_buttons;
hangar_btn_0.button_sprite=button_default_spr;
hangar_btn_0.button_text="CARGO"
hangar_btn_0.image_index=0

var hangar_btn_1 = instance_create_depth(0,0,depth-1,button_ores_window)
hangar_btn_1.x = start_length + total_length / (number_btn-1) * 1;
hangar_btn_1.y = first_layer_buttons;
hangar_btn_1.button_sprite=button_default_spr;
hangar_btn_1.button_text="STORAGE"
hangar_btn_1.image_index=1

var hangar_btn_2 = instance_create_depth(0,0,depth-1,button_ores_window)
hangar_btn_2.x = start_length + total_length / (number_btn-1) * 2;
hangar_btn_2.y = first_layer_buttons;
hangar_btn_2.button_sprite=button_default_spr;
hangar_btn_2.button_text="TRANSFER"
hangar_btn_2.image_index=1

var hangar_btn_3 = instance_create_depth(0,0,depth-1,button_ores_window)
hangar_btn_3.x = start_length + total_length / (number_btn-1) * 3;
hangar_btn_3.y = first_layer_buttons;
hangar_btn_3.button_sprite=button_default_spr;
hangar_btn_3.button_text="PIECES"
hangar_btn_3.image_index=1