///@description image index init
price = info(content, "cost");

switch content
    {
	    case "ship_hull_i": {image_index=19; name="Ship hull I"; cost=50; owning=gamer.ship_hull_i; break;}
	    case "ship_hull_ii": {image_index=20; name="Ship Hull II"; cost_qty=150; owning=gamer.ship_hull_ii; break;}
	    case "shield_engineering": {image_index=18; name="Shield Engineering"; cost_qty=150; owning=gamer.shield_engineering; break;}
	    case "engineering": {image_index=13; name="Engineering"; cost_qty=150; owning=gamer.engineering; break;}
	    case "bounty_hunter_i": {image_index=25; name="Bounty Hunter I"; cost_qty=150; owning=gamer.bounty_hunter_i; break;}
	    case "bounty_hunter_ii": {image_index=26; name="Bounty Hunter II"; cost_qty=150; owning=gamer.bounty_hunter_ii; break;}
	    case "alien_hunter": {image_index=12; name="Alien Hunter"; cost_qty=150; owning=gamer.alien_hunter; break;}
	    case "greed": {image_index=11; name="Greed"; cost_qty=150; owning=gamer.greed; break;}
	    case "luck_i": {image_index=27; name="Luck I"; cost_qty=150; owning=gamer.luck_i; break;}
	    case "luck_ii": {image_index=28; name="Luck II"; cost_qty=150; owning=gamer.luck_ii; break;}
	    case "cruelty_i": {image_index=23; name="Cruelty I"; cost_qty=150; owning=gamer.cruelty_i; break;}
	    case "cruelty_ii": {image_index=24; name="Cruelty II"; cost_qty=150; owning=gamer.cruelty_ii; break;}
	    case "evasive_i": {image_index=16; name="Evasive I"; cost_qty=150; owning=gamer.evasive_i; break;}
	    case "evasive_ii": {image_index=17; name="Evasive II"; cost_qty=150; owning=gamer.evasive_ii; break;}
	    case "electro_optics": {image_index=21; name="Electro Optics"; cost_qty=150; owning=gamer.electro_optics; break;}
	    case "shield_mechanics": {image_index=10; name="Shield Metchanics"; cost_qty=150; owning=gamer.shield_mechanics; break;}
	    case "smb_upgrade": {image_index=7; name="SMB Upgrade"; cost_qty=150; owning=gamer.smb_upgrade; break;}
	    case "ish_upgrade": {image_index=22; name="ISH Upgrade"; cost_qty=150; owning=gamer.ish_upgrade; break;}
	    case "shieldbackup_upgrade": {image_index=5; name="Shield Backup Upgrade"; cost_qty=150; owning=gamer.shieldbackup_upgrade; break;}
	    case "warrep_upgrade": {image_index=6; name="Warrep Upgrade"; cost_qty=150; owning=gamer.warrep_upgrade; break;}
    }