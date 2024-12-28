/// @description SKILLTREE BUY
if buy_qty<1 then exit;
else
{
	//AMMOS
	if active_side_tab = "SKILLTREE" then
	{
		var selected_id = -1
		with(skilltree_cell)
		{
			if selected=true then selected_id = id;
		}

		if selected_id > 0 then
		{
			if show_question("Are you sure you want to buy this item?") then
			{
				var _content = selected_id.content;
				var _name =_content
				
				//AJOUTER CONDITIONS DE ASSEZ LOGFILE + GENRE ON PEUT PAS PRENDRE NIVEAU 2 SI PAS NIVEAU 1 COMPLETED

				if cost_type = "credit"
				{
					if global.credit < cost_qty*buy_qty
					{
						show_message("Not enough credits");
						exit;
					}
					else
					{
						global.credit-=cost_qty*buy_qty
					}
				}
					
				if cost_type = "uridium" 
				{
					if global.uridium < cost_qty*buy_qty
					{
						show_message("Not enough uridium");
						exit;
					}
					else
					{
						global.uridium-=cost_qty*buy_qty
					}
				}
					
				if _content = "x1" then global.x1+=buy_qty
				else if _content = "x2" then global.x2+=buy_qty
				else if _content = "x3" then global.x3+=buy_qty
				else if _content = "x4" then global.x4+=buy_qty
				else if _content = "x5" then global.x5+=buy_qty
				else if _content = "x6" then global.x6+=buy_qty
				else if _content = "emp" then global.emp+=buy_qty
				else if _content = "ish" then global.ish+=buy_qty
					
				show_message(_name + " was bought sucessfully!");
			}
			else
			{
				exit
			}
		} else show_message("Select an item to buy");
	}
}

var buff = compute_skilltree_price()
skilltree_points = buff[0]			
skilltree_cost = buff[1]	