///@description laser attack
scale=global.scale
scale=0.52
xdec=-50;
ydec=0;
soundindex=x1_sound;
if laserlvlmin=1 then soundindex=x1_sound;
if laserlvlmin=2 then soundindex=x2_sound;
if laserlvlmin=3 then soundindex=x3_sound;
if laserlvlmin=4 then soundindex=x4_sound;
if laserlvlmin=5 then soundindex=x5_sound;

if distance_to_object(gamer) < 600 or distance_to_object(gamer) > 100000 then audio_play_sound(soundindex,1,false);

/*
if lasers>=1 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
    ii = instance_create_depth(x+xdec,y+ydec,-1,laser_ship);
    ii.speed = global.laser_speed;
    ii.target:=target; ii.owner:=id; ii.myOwner=id;	
	ii.damage = MaxDamageLaser;
	ii.critical_hit = critical_hit;
	ii.drawDamage=true; ii.level=laserlvlmin; 
	}
	
	*/
if lasers>=1 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
    ii = instance_create_depth(x+lengthdir_x(30*scale,image_angle)+xdec,y+lengthdir_y(27*scale,image_angle)+ydec,-1,laser_ship);
    ii.speed = global.laser_speed;
    ii.target:=target; ii.owner:=id; ii.myOwner=id;	
	ii.damage = MaxDamageLaser;
	ii.critical_hit = critical_hit;
	ii.drawDamage=true; ii.level=laserlvlmin; 
	}
if lasers>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
    //Ñîçäàíèå ïåðâîãî ëàçåðà.
    ii = instance_create_depth(x+lengthdir_x(68.10*scale,image_angle+29.54)+xdec,y+lengthdir_y(68.10*scale,image_angle+29.54)+ydec,-1,laser_ship);
    ii.speed = global.laser_speed;
    ii.target:=target; ii.owner:=id; ii.myOwner=id; ii.drawDamage=false; ii.level=laserlvlmin;
	}
	if lasers>=3 then {
    //Ñîçäàíèå âòîðîãî ëàçåðà.
    ii = instance_create_depth(x+lengthdir_x(70.71*scale,image_angle-28.74)+xdec,y+lengthdir_y(70.71*scale,image_angle-28.74)+ydec,-1,laser_ship);
    ii.speed = global.laser_speed;
    ii.target:=target; ii.owner:=id; ii.myOwner=id;
    ii.damage:=0; ii.drawDamage=false; ii.level=laserlvlmin;}
if lasers>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
    //Ñîçäàíèå ïåðâîãî ëàçåðà.
    ii = instance_create_depth(x+lengthdir_x(34.48*scale,image_angle+119.54)+xdec,y+lengthdir_y(34.48*scale,image_angle+119.54)+ydec,-1,laser_ship);
    ii.speed = global.laser_speed;
    ii.target:=target; ii.owner:=id; ii.myOwner=id; ii.drawDamage=false; ii.level=laserlvlmin;
    //Ñîçäàíèå âòîðîãî ëàçåðà.
	}
if lasers>=5 then {
    ii = instance_create_depth(x+lengthdir_x(32.65*scale,image_angle-117.35)+xdec,y+lengthdir_y(32.65*scale,image_angle-117.35)+ydec,-1,laser_ship);
    ii.speed = global.laser_speed;
    ii.target:=target; ii.owner:=id; ii.myOwner=id;
    ii.damage:=0; ii.drawDamage=false; ii.level=laserlvlmin;}