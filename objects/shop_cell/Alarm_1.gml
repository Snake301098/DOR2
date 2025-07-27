/// @description cost label
var lvl=1
var _costt = "";
if content = "iris"
{
	var nbr_iris = 0
	for(var i=1; i<=10;i++)
	{
		if gamer.droid[i,1] = "iris" then nbr_iris++
	}
	lvl = nbr_iris+1
}

if content = "flax"
{
	var nbr_flax = 0
	for(var i=1; i<=10;i++)
	{
		if gamer.droid[i,1] = "flax" then nbr_flax++
	}
	lvl = nbr_flax+1
}

if content = "apis"
{
	cost_type = "drone_parts"
	cost_qty = global.apis_cost
	cost_label = string(global.droid_parts) + "/" + string(cost_qty) + " drone parts";
	exit;
}

if content = "zeus"
{
	cost_type = "drone_parts"
	cost_qty = global.zeus_cost
	cost_label = string(global.droid_parts) + "/" + string(cost_qty) + " drone parts";
	exit;
}
cost_type = info(content,"cost_type")
cost_qty = info(content,"cost_qty",lvl)
if cost_type = "credit" then _costt = "C"
if cost_type = "uridium" then _costt = "U"

cost_label = dotString(cost_qty) + " " + _costt
