/// @description BETA

switch wave
{
	case 1:
	{
		spawn_mob(streuner,,,40);
		break;
	}
	
	case 2:
	{
		spawn_mob(lordakia,,,40);
		break;
	}
	
	case 3:
	{
		spawn_mob(mordon,,,40);
		break;
	}
	
	case 4:
	{
		spawn_mob(saimon,,,80);
		break;
	}
	
	case 5:
	{
		spawn_mob(devolarium,,,20);
		break;
	}
	
	case 6:
	{
		spawn_mob(kristallin,,,80);
		break;
	}
	
	case 7:
	{
		spawn_mob(sibelon,,,16);
		break;
	}
	
	case 8:
	{
		spawn_mob(sibelonit,,,80);
		break;
	}
	
	case 9:
	{
		spawn_mob(kristallon,,,16);
		break;
	}
	
	case 10:
	{
		spawn_mob(lordakium,,,1);
		break;
	}
	
}


alarm[0] = 1;



//OLD DN
/*
var gg_room_width = 2080;
var gg_room_height = 1300;

var enemy_corps = [1,2];
if gamer.corporation = 1 then enemy_corps = [0,2];
if gamer.corporation = 2 then enemy_corps = [0,1];

switch wave
{
	case 1:
	{
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),choose(enemy_corps[0],enemy_corps[1]),"battle",1,"goliath",3,0);
		break;
	}
	
	case 2:
	{
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),choose(enemy_corps[0],enemy_corps[1]),"battle",1,"goliath",4,0);
		break;
	}
	
	case 3:
	{
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),choose(enemy_corps[0],enemy_corps[1]),"battle",1,"goliath",5,0);
		break;
	}
	
	case 4:
	{
		var enemy_corp = choose(enemy_corps[0],enemy_corps[1]);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp,"battle",1,"goliath",4,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp,"battle",1,"goliath",4,0);
		
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),gamer.corporation,"healer",1,"aegis",4,0);
		break;
	}
	
	case 5:
	{
		var enemy_corp = choose(enemy_corps[0],enemy_corps[1]);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp,"battle",1,"goliath",5,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp,"battle",1,"goliath",5,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp,"battle",1,"goliath",5,0);
		
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),gamer.corporation,"healer",1,"aegis",4,0);
		break;
	}
	
	case 6:
	{
		var enemy_corp = choose(enemy_corps[0],enemy_corps[1]);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp,"battle",1,"goliath",4,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp,"battle",1,"goliath",4,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp,"healer",1,"aegis",4,0);
		
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),gamer.corporation,"battle",1,"goliath",3,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),gamer.corporation,"healer",1,"aegis",4,0);
		break;
	}
	
	case 7:
	{
		var enemy_corp_1 = enemy_corps[0];
		var enemy_corp_2 = enemy_corps[1];
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_1,"battle",1,"goliath",4,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_1,"battle",1,"goliath",4,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_1,"healer",1,"aegis",4,0);
		
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_2,"battle",1,"goliath",4,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_2,"battle",1,"goliath",4,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_2,"healer",1,"aegis",4,0);
		
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),gamer.corporation,"battle",1,"goliath",4,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),gamer.corporation,"healer",1,"aegis",4,0);
		break;
	}
	
	case 8:
	{
		var enemy_corp_1 = enemy_corps[0];
		var enemy_corp_2 = enemy_corps[1];
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_1,"battle",1,"citadel",3,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_1,"battle",1,"goliath",3,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_1,"battle",1,"goliath",3,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_1,"battle",1,"vengeance",3,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_1,"healer",1,"aegis",3,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_1,"healer",1,"aegis",3,0);
		
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_2,"battle",1,"citadel",3,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_2,"battle",1,"goliath",3,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_2,"battle",1,"goliath",3,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_2,"battle",1,"vengeance",3,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_2,"healer",1,"aegis",3,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_2,"healer",1,"aegis",3,0);
		
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),gamer.corporation,"battle",1,"citadel",3,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),gamer.corporation,"battle",1,"goliath",3,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),gamer.corporation,"battle",1,"vengeance",3,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),gamer.corporation,"healer",1,"aegis",3,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),gamer.corporation,"healer",1,"aegis",3,0);
		break;
	}
	
	case 9:
	{
		var enemy_corp_1 = enemy_corps[0];
		var enemy_corp_2 = enemy_corps[1];
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_1,"battle",1,"citadel",4,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_1,"battle",1,"goliath",4,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_1,"battle",1,"goliath",4,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_1,"battle",1,"vengeance",4,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_1,"healer",1,"aegis",4,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_1,"healer",1,"aegis",4,0);
		
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_2,"battle",1,"citadel",4,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_2,"battle",1,"goliath",4,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_2,"battle",1,"goliath",4,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_2,"battle",1,"vengeance",4,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_2,"healer",1,"aegis",4,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_2,"healer",1,"aegis",4,0);
		
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),gamer.corporation,"battle",1,"citadel",4,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),gamer.corporation,"battle",1,"goliath",4,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),gamer.corporation,"battle",1,"vengeance",4,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),gamer.corporation,"healer",1,"aegis",4,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),gamer.corporation,"healer",1,"aegis",4,0);
		break;
	}

	case 10:
	{
		var enemy_corp_1 = enemy_corps[0];
		var enemy_corp_2 = enemy_corps[1];
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_1,"battle",1,"citadel",5,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_1,"battle",1,"goliath",5,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_1,"battle",1,"goliath",5,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_1,"battle",1,"vengeance",5,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_1,"healer",1,"aegis",5,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_1,"healer",1,"aegis",5,0);
		
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_2,"battle",1,"citadel",5,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_2,"battle",1,"goliath",5,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_2,"battle",1,"goliath",5,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_2,"battle",1,"vengeance",5,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_2,"healer",1,"aegis",5,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),enemy_corp_2,"healer",1,"aegis",5,0);
		
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),gamer.corporation,"battle",1,"citadel",5,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),gamer.corporation,"battle",1,"goliath",5,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),gamer.corporation,"battle",1,"vengeance",5,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),gamer.corporation,"healer",1,"aegis",5,0);
		spawn_ship(irandom_range(100,gg_room_width-100),irandom_range(100,gg_room_height-100),gamer.corporation,"healer",1,"aegis",5,0);
		break;
	}
}

with(ship){alarm[0]=random_range(10,20); alarm[1]=random_range(25,45);}


