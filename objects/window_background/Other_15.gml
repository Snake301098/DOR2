/// @description Upgrade process
var selected_id = -1
with(inv_cell)
{
	if selected=true then selected_id = id;
}

if selected_id > 0 then
{
	var _content = selected_id.content;
	var _name = info_weapons(_content,"weapon_name")
	var _level = info_weapons(_content,"level")
	var _level_sup = info_weapons(_name + "_" + string(_level+1),"level")
	var _content_sup = "";
	if _level_sup > 0
	{
		_content_sup = _name + "_" + string(_level+1)
	}
	else
	{
		show_message("Item already level max!");
		exit;
	}
	
	if global.ores_qty[cost1_type] < cost1_amount or global.ores_qty[cost2_type] < cost2_amount or global.ores_qty[cost3_type] < cost3_amount
	{
		show_message("Resources not sufficient");
		exit;
	}
	
	//CAN UPGRADE HERE
	global.ores_qty[cost1_type] -= cost1_amount;
	global.ores_qty[cost2_type] -= cost2_amount;
	global.ores_qty[cost3_type] -= cost3_amount;
	selected_id.content = _content_sup;
	if selected_id.category = "lasers" then gamer.Laser[selected_id.position] = _content_sup;
	if selected_id.category = "guns" then gamer.Gun[selected_id.position] = _content_sup;
	if selected_id.category = "inventory" then gamer.Inventory[selected_id.position] = _content_sup;
	 
	show_message(_name + " upgraded from level " + string(_level) + " to level " + string(_level_sup) + "!");
}
else
{
	show_message("Select an item to upgrade")
}