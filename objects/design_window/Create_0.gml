/// @description Insert description here
// You can write your code in this editor

//SHIPS TO BUY
var cells_start_x, cells_start_y, spacing_x, spacing_y, rows, columns, cell, position, ships_list;

var ship_type = info(gamer.ship_name,"ship_type")
ships_list = [gamer.ship_name]
if ship_type = "goliath" then ships_list=["goliath","bastion","enforcer","centaur","exalted","goal","kick","referee","saturn","veteran","diminisher","sentinel","solace","spectrum","venom"];
if ship_type = "vengeance" then ships_list=["vengeance", "adept","avenger","lightning","revenge", "corsair"];

cells_start_x = 840;
cells_start_y = 370;
spacing_x = 115;
spacing_y = 115;
rows = 4;
columns = 4;
var page_ships = 1	
for (j=1; j<=rows; j+=1)
{
	for (i=1; i<=columns; i+=1)
	{
		//position=i + (j-1) * columns;
		position=(j-1)*columns+i+(page_ships-1)*rows*columns;
		if (position-1)<array_length(ships_list) then
		{
			cell=instance_create_depth(0, 0, depth-1, shop_cell);
			cell.x=cells_start_x+(i-1)*spacing_x
			cell.y=cells_start_y+(j-1)*spacing_y
			cell.position = position;
			cell.content=ships_list[position-1];
			cell.clickable=true;
			cell.category="change_design";
			cell.ownship = get_stats("ownship",ships_list[position-1])
			cell.sprite_index=shop_icons_spr;
		}
	}
}

