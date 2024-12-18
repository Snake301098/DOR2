/// @description cost label

var _costt = "";
cost_type = info(content,"cost_type")
cost_qty = info(content,"cost_qty")
if cost_type = "credit" then _costt = "C"
if cost_type = "uridium" then _costt = "U"

cost_label = dotString(cost_qty) + " " + _costt
