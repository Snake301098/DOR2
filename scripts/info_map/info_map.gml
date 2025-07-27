function info_map(_room,info_to_get=""){
//argument0 is useless
//Let"s make some stuff, yeeeyyy :D
/************************************************
                MAPS
*************************************************/
switch _room
    {
    case lv1_1:
        switch info_to_get
            {
            case "owners": return 0; break;
            case "pvp": return false break;
            case "name": return "1-1" break;
            }
        break;
    case lv1_2:
        switch info_to_get
            {
            case "owners": return 0; break;
            case "pvp": return false break;
            case "name": return "1-2" break;
            }
        break;
    case lv1_3:
        switch info_to_get
            {
            case "owners": return 0; break;
            case "pvp": return false break;
            case "name": return "1-3" break;
            }
        break;
    case lv1_4:
        switch info_to_get
            {
            case "owners": return 0; break;
            case "pvp": return false break;
            case "name": return "1-4" break;
            }
        break;
    case lv1_5:
        switch info_to_get
            {
            case "owners": return 0; break;
            case "pvp": return false break;
            case "name": return "1-5" break;
            }
        break;
    case lv1_6:
        switch info_to_get
            {
            case "owners": return 0; break;
            case "pvp": return false break;
            case "name": return "1-6" break;
            }
        break;
    case lv1_7:
        switch info_to_get
            {
            case "owners": return 0; break;
            case "pvp": return false break;
            case "name": return "1-7" break;
            }
        break;
    case lv1_8:
        switch info_to_get
            {
            case "owners": return 0; break;
            case "pvp": return false break;
            case "name": return "1-8" break;
            }
        break;            
    case lv2_1:
        switch info_to_get
            {
            case "owners": return 1; break;
            case "pvp": return false break;
            case "name": return "2-1" break;
            }
        break;
    case lv2_2:
        switch info_to_get
            {
            case "owners": return 1; break;
            case "pvp": return false break;
            case "name": return "2-2" break;
            }
        break;
    case lv2_3:
        switch info_to_get
            {
            case "owners": return 1; break;
            case "pvp": return false break;
            case "name": return "2-3" break;
            }
        break;
    case lv2_4:
        switch info_to_get
            {
            case "owners": return 1; break;
            case "pvp": return false break;
            case "name": return "2-4" break;
            }
        break;
    case lv2_5:
        switch info_to_get
            {
            case "owners": return 1; break;
            case "pvp": return false break;
            case "name": return "2-5" break;
            }
        break;
    case lv2_6:
        switch info_to_get
            {
            case "owners": return 1; break;
            case "pvp": return false break;
            case "name": return "2-6" break;
            }
        break;
    case lv2_7:
        switch info_to_get
            {
            case "owners": return 1; break;
            case "pvp": return false break;
            case "name": return "2-7" break;
            }
        break;
    case lv2_8:
        switch info_to_get
            {
            case "owners": return 1; break;
            case "pvp": return false break;
            case "name": return "2-8" break;
            }
        break;            
    case lv3_1:
        switch info_to_get
            {
            case "owners": return 2; break;
            case "pvp": return false break;
            case "name": return "3-1" break;
            }
        break;
    case lv3_2:
        switch info_to_get
            {
            case "owners": return 2; break;
            case "pvp": return false break;
            case "name": return "3-2" break;
            }
        break;
    case lv3_3:
        switch info_to_get
            {
            case "owners": return 2; break;
            case "pvp": return false break;
            case "name": return "3-3" break;
            }
        break;
    case lv3_4:
        switch info_to_get
            {
            case "owners": return 2; break;
            case "pvp": return false break;
            case "name": return "3-4" break;
            }
        break;
    case lv3_5:
        switch info_to_get
            {
            case "owners": return 2; break;
            case "pvp": return false break;
            case "name": return "3-5" break;
            }
        break;
    case lv3_6:
        switch info_to_get
            {
            case "owners": return 2; break;
            case "pvp": return false break;
            case "name": return "3-6" break;
            }
        break;
    case lv3_7:
        switch info_to_get
            {
            case "owners": return 2; break;
            case "pvp": return false break;
            case "name": return "3-7" break;
            }
        break;
    case lv3_8:
        switch info_to_get
            {
            case "owners": return 2; break;
            case "pvp": return false break;
            case "name": return "3-8" break;
            }
        break;            
    case lv4_1:
        switch info_to_get
            {
            case "owners": return 0; break;
            case "pvp": return true break;
            case "name": return "4-1" break;
            }
        break;
    case lv4_2:
        switch info_to_get
            {
            case "owners": return 1; break;
            case "pvp": return true break;
            case "name": return "4-2" break;
            }
        break;
    case lv4_3:
        switch info_to_get
            {
            case "owners": return 2; break;
            case "pvp": return true break;
            case "name": return "4-3" break;
            }
        break;
    case lv4_4:
        switch info_to_get
            {
            case "owners": return 3; break;
            case "pvp": return true break;
            case "name": return "4-4" break;
            }
        break;
    /*   case chaos:
        switch info_to_get
            {
            case "owners": return 3; break;
            case "pvp": return true break;
            case "name": return "CHAOS" break;
            }
        break;*/
    case lv4_5:
        switch info_to_get
            {
            case "owners": return 3; break;
            case "pvp": return true break;
            case "name": return "4-5" break;
            }
        break;   
    case TDM:
        switch info_to_get
            {
            case "owners": return 3; break;
            case "pvp": return true break;
            case "name": return "CONTROL" break;
            }
        break;    
    case arena:
        switch info_to_get
            {
            case "owners": return 3; break;
            case "pvp": return true break;
            case "name": return "ARENA" break;
            }
        break;  
	case GGA:
        switch info_to_get
            {
            case "owners": return 3; break;
            case "pvp": return true break;
            case "name": return "GGA" break;
            }
        break; 
	case GGB:
        switch info_to_get
            {
            case "owners": return 3; break;
            case "pvp": return true break;
            case "name": return "GGB" break;
            }
        break; 
	case GGD:
        switch info_to_get
            {
            case "owners": return 3; break;
            case "pvp": return true break;
            case "name": return "GGD" break;
            }
        break; 
	case GGY:
        switch info_to_get
            {
            case "owners": return 3; break;
            case "pvp": return true break;
            case "name": return "GGG" break;
            }
        break; 
    }
}