// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_quest(i)
{
	var entity = "";
	var progress = 0;
	var total = 0;
	var map = "";
	var reward_qty = 0;
	var reward_type = "";
	var label = "";
	
	entity = choose("mob","mob","player")
	
	if entity = "player"
	{
		map = choose("own","ennemy","pvp","all")
		reward_type = choose("chest_green_key","chest_green_key","chest_gold_key")
		if reward_type = "chest_green_key"
		{
			total = choose(10,25,50)
			if total = 10 then reward_qty = 1
			if total = 25 then reward_qty = 2
			if total = 50 then reward_qty = 3
		}
		else
		{
			total = choose(15,35,75)
			if total = 10 then reward_qty = 1
			if total = 25 then reward_qty = 2
			if total = 50 then reward_qty = 3			
		}
		if map = "pvp" then reward_qty+=1
		if map = "ennemy" then reward_qty+=2
	}
	
		if entity = "mob"
	{
		entity = choose("streuner","lordakia","saimon","mordon","devolarium","sibelon","lordakium","sibelonit","kristallin","kristallon")
		map = choose("own","own","own","ennemy")
		reward_type = "gg_energy"
	
		if entity = "streuner"
		{
			total = choose(30,50,100);
			if total = 30 then reward_qty = 10
			if total = 50 then reward_qty = 20
			if total = 100 then reward_qty = 30
		}
	
		if entity = "lordakia"
		{
			total = choose(30,50,100);
			if total = 30 then reward_qty = 10
			if total = 50 then reward_qty = 20
			if total = 100 then reward_qty = 30
		}
	
		if entity = "saimon"
		{
			total = choose(30,50,100);
			if total = 30 then reward_qty = 15
			if total = 50 then reward_qty = 20
			if total = 100 then reward_qty = 40
		}
	
		if entity = "mordon"
		{
			total = choose(10,30,50);
			if total = 10 then reward_qty = 10
			if total = 30 then reward_qty = 20
			if total = 50 then reward_qty = 40
		}
	
		if entity = "devolarium"
		{
			total = choose(10,20,30);
			if total = 10 then reward_qty = 10
			if total = 20 then reward_qty = 25
			if total = 30 then reward_qty = 50
		}
	
		if entity = "sibelon"
		{
			total = choose(10,20,30);
			if total = 10 then reward_qty = 15
			if total = 20 then reward_qty = 30
			if total = 30 then reward_qty = 60
		}
	
		if entity = "lordakium"
		{
			total = choose(10,20,30);
			if total = 10 then reward_qty = 15
			if total = 20 then reward_qty = 25
			if total = 30 then reward_qty = 50
		}
	
		if entity = "sieblonit"
		{
			total = choose(20,40,60);
			if total = 20 then reward_qty = 15
			if total = 40 then reward_qty = 25
			if total = 60 then reward_qty = 50
		}
	
		if entity = "kristallin"
		{
			total = choose(20,40,60);
			if total = 10 then reward_qty = 15
			if total = 20 then reward_qty = 25
			if total = 30 then reward_qty = 50
		}
	
	
		if entity = "kristallon"
		{
			total = choose(10,20,30);
			if total = 10 then reward_qty = 20
			if total = 20 then reward_qty = 40
			if total = 30 then reward_qty = 60
		}
	
		if entity = "streunerR"
		{
			total = choose(20,40,60);
			if total = 10 then reward_qty = 10
			if total = 20 then reward_qty = 20
			if total = 30 then reward_qty = 30
		}
	
	
		if map = "ennemy" or map = "pvp" then reward_qty*=2
	}
	
	
	//Quest1
	if i = 1
	{
		global.quest1_entity = entity
		global.quest1_progress = progress
		global.quest1_total = total
		global.quest1_map = map
		global.quest1_reward_qty = reward_qty
		global.quest1_reward_type = reward_type
	}
	
	//Quest2
	if i = 2
	{
		global.quest2_entity = entity
		global.quest2_progress = progress
		global.quest2_total = total
		global.quest2_map = map
		global.quest2_reward_qty = reward_qty
		global.quest2_reward_type = reward_type
	}
	
	//Quest3
	if i = 3
	{
		global.quest3_entity = entity
		global.quest3_progress = progress
		global.quest3_total = total
		global.quest3_map = map
		global.quest3_reward_qty = reward_qty
		global.quest3_reward_type = reward_type
	}
	
	build_quest_label(i)
}