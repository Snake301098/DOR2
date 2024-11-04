///@description laser attack
//Ñêðèïò, êîòîðûé îòâå÷àåò çà ñîçäàíèå è äâèæåíèå ëàçåðîâ.
var a,ii,i;
var xdec = 0;
var ydec = 0;
if id = gamer.id then {xdec=-50;ydec=-3}
MaxDamage = 15000

//Îòêëþ÷åíèå ÁÇ
v_zone_bz:=false;
//Âûñòðåë âûáðàííûì òèïîì ëàçåðà
if instance_exists(target)
{
	with(target) a:=distance_to_object(gamer);
	if ((distance_to_object(gamer)<500) or (a<400) or (object_index=gamer)) then {
	    if (point_distance(x+xdec,y+ydec,gamer.x+xdec,gamer.y) <= 500)
	        {
				a:=audio_play_sound(x4_sound,1,false);
	        }
		}
			
	//SAB AMMO.
	if id=1 //ammo[0,0]=5 then
	{
	    ii = instance_create_depth(gamer.target.x+xdec,gamer.target.y+ydec,0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);
	}
	else
	{ //NOT SAB
		if Ship = "phoenix" or Ship = "spearhead"
		{
			ii = instance_create_depth(x+xdec+lengthdir_x(ActivityCtrl.phoenix_gun_place,image_angle),
		    y+ydec+lengthdir_y(ActivityCtrl.phoenix_gun_place,image_angle),0,ammo_ship);
		    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
		    ii.speed = global.laser_speed;
		    ii.target:=target; ii.owner:=id; ii.myOwner=id;
		    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);
		}
		else
		{
			var laser_1,laser_2,laser_3,laser_4,laser_5,blust_1,blust_2,blust_3,blust_4,blust_5;
			var dec1a,dec1b,dec2a,dec2b,dec3a,dec3b,dec4a,dec4b,dec5a,dec5b;
			dec1a=0;dec1b=0;dec2a=0;dec2b=0;dec3a=0;dec3b=0;dec4a=0;dec4b=0;dec5a=0;dec5b=0;
			
			if Ship="bigboy" then {dec1a=71;dec1b=0;dec2a=59.67;dec2b=39.56;dec3a=59.67;dec3b=-39.56;dec4a=45.71;dec4b=100;dec5a=45.71;dec5b=-100;}
			if (Ship="nostromo" or Ship="leonov") then {dec1a=73;dec1b=0;dec2a=51.42;dec2b=13.5;dec3a=51.42;dec3b=-13.5;dec4a=37.16;dec4b=13.81;dec5a=37.16;dec5b=-13.81;}
			if Shiptype="vengeance" then {dec1a=94;dec1b=0;dec2a=51.55;dec2b=18;dec3a=51.55;dec3b=-18;dec4a=48.5;dec4b=81.7;dec5a=48.5;dec5b=-81.7;}
			if (Shiptype="goliath" or Ship="citadel" or Ship="aegis") then {dec1a=30;dec1b=0;dec2a=68.10;dec2b=29.54;dec3a=70.71;dec3b=-24.74;dec4a=34.48;dec4b=119.54;dec5a=32.65;dec5b=-117.35;}
			
			var factor = 0.75;
			dec1a=factor*dec1a;dec1b=factor*dec1b;
			dec2a=factor*dec2a;dec2b=factor*dec2b;
			dec3a=factor*dec3a;dec3b=factor*dec3b;
			dec4a=factor*dec4a;dec4b=factor*dec4b;
			dec5a=factor*dec5a;dec5b=factor*dec5b;
			
			var blust_xdec = 20;
			
		    laser_1 = instance_create_depth(x+xdec+lengthdir_x(dec1a,image_angle+dec1b),y+ydec+lengthdir_y(dec1a,image_angle+dec1b),0,ammo_ship);
		    blust_1=instance_create_depth(laser_1.x+blust_xdec,laser_1.y,0,blust); blust_1.owner:=id; with(blust_1) event_user(0);
		    laser_1.speed = global.laser_speed;
		    laser_1.target:=target; laser_1.owner:=id; laser_1.myOwner=id;
		    laser_1.damage = MaxDamage; laser_1.drawDamage=true; with(laser_1) event_user(0);
			
		    laser_2 = instance_create_depth(x+xdec+lengthdir_x(dec2a,image_angle+dec2b),y+ydec+lengthdir_y(dec2a,image_angle+dec2b),0,ammo_ship);
		    blust_2=instance_create_depth(laser_2.x+blust_xdec,laser_2.y,0,blust); blust_2.owner:=id; with(blust_2) event_user(0);
		    laser_2.speed = global.laser_speed;
		    laser_2.target:=target; laser_2.owner:=id; laser_2.myOwner=id;
		    laser_2.damage:=0; laser_2.drawDamage=false;; with(laser_2) event_user(0);
			
		    laser_3 = instance_create_depth(x+xdec+lengthdir_x(dec3a,image_angle+dec3b),y+ydec+lengthdir_y(dec3a,image_angle+dec3b),0,ammo_ship);
		    blust_3=instance_create_depth(laser_3.x+blust_xdec,laser_3.y,0,blust); blust_3.owner:=id; with(blust_3) event_user(0); 
		    laser_3.speed = global.laser_speed;
		    laser_3.target:=target; laser_3.owner:=id; laser_3.myOwner=id;
		    laser_3.damage:=0; laser_3.drawDamage=false;; with(laser_3) event_user(0);
			
		    laser_4 = instance_create_depth(x+xdec+lengthdir_x(dec4a,image_angle+dec4b),y+ydec+lengthdir_y(dec4a,image_angle+dec4b),0,ammo_ship);
		    blust_4=instance_create_depth(laser_4.x+blust_xdec,laser_4.y,0,blust); blust_4.owner:=id; with(blust_4) event_user(0);
		    laser_4.speed = global.laser_speed;
		    laser_4.target:=target; laser_4.owner:=id; laser_4.myOwner=id;
			
		    laser_5 = instance_create_depth(x+xdec+lengthdir_x(dec5a,image_angle+dec5b),y+ydec+lengthdir_y(dec5a,image_angle+dec5b),0,ammo_ship);
		    blust_5=instance_create_depth(laser_5.x+blust_xdec,laser_5.y,0,blust); blust_5.owner:=id; with(blust_5) event_user(0); 
		    laser_5.speed = global.laser_speed;
		    laser_5.target:=target; laser_5.owner:=id; laser_5.myOwner=id;
		    laser_5.damage:=0; laser_5.drawDamage=false; with(laser_5) event_user(0);
		}
	}
}


