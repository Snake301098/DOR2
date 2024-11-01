/// @description SET ORES REWARDS MOBS

//if is 1, it's a special reward so more qty for the ores received
function special_ores(){return(choose(0,0,0,0,0,0,0,0,0,1));}

//[[index of ores, is it special ores or not], [], []]
//[main reward, potential 2nd reward, potential 3rd reward]
// main reward for mob low is ores low, 2nd reward is ores medium and 3rd reward is ores high
// main reward for mob medium is ores medium, 2nd reward is ores low and 3rd reward is ores high
// main reward for mob high is ores high, 2nd reward is ores medium and 3rd reward is ores low

//LOW MOBS
global.streuner_reward_ores_index = [[choose(0,1,2), special_ores()],[choose(3,4,5),special_ores()],[choose(6,7),special_ores()]];
global.lordakia_reward_ores_index = [[choose(0,1,2), special_ores()],[choose(3,4,5),special_ores()],[choose(6,7),special_ores()]];

//MEDIUM MOBS


//HIGH MOBS
global.sibelon_reward_ores_index = [[choose(6,7), special_ores()],[choose(3,4,5),special_ores()],[choose(0,1,2),special_ores()]];






alarm[0] = irandom_range(60*5,60*10) * room_speed;

