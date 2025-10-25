/// @description 

var rows = 5;
var columns = 5;
var position;
for (j=1; j<=rows; j+=1)
{
	for (i=1; i<=columns; i+=1)
	{
		//position=i + (j-1) * columns;
		position=(j-1)*columns+i
		if (position-1)<array_length(stats_list) then
		{
			array_push(profile_stats,dotString(get_stats(stats_names[position-1],ship_selected),k_list[position-1]));
		}
	}
}