/*
	//Nostromo
	case "nostromo": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+xdec+lengthdir_x(73,image_angle),y+ydec+lengthdir_y(73,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(51.42,image_angle+13.5),y+ydec+lengthdir_y(51.42,image_angle+13.5),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(51.42,image_angle-13.5),y+ydec+lengthdir_y(51.42,image_angle-13.5),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(37.16,image_angle+13.81),y+ydec+lengthdir_y(37.16,image_angle+13.81),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(37.16,image_angle-13.81),y+ydec+lengthdir_y(37.16,image_angle-13.81),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	//Leonov
	case "leonov": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+xdec+lengthdir_x(73,image_angle),y+ydec+lengthdir_y(73,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(51.42,image_angle+13.5),y+ydec+lengthdir_y(51.42,image_angle+13.5),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(51.42,image_angle-13.5),y+ydec+lengthdir_y(51.42,image_angle-13.5),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(37.16,image_angle+13.81),y+ydec+lengthdir_y(37.16,image_angle+13.81),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(37.16,image_angle-13.81),y+ydec+lengthdir_y(37.16,image_angle-13.81),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}    
	//Phoenix
	case "phoenix": {
	    ii = instance_create_depth(x+xdec+lengthdir_x(ActivityCtrl.phoenix_gun_place,image_angle),
	    y+ydec+lengthdir_y(ActivityCtrl.phoenix_gun_place,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "admin": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     
	    ii = instance_create_depth(x+xdec+lengthdir_x(30,image_angle),y+ydec+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(angel) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   
	    ii = instance_create_depth(x+xdec+lengthdir_x(68.10,image_angle+29.54),y+ydec+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(angel) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);

	    ii = instance_create_depth(x+xdec+lengthdir_x(70.71,image_angle-28.74),y+ydec+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(angel) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //By manulaiko
	    ii = instance_create_depth(x+xdec+lengthdir_x(34.48,image_angle+119.54),y+ydec+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(angel) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //By Manulaiko
	    ii = instance_create_depth(x+xdec+lengthdir_x(32.65,image_angle-117.35),y+ydec+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(angel) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	//Vengeance
	case "vengeance": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+xdec+lengthdir_x(94,image_angle),y+ydec+lengthdir_y(94,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(51.55,image_angle+18),y+ydec+lengthdir_y(51.55,image_angle+18),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(51.55,image_angle-18),y+ydec+lengthdir_y(51,image_angle-18),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(48.50,image_angle+81.70),y+ydec+lengthdir_y(48.50,image_angle+81.70),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(48.50,image_angle-81.70),y+ydec+lengthdir_y(48.50,image_angle-81.70),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	//Avenger
	case "avenger": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+xdec+lengthdir_x(94,image_angle),y+ydec+lengthdir_y(94,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(51.55,image_angle+18),y+ydec+lengthdir_y(51.55,image_angle+18),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(51.55,image_angle-18),y+ydec+lengthdir_y(51,image_angle-18),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(48.50,image_angle+81.70),y+ydec+lengthdir_y(48.50,image_angle+81.70),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(48.50,image_angle-81.70),y+ydec+lengthdir_y(48.50,image_angle-81.70),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}  
	//Revenge
	case "revenge": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+xdec+lengthdir_x(94,image_angle),y+ydec+lengthdir_y(94,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(51.55,image_angle+18),y+ydec+lengthdir_y(51.55,image_angle+18),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(51.55,image_angle-18),y+ydec+lengthdir_y(51,image_angle-18),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(48.50,image_angle+81.70),y+ydec+lengthdir_y(48.50,image_angle+81.70),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(48.50,image_angle-81.70),y+ydec+lengthdir_y(48.50,image_angle-81.70),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	//lightning
	case "lightning": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+xdec+lengthdir_x(94,image_angle),y+ydec+lengthdir_y(94,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(51.55,image_angle+18),y+ydec+lengthdir_y(51.55,image_angle+18),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(51.55,image_angle-18),y+ydec+lengthdir_y(51,image_angle-18),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(48.50,image_angle+81.70),y+ydec+lengthdir_y(48.50,image_angle+81.70),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(48.50,image_angle-81.70),y+ydec+lengthdir_y(48.50,image_angle-81.70),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	//Goliath
	case "goliath": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+xdec+lengthdir_x(30,image_angle),y+ydec+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(68.10,image_angle+29.54),y+ydec+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(70.71,image_angle-28.74),y+ydec+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(34.48,image_angle+119.54),y+ydec+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(32.65,image_angle-117.35),y+ydec+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	//Bastion
	case "bastion": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+xdec+lengthdir_x(30,image_angle),y+ydec+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(68.10,image_angle+29.54),y+ydec+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(70.71,image_angle-28.74),y+ydec+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(34.48,image_angle+119.54),y+ydec+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(32.65,image_angle-117.35),y+ydec+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	//Enforcer
	case "enforcer": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+xdec+lengthdir_x(30,image_angle),y+ydec+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(68.10,image_angle+29.54),y+ydec+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(70.71,image_angle-28.74),y+ydec+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(34.48,image_angle+119.54),y+ydec+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(32.65,image_angle-117.35),y+ydec+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	//Venom
	case "venom": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+xdec+lengthdir_x(30,image_angle),y+ydec+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(68.10,image_angle+29.54),y+ydec+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(70.71,image_angle-28.74),y+ydec+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(34.48,image_angle+119.54),y+ydec+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(32.65,image_angle-117.35),y+ydec+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	//Diminisher
	case "diminisher": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+xdec+lengthdir_x(30,image_angle),y+ydec+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(68.10,image_angle+29.54),y+ydec+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(70.71,image_angle-28.74),y+ydec+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(34.48,image_angle+119.54),y+ydec+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(32.65,image_angle-117.35),y+ydec+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	//Solace
	case "solace": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+xdec+lengthdir_x(30,image_angle),y+ydec+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(68.10,image_angle+29.54),y+ydec+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(70.71,image_angle-28.74),y+ydec+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(34.48,image_angle+119.54),y+ydec+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(32.65,image_angle-117.35),y+ydec+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	//Sentinel
	case "sentinel": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+xdec+lengthdir_x(30,image_angle),y+ydec+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(68.10,image_angle+29.54),y+ydec+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(70.71,image_angle-28.74),y+ydec+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(34.48,image_angle+119.54),y+ydec+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(32.65,image_angle-117.35),y+ydec+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	//Spectrum
	case "spectrum": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+xdec+lengthdir_x(30,image_angle),y+ydec+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(68.10,image_angle+29.54),y+ydec+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(70.71,image_angle-28.74),y+ydec+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(34.48,image_angle+119.54),y+ydec+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(32.65,image_angle-117.35),y+ydec+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
    
	case "citadel": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+xdec+lengthdir_x(30,image_angle),y+ydec+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(68.10,image_angle+29.54),y+ydec+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(70.71,image_angle-28.74),y+ydec+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(34.48,image_angle+119.54),y+ydec+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(32.65,image_angle-117.35),y+ydec+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	case "aegis": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+xdec+lengthdir_x(30,image_angle),y+ydec+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(68.10,image_angle+29.54),y+ydec+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(70.71,image_angle-28.74),y+ydec+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(34.48,image_angle+119.54),y+ydec+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(32.65,image_angle-117.35),y+ydec+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	case "spearhead": {
	    ii = instance_create_depth(x+xdec+lengthdir_x(ActivityCtrl.phoenix_gun_place,image_angle),
	    y+ydec+lengthdir_y(ActivityCtrl.phoenix_gun_place,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}     
	//To make alien-cheat work w/ lasers
	case "streunerG": {
	    ii = instance_create_depth(x+xdec+lengthdir_x(ActivityCtrl.phoenix_gun_place,image_angle),
	    y+ydec+lengthdir_y(ActivityCtrl.phoenix_gun_place,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "boss_streunerG": {
	    ii = instance_create_depth(x+xdec+lengthdir_x(ActivityCtrl.phoenix_gun_place,image_angle),
	    y+ydec+lengthdir_y(ActivityCtrl.phoenix_gun_place,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "lordakiaG": {
	    ii = instance_create_depth(x+xdec+lengthdir_x(ActivityCtrl.phoenix_gun_place,image_angle),
	    y+ydec+lengthdir_y(ActivityCtrl.phoenix_gun_place,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;} 
	case "boss_lordakiaG": {
	    ii = instance_create_depth(x+xdec+lengthdir_x(ActivityCtrl.phoenix_gun_place,image_angle),
	    y+ydec+lengthdir_y(ActivityCtrl.phoenix_gun_place,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "mordonG": {
	    ii = instance_create_depth(x+xdec+lengthdir_x(ActivityCtrl.phoenix_gun_place,image_angle),
	    y+ydec+lengthdir_y(ActivityCtrl.phoenix_gun_place,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "boss_mordonG": {
	    ii = instance_create_depth(x+xdec+lengthdir_x(ActivityCtrl.phoenix_gun_place,image_angle),
	    y+ydec+lengthdir_y(ActivityCtrl.phoenix_gun_place,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;} 
	case "saimonG": {
	    ii = instance_create_depth(x+xdec+lengthdir_x(ActivityCtrl.phoenix_gun_place,image_angle),
	    y+ydec+lengthdir_y(ActivityCtrl.phoenix_gun_place,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "boss_saimonG": {
	    ii = instance_create_depth(x+xdec+lengthdir_x(ActivityCtrl.phoenix_gun_place,image_angle),
	    y+ydec+lengthdir_y(ActivityCtrl.phoenix_gun_place,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "protegitG": {
	    ii = instance_create_depth(x+xdec+lengthdir_x(ActivityCtrl.phoenix_gun_place,image_angle),
	    y+ydec+lengthdir_y(ActivityCtrl.phoenix_gun_place,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "cubikonG": {
	    ii = instance_create_depth(x+xdec+lengthdir_x(ActivityCtrl.phoenix_gun_place,image_angle),
	    y+ydec+lengthdir_y(ActivityCtrl.phoenix_gun_place,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "devolariumG": {
	    ii = instance_create_depth(x+xdec+lengthdir_x(ActivityCtrl.phoenix_gun_place,image_angle),
	    y+ydec+lengthdir_y(ActivityCtrl.phoenix_gun_place,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "boss_devolariumG": {
	    ii = instance_create_depth(x+xdec+lengthdir_x(ActivityCtrl.phoenix_gun_place,image_angle),
	    y+ydec+lengthdir_y(ActivityCtrl.phoenix_gun_place,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "sibelonG": {
	    ii = instance_create_depth(x+xdec+lengthdir_x(ActivityCtrl.phoenix_gun_place,image_angle),
	    y+ydec+lengthdir_y(ActivityCtrl.phoenix_gun_place,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "boss_sibelonG": {
	    ii = instance_create_depth(x+xdec+lengthdir_x(ActivityCtrl.phoenix_gun_place,image_angle),
	    y+ydec+lengthdir_y(ActivityCtrl.phoenix_gun_place,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}      
	case "kringspiermusketier": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+xdec+lengthdir_x(30,image_angle),y+ydec+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(68.10,image_angle+29.54),y+ydec+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(70.71,image_angle-28.74),y+ydec+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(34.48,image_angle+119.54),y+ydec+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(32.65,image_angle-117.35),y+ydec+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}                                             
	//Added 11-5-13
	//Vengies
	//Adept
	case "adept": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+xdec+lengthdir_x(94,image_angle),y+ydec+lengthdir_y(94,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(51.55,image_angle+18),y+ydec+lengthdir_y(51.55,image_angle+18),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(51.55,image_angle-18),y+ydec+lengthdir_y(51,image_angle-18),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(48.50,image_angle+81.70),y+ydec+lengthdir_y(48.50,image_angle+81.70),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(48.50,image_angle-81.70),y+ydec+lengthdir_y(48.50,image_angle-81.70),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}  
	//Corsair
	case "corsair": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+xdec+lengthdir_x(94,image_angle),y+ydec+lengthdir_y(94,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(51.55,image_angle+18),y+ydec+lengthdir_y(51.55,image_angle+18),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(51.55,image_angle-18),y+ydec+lengthdir_y(51,image_angle-18),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(48.50,image_angle+81.70),y+ydec+lengthdir_y(48.50,image_angle+81.70),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(48.50,image_angle-81.70),y+ydec+lengthdir_y(48.50,image_angle-81.70),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}  
	//Golliaths
	//kick
	case "kick": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+xdec+lengthdir_x(30,image_angle),y+ydec+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(68.10,image_angle+29.54),y+ydec+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(70.71,image_angle-28.74),y+ydec+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(34.48,image_angle+119.54),y+ydec+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(32.65,image_angle-117.35),y+ydec+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	//referee
	case "referee": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+xdec+lengthdir_x(30,image_angle),y+ydec+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(68.10,image_angle+29.54),y+ydec+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(70.71,image_angle-28.74),y+ydec+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(34.48,image_angle+119.54),y+ydec+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(32.65,image_angle-117.35),y+ydec+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	//goal
	case "goal": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+xdec+lengthdir_x(30,image_angle),y+ydec+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(68.10,image_angle+29.54),y+ydec+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(70.71,image_angle-28.74),y+ydec+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(34.48,image_angle+119.54),y+ydec+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(32.65,image_angle-117.35),y+ydec+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;} 
	//centaur
	case "centaur": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+xdec+lengthdir_x(30,image_angle),y+ydec+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(68.10,image_angle+29.54),y+ydec+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(70.71,image_angle-28.74),y+ydec+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(34.48,image_angle+119.54),y+ydec+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(32.65,image_angle-117.35),y+ydec+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	//saturn
	case "saturn": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+xdec+lengthdir_x(30,image_angle),y+ydec+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(68.10,image_angle+29.54),y+ydec+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(70.71,image_angle-28.74),y+ydec+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(34.48,image_angle+119.54),y+ydec+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(32.65,image_angle-117.35),y+ydec+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	//exalted
	case "exalted": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+xdec+lengthdir_x(30,image_angle),y+ydec+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(68.10,image_angle+29.54),y+ydec+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(70.71,image_angle-28.74),y+ydec+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(34.48,image_angle+119.54),y+ydec+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(32.65,image_angle-117.35),y+ydec+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	//veteran
	case "veteran": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+xdec+lengthdir_x(30,image_angle),y+ydec+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(68.10,image_angle+29.54),y+ydec+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(70.71,image_angle-28.74),y+ydec+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(34.48,image_angle+119.54),y+ydec+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+xdec+lengthdir_x(32.65,image_angle-117.35),y+ydec+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}                       
	//End of shiplist                  
	}}

	//Äðîèäû.
	if global.droid_enable=true and global.laser_enable>1 then {
	for (i=1; i<=12; i+=1;)
	    {
	    if droid[i,0]!=noone then
	    if (droid[i,2] = "MP-1" or droid[i,3] = "MP-1")
	      or (droid[i,2] = "LF-1" or droid[i,3] = "LF-1") then
	        {ii = instance_create_depth(droid[i,0].x+xdec,droid[i,0].y+ydec,0,ammo_ship);
	        a=instance_create_depth(ii.x+xdec,ii.y+ydec,0,blust); a.owner=droid[i,0]; with(a) {with(a) event_user(0);}
	        ii.speed = global.laser_speed;
	        ii.target:=target; ii.owner:=id; ii.myOwner=id;
	        ii.image_xscale=0.5; ii.image_yscale=0.5
	        ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	    }}
	}
	else {//Ñîçäàíèå îäíîãî ëàçåðà (ýêîíîìíûé ðåæèì (ïîâûøàåò ïðîèçâîäèòåëüíîñòü)).
	    ii = instance_create_depth(x+xdec,y+ydec,0,ammo_ship);
	    ii.speed = global.laser_speed;
	    ii.direction = point_direction(x+xdec,y+ydec,target.x+xdec,target.y);
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
}