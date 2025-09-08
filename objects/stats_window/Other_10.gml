/// @description DRAW ABOVE BUTTONS
var start_length, end_length, total_length, number_btn, first_layer_buttons;

//x=gamer.x
//y=gamer.y
instance_destroy(stats_ships_icon)
instance_destroy(button_left_right)


//DRAW SHIPS
var cells_start_x, cells_start_y, spacing_x, spacing_y, rows, columns, cell, position, cell_position;
var cells_start_x = 370;
var cells_start_y = 320;
var spacing_x = 110;
var spacing_y = 110;
var rows = 5;
var columns = 2;
	
//SHIPS TO BUY
var ships_list = ["bad_ships","vengeances","goliaths","new_gens","phoenix","nostromo","leonov","bigboy","vengeance","adept","avenger","lightning","revenge","corsair","goliath","bastion","enforcer","centaur","exalted","goal","kick","referee","saturn","veteran","diminisher","sentinel","solace","spectrum","venom","spearhead","aegis","citadel"];
var owned_list = [1,0,0] 
	
	
for (j=1; j<=rows; j+=1)
{
	for (i=1; i<=columns; i+=1)
	{
		//position=i + (j-1) * columns;
		position=(j-1)*columns+i+(page_ships1-1)*rows*columns;
		if (position-1)<array_length(ships_list) then
		{
			cell=instance_create_depth(0, 0, depth-1, stats_ships_icon);
			cell.x=cells_start_x+(i-1)*spacing_x
			cell.y=cells_start_y+(j-1)*spacing_y
			//cell.position = position;
			cell.ship_name=ships_list[position-1];
			cell.clickable=true;
			cell.owned=1//owned_list[position-1];
		}
	}
}
				
				
//LEFT RIGHT BUTTONS
var left_btn=instance_create_depth(0,0,depth-5,button_left_right);
left_btn.category = "ships_stats"
left_btn.x=370+100/2;
left_btn.y=200;
if page_ships1<=1 then left_btn.image_index=0 else left_btn.image_index=1;
left_btn.btn_direction="up";
				
var right_btn=instance_create_depth(0,0,depth-5,button_left_right);
right_btn.category = "ships_stats"
right_btn.x=370+100/2;
right_btn.y=840;
if page_ships1>=4 then right_btn.image_index=0 else right_btn.image_index=1;
right_btn.btn_direction="down";


//DRAW ABOVE BUTTONS
start_length=700;
end_length=1490;
first_layer_buttons=170;
total_length = end_length-start_length;
number_btn = 5


var hangar_btn_0 = instance_create_depth(0,0,depth-1,button_hangar)
hangar_btn_0.x = start_length + total_length / (number_btn-1) * 0;
hangar_btn_0.y = first_layer_buttons;
hangar_btn_0.button_sprite=button_default_spr;
hangar_btn_0.button_text="PROFILE"
hangar_btn_0.image_index=0
hangar_btn_0.window="stats"

var hangar_btn_1 = instance_create_depth(0,0,depth-1,button_hangar)
hangar_btn_1.x = start_length + total_length / (number_btn-1) * 1;
hangar_btn_1.y = first_layer_buttons;
hangar_btn_1.button_sprite=button_default_spr;
hangar_btn_1.button_text="PVP"
hangar_btn_1.image_index=1
hangar_btn_1.window="stats"

var hangar_btn_2 = instance_create_depth(0,0,depth-1,button_hangar)
hangar_btn_2.x = start_length + total_length / (number_btn-1) * 2;
hangar_btn_2.y = first_layer_buttons;
hangar_btn_2.button_sprite=button_default_spr;
hangar_btn_2.button_text="PVE"
hangar_btn_2.image_index=1
hangar_btn_2.window="stats"

var hangar_btn_3 = instance_create_depth(0,0,depth-1,button_hangar)
hangar_btn_3.x = start_length + total_length / (number_btn-1) * 3;
hangar_btn_3.y = first_layer_buttons;
hangar_btn_3.button_sprite=button_default_spr;
hangar_btn_3.button_text="AMMOS"
hangar_btn_3.image_index=1
hangar_btn_3.window="stats"

var hangar_btn_4 = instance_create_depth(0,0,depth-1,button_hangar)
hangar_btn_4.x = start_length + total_length / (number_btn-1) * 4;
hangar_btn_4.y = first_layer_buttons;
hangar_btn_4.button_sprite=button_default_spr;
hangar_btn_4.button_text="GG & TDM"
hangar_btn_4.image_index=1
hangar_btn_4.window="stats"



