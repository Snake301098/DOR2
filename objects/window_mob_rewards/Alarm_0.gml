/// @description REFRESH ORES DATA

rewards_table=
[
	[
		streuner_1_spr, 
		global.streuner_reward_ores_index[0,0], global.streuner_reward_ores_index[0,1],
		global.streuner_reward_ores_index[1,0], global.streuner_reward_ores_index[1,1],
		global.streuner_reward_ores_index[2,0], global.streuner_reward_ores_index[2,1]
	],
	
	[
		lordakia_spr, 
		global.lordakia_reward_ores_index[0,0], global.lordakia_reward_ores_index[0,1],
		global.lordakia_reward_ores_index[1,0], global.lordakia_reward_ores_index[1,1],
		global.lordakia_reward_ores_index[2,0], global.lordakia_reward_ores_index[2,1]
	],
	
	[
		sibelon_spr, 
		global.sibelon_reward_ores_index[0,0], global.sibelon_reward_ores_index[0,1],
		global.sibelon_reward_ores_index[1,0], global.sibelon_reward_ores_index[1,1],
		global.sibelon_reward_ores_index[2,0], global.sibelon_reward_ores_index[2,1]
	]
];


alarm[0] = irandom_range(1,2) * room_speed;
