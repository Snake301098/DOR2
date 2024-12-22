function load_quests()
{
	ini_open("quests.txt");
	
	//Quest1
	global.quest1_entity = ini_read_string("1","entity","unnamed");
	global.quest1_progress = ini_read_real("1","progress",0);
	global.quest1_total = ini_read_real("1","total",0);
	global.quest1_map = ini_read_string("1","map","unnamed");
	global.quest1_reward_qty = ini_read_real("1","reward_qty",0);
	global.quest1_reward_type = ini_read_string("1","reward_type","unnamed");
	global.quest1_label = "";
	
	if global.quest1_entity = "" or global.quest1_entity = "unnamed" then create_quest(1)
	
	//Quest2
	global.quest2_entity = ini_read_string("2","entity","unnamed");
	global.quest2_progress = ini_read_real("2","progress",0);
	global.quest2_total = ini_read_real("2","total",0);
	global.quest2_map = ini_read_string("2","map","unnamed");
	global.quest2_reward_qty = ini_read_real("2","reward_qty",0);
	global.quest2_reward_type = ini_read_string("2","reward_type","unnamed");
	global.quest2_label = "";
	
	if global.quest2_entity = "" or global.quest2_entity = "unnamed" then create_quest(2)
	
	//Quest3
	global.quest3_entity = ini_read_string("3","entity","unnamed");
	global.quest3_progress = ini_read_real("3","progress",0);
	global.quest3_total = ini_read_real("3","total",0);
	global.quest3_map = ini_read_string("3","map","unnamed");
	global.quest3_reward_qty = ini_read_real("3","reward_qty",0);
	global.quest3_reward_type = ini_read_string("3","reward_type","unnamed");
	global.quest3_label = "";
	
	if global.quest3_entity = "" or global.quest3_entity = "unnamed" then create_quest(3)
	
	build_quest_label(1);
	
	ini_close();
}