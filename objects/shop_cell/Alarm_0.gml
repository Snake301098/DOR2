///@description image index init
price = info(content, "cost");

switch content
    {
    case "RepCard": {image_index=1; break;}
	case "LF-4": {image_index=19; break;}
    case "x1": {image_index=2; break;}
    case "x2": {image_index=3; break;}
    case "x3": {image_index=4; break;}
    case "x4": {image_index=79; break;}
    case "SPD-1": {image_index=87; cost_qty=25000; cost_type="credit"; break;}
    case "SPD-2": {image_index=86; cost_qty=1000; cost_type="uridium"; break;}
    case "SPD-3": {image_index=5; cost_qty=2000; cost_type="uridium"; break;}
    case "B0-0": {image_index=85; cost_qty=50000; cost_type="credit"; break;}
    case "B0-1": {image_index=29; cost_qty=256000; cost_type="credit"; break;}
    case "goliath_white": {image_index=23; type:="design"; spec_index:=1; break;}
    case "goliath_red": {image_index=21; type:="design"; spec_index:=2; break;}
    case "B0-2": {image_index=6; cost_qty=10000; cost_type="uridium"; break;}
    case "goliath_blue": {image_index=7; type:="design"; spec_index:=4; break;}
    case "goliath_green": {image_index=22; type:="design"; spec_index:=5; break;}    
    case "MP-1": {image_index=26; cost_qty=150000; cost_type="credit"; break;}
    case "x5": {image_index=27; break;}
    case "x6": {image_index=11; break;}    
    case "LF-3": {image_index=9; cost_qty=10000; cost_type="uridium"; break;}
    case "R-310": {image_index=20; break;}
    case "flax": {image_index=40; break;}
    case "iris": {image_index=42; break;} 
    case "apis": {image_index=37; break;}
    case "zeus": {image_index=50; break;} 
    case "phoenix": {image_index=46; break;}
    case "nostromo": {image_index=45; break;} 
    case "leonov": {image_index=43; break;}
    case "bigboy": {image_index=38; break;} 
    case "vengeance": {image_index=48; break;}
    case "avenger": {image_index=51; break;} 
    case "revenge": {image_index=52; break;}
    case "lightning": {image_index=53; break;} 
    case "goliath": {image_index=41; break;}
    case "bastion": {image_index=22; break;} 
    case "enforcer": {image_index=36; break;}
    case "venom": {image_index=23; break;} 
    case "diminisher": {image_index=35; break;}
    case "solace": {image_index=24; break;} 
    case "sentinel": {image_index=16; break;}
    case "spectrum": {image_index=15; break;}   
    case "dhavoc": {image_index=10; break;}
    case "HAVOC": {image_index=10; break;}    
    case "dhercules": {image_index=18; break;}
    case "HERCULES": {image_index=18; break;}
    case "dnormal": {image_index=54; break;}
    //Added 11-5-2013
    case "kick": {image_index=59; break;} 
    case "referee": {image_index=60; break;}
    case "goal": {image_index=58; break;}
    case "adept": {image_index=63; break;}
    case "corsair": {image_index=64; break;}
    case "centaur": {image_index=56; break;}
    case "saturn": {image_index=61; break;}
    case "exalted": {image_index=65; break;}
    case "veteran": {image_index=66; break;}    
    case "citadel": {image_index=57; break;}
    case "aegis": {image_index=55; break;}
    case "spearhead": {image_index=62; break;}    
    //Added 13-5-2013
    case "dcr250": {image_index=67; break;} 
    //Added 31-5-2013
    case "emp": {image_index=68; break;}
    case "ish": {image_index=69; break;}   
    //Added 05-07-2013
    case "eleech": {image_index=70; break;}
    case "shieldbackup": {image_index=71; break;}
    case "warrep": {image_index=72; break;}
    //Boosters
    case "premium_lasers": {image_index=74; break;}
    case "booster_dmg_ext": {image_index=74; break;}
    case "booster_hp_reg": {image_index=75; break;}
    case "booster_hp_ext": {image_index=76; break;}
    case "booster_shd_reg": {image_index=77; break;}
    case "booster_shd_ext": {image_index=78; break;}
    }