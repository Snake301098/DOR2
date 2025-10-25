function save_quests()
{
	ini_open("quests.txt");
	
	//Quest1
	ini_write_string("1","entity",global.quest1_entity)
	ini_write_real("1","progress",global.quest1_progress)
	ini_write_real("1","total",global.quest1_total)
	ini_write_string("1","map",global.quest1_map)
	ini_write_real("1","reward_qty",global.quest1_reward_qty)
	ini_write_string("1","reward_type",global.quest1_reward_type)
	
	//Quest2
	ini_write_string("2","entity",global.quest2_entity)
	ini_write_real("2","progress",global.quest2_progress)
	ini_write_real("2","total",global.quest2_total)
	ini_write_string("2","map",global.quest2_map)
	ini_write_real("2","reward_qty",global.quest2_reward_qty)
	ini_write_string("2","reward_type",global.quest2_reward_type)
	
	//Quest3
	ini_write_string("3","entity",global.quest3_entity)
	ini_write_real("3","progress",global.quest3_progress)
	ini_write_real("3","total",global.quest3_total)
	ini_write_string("3","map",global.quest3_map)
	ini_write_real("3","reward_qty",global.quest3_reward_qty)
	ini_write_string("3","reward_type",global.quest3_reward_type)
	
	ini_close();
}