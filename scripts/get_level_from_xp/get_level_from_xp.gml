/// @description
function get_level_from_xp()
{
	var xp = global.experience;
	
	if xp < 10000 return 1;
	if (xp >= 10000 and xp < 20000) return 2;
	if (xp >= 20000 and xp < 40000) return 3;
	if (xp >= 40000 and xp < 80000) return 4;
	if (xp >= 80000 and xp < 160000) return 5;
	if (xp >= 160000 and xp < 320000) return 6;
	if (xp >= 320000 and xp < 640000) return 7;
	if (xp >= 640000 and xp < 1280000) return 8;
	if (xp >= 1280000 and xp < 2560000) return 9;
	if (xp >= 2560000 and xp < 5120000) return 10;
	if (xp >= 5120000 and xp < 10240000) return 11;
	if (xp >= 10240000 and xp < 20480000) return 12;
	if (xp >= 20480000 and xp < 40960000) return 13;
	if (xp >= 40960000 and xp < 81920000) return 14;
	if (xp >= 81920000 and xp < 163840000) return 15;
	if (xp >= 163840000 and xp < 327680000) return 16;
	if (xp >= 327680000 and xp < 655360000) return 17;
	if (xp >= 655360000 and xp < 1310720000) return 18;
	if (xp >= 1310720000 and xp < 2621440000) return 19;
	if (xp >= 2621440000 and xp < 5242880000) return 20;
	if (xp >= 5242880000 and xp < 10485760000) return 21;
	if (xp >= 10485760000 and xp < 20971520000) return 22;
	if (xp >= 20971520000 and xp < 41943040000) return 23;
	if (xp >= 41943040000 and xp < 83886080000) return 24;
	if (xp >= 83886080000 and xp < 167772160000) return 25;
	if (xp >= 167772160000 and xp < 335544320000) return 26;
	if (xp >= 335544320000 and xp < 671088640000) return 27;
	if (xp >= 671088640000 and xp < 1342177280000) return 28;
	if (xp >= 1342177280000 and xp < 2684354560000) return 29;
	if xp >= 2684354560000 return 30;
}