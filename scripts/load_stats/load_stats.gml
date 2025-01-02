/// @description
function load_stats()
{
	var table = load_csv("stats.csv")
	show_message(table[# 0,2])
	show_message(table[# 1,0])
}