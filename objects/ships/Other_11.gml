///@description laser attack
//Ñêðèïò, êîòîðûé îòâå÷àåò çà ñîçäàíèå è äâèæåíèå ëàçåðîâ.
var a,ii,i;

MaxDamage = 15000

//Îòêëþ÷åíèå ÁÇ
v_zone_bz:=false;
//Âûñòðåë âûáðàííûì òèïîì ëàçåðà
if instance_exists(target)
{
	with(target) a:=distance_to_object(gamer);
	if ((distance_to_object(gamer)<500) or (a<400) or (object_index=gamer)) then {
	    if (point_distance(x,y,gamer.x,gamer.y) <= 500)
	        {
				a:=audio_play_sound(x4_sound,1,false);
	        }
	//Êîðàáëü.
	if id=1 //ammo[0,0]=5 then
	{switch Ship
	{
	//Big Boy
	case "bigboy": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	//Nostromo
	case "nostromo": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	//Leonov
	case "leonov": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	//Phoenix
	case "phoenix": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "admin": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	//Vengeance
	case "vengeance": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	//Avenger
	case "avenger": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	//Revenge
	case "revenge": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	//lightning
	case "lightning": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	//Goliath
	case "goliath": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	//Bastion
	case "bastion": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	//Enforcer
	case "enforcer": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	//Venom
	case "venom": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	//Solace
	case "solace": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	//Sentinel
	case "sentinel": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	//Spectrum
	case "spectrum": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "citadel": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "aegis": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "spearhead": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	//To make alien-cheat work w/ lasers
	case "streunerG": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "boss_streunerG": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "lordakiaG": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "boss_lordakiaG": {
	    ii = instance_create_depth(gamer.target.x+lengthdir_x(ActivityCtrl.phoenix_gun_place,image_angle),
	    y+lengthdir_y(ActivityCtrl.phoenix_gun_place,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "mordonG": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "boss_mordonG": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "saimonG": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "boss_saimonG": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "protegitG": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "cubikonG": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "devolariumG": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "boss_devolariumG": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "sibelonG": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "boss_sibelonG": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "kringspiermusketier": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}                                      
	//Added 11-5-13
	//Vengies
	//Adept
	case "adept": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	//Golliaths
	//kick
	case "kick": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	//goal
	case "goal": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	//centaur
	case "centaur": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	//saturn
	case "saturn": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	//exalted
	case "exalted": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	//veteran
	case "veteran": {
	    ii = instance_create_depth(gamer.target.x,gamer.target.y,0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=gamer; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}                 
	//End of shiplist                  
	}}
	else
	{switch Ship
	{
	//Big Boy
	case "bigboy": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+lengthdir_x(71,image_angle),y+lengthdir_y(71,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(59.67,image_angle+39.56),y+lengthdir_y(59.67,image_angle+39.56),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(59.67,image_angle-39.56),y+lengthdir_y(59.67,image_angle-39.56),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(45.71,image_angle+100),y+lengthdir_y(45.71,image_angle+100),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(45.71,image_angle-100),y+lengthdir_y(45.71,image_angle-100),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	//Nostromo
	case "nostromo": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+lengthdir_x(73,image_angle),y+lengthdir_y(73,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(51.42,image_angle+13.5),y+lengthdir_y(51.42,image_angle+13.5),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(51.42,image_angle-13.5),y+lengthdir_y(51.42,image_angle-13.5),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(37.16,image_angle+13.81),y+lengthdir_y(37.16,image_angle+13.81),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(37.16,image_angle-13.81),y+lengthdir_y(37.16,image_angle-13.81),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	//Leonov
	case "leonov": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+lengthdir_x(73,image_angle),y+lengthdir_y(73,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(51.42,image_angle+13.5),y+lengthdir_y(51.42,image_angle+13.5),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(51.42,image_angle-13.5),y+lengthdir_y(51.42,image_angle-13.5),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(37.16,image_angle+13.81),y+lengthdir_y(37.16,image_angle+13.81),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(37.16,image_angle-13.81),y+lengthdir_y(37.16,image_angle-13.81),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}    
	//Phoenix
	case "phoenix": {
	    ii = instance_create_depth(x+lengthdir_x(ActivityCtrl.phoenix_gun_place,image_angle),
	    y+lengthdir_y(ActivityCtrl.phoenix_gun_place,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "admin": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     
	    ii = instance_create_depth(x+lengthdir_x(30,image_angle),y+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(angel) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   
	    ii = instance_create_depth(x+lengthdir_x(68.10,image_angle+29.54),y+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(angel) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);

	    ii = instance_create_depth(x+lengthdir_x(70.71,image_angle-28.74),y+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(angel) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //By manulaiko
	    ii = instance_create_depth(x+lengthdir_x(34.48,image_angle+119.54),y+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(angel) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //By Manulaiko
	    ii = instance_create_depth(x+lengthdir_x(32.65,image_angle-117.35),y+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(angel) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	//Vengeance
	case "vengeance": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+lengthdir_x(94,image_angle),y+lengthdir_y(94,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(51.55,image_angle+18),y+lengthdir_y(51.55,image_angle+18),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(51.55,image_angle-18),y+lengthdir_y(51,image_angle-18),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(48.50,image_angle+81.70),y+lengthdir_y(48.50,image_angle+81.70),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(48.50,image_angle-81.70),y+lengthdir_y(48.50,image_angle-81.70),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	//Avenger
	case "avenger": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+lengthdir_x(94,image_angle),y+lengthdir_y(94,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(51.55,image_angle+18),y+lengthdir_y(51.55,image_angle+18),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(51.55,image_angle-18),y+lengthdir_y(51,image_angle-18),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(48.50,image_angle+81.70),y+lengthdir_y(48.50,image_angle+81.70),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(48.50,image_angle-81.70),y+lengthdir_y(48.50,image_angle-81.70),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}  
	//Revenge
	case "revenge": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+lengthdir_x(94,image_angle),y+lengthdir_y(94,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(51.55,image_angle+18),y+lengthdir_y(51.55,image_angle+18),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(51.55,image_angle-18),y+lengthdir_y(51,image_angle-18),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(48.50,image_angle+81.70),y+lengthdir_y(48.50,image_angle+81.70),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(48.50,image_angle-81.70),y+lengthdir_y(48.50,image_angle-81.70),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	//lightning
	case "lightning": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+lengthdir_x(94,image_angle),y+lengthdir_y(94,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(51.55,image_angle+18),y+lengthdir_y(51.55,image_angle+18),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(51.55,image_angle-18),y+lengthdir_y(51,image_angle-18),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(48.50,image_angle+81.70),y+lengthdir_y(48.50,image_angle+81.70),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(48.50,image_angle-81.70),y+lengthdir_y(48.50,image_angle-81.70),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	//Goliath
	case "goliath": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+lengthdir_x(30,image_angle),y+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(68.10,image_angle+29.54),y+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(70.71,image_angle-28.74),y+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(34.48,image_angle+119.54),y+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(32.65,image_angle-117.35),y+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	//Bastion
	case "bastion": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+lengthdir_x(30,image_angle),y+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(68.10,image_angle+29.54),y+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(70.71,image_angle-28.74),y+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(34.48,image_angle+119.54),y+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(32.65,image_angle-117.35),y+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	//Enforcer
	case "enforcer": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+lengthdir_x(30,image_angle),y+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(68.10,image_angle+29.54),y+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(70.71,image_angle-28.74),y+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(34.48,image_angle+119.54),y+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(32.65,image_angle-117.35),y+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	//Venom
	case "venom": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+lengthdir_x(30,image_angle),y+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(68.10,image_angle+29.54),y+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(70.71,image_angle-28.74),y+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(34.48,image_angle+119.54),y+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(32.65,image_angle-117.35),y+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	//Diminisher
	case "diminisher": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+lengthdir_x(30,image_angle),y+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(68.10,image_angle+29.54),y+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(70.71,image_angle-28.74),y+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(34.48,image_angle+119.54),y+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(32.65,image_angle-117.35),y+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	//Solace
	case "solace": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+lengthdir_x(30,image_angle),y+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(68.10,image_angle+29.54),y+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(70.71,image_angle-28.74),y+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(34.48,image_angle+119.54),y+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(32.65,image_angle-117.35),y+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	//Sentinel
	case "sentinel": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+lengthdir_x(30,image_angle),y+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(68.10,image_angle+29.54),y+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(70.71,image_angle-28.74),y+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(34.48,image_angle+119.54),y+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(32.65,image_angle-117.35),y+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	//Spectrum
	case "spectrum": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+lengthdir_x(30,image_angle),y+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(68.10,image_angle+29.54),y+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(70.71,image_angle-28.74),y+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(34.48,image_angle+119.54),y+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(32.65,image_angle-117.35),y+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
    
	case "citadel": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+lengthdir_x(30,image_angle),y+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(68.10,image_angle+29.54),y+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(70.71,image_angle-28.74),y+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(34.48,image_angle+119.54),y+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(32.65,image_angle-117.35),y+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	case "aegis": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+lengthdir_x(30,image_angle),y+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(68.10,image_angle+29.54),y+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(70.71,image_angle-28.74),y+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(34.48,image_angle+119.54),y+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(32.65,image_angle-117.35),y+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	case "spearhead": {
	    ii = instance_create_depth(x+lengthdir_x(ActivityCtrl.phoenix_gun_place,image_angle),
	    y+lengthdir_y(ActivityCtrl.phoenix_gun_place,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}     
	//To make alien-cheat work w/ lasers
	case "streunerG": {
	    ii = instance_create_depth(x+lengthdir_x(ActivityCtrl.phoenix_gun_place,image_angle),
	    y+lengthdir_y(ActivityCtrl.phoenix_gun_place,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "boss_streunerG": {
	    ii = instance_create_depth(x+lengthdir_x(ActivityCtrl.phoenix_gun_place,image_angle),
	    y+lengthdir_y(ActivityCtrl.phoenix_gun_place,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "lordakiaG": {
	    ii = instance_create_depth(x+lengthdir_x(ActivityCtrl.phoenix_gun_place,image_angle),
	    y+lengthdir_y(ActivityCtrl.phoenix_gun_place,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;} 
	case "boss_lordakiaG": {
	    ii = instance_create_depth(x+lengthdir_x(ActivityCtrl.phoenix_gun_place,image_angle),
	    y+lengthdir_y(ActivityCtrl.phoenix_gun_place,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "mordonG": {
	    ii = instance_create_depth(x+lengthdir_x(ActivityCtrl.phoenix_gun_place,image_angle),
	    y+lengthdir_y(ActivityCtrl.phoenix_gun_place,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "boss_mordonG": {
	    ii = instance_create_depth(x+lengthdir_x(ActivityCtrl.phoenix_gun_place,image_angle),
	    y+lengthdir_y(ActivityCtrl.phoenix_gun_place,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;} 
	case "saimonG": {
	    ii = instance_create_depth(x+lengthdir_x(ActivityCtrl.phoenix_gun_place,image_angle),
	    y+lengthdir_y(ActivityCtrl.phoenix_gun_place,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "boss_saimonG": {
	    ii = instance_create_depth(x+lengthdir_x(ActivityCtrl.phoenix_gun_place,image_angle),
	    y+lengthdir_y(ActivityCtrl.phoenix_gun_place,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "protegitG": {
	    ii = instance_create_depth(x+lengthdir_x(ActivityCtrl.phoenix_gun_place,image_angle),
	    y+lengthdir_y(ActivityCtrl.phoenix_gun_place,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "cubikonG": {
	    ii = instance_create_depth(x+lengthdir_x(ActivityCtrl.phoenix_gun_place,image_angle),
	    y+lengthdir_y(ActivityCtrl.phoenix_gun_place,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "devolariumG": {
	    ii = instance_create_depth(x+lengthdir_x(ActivityCtrl.phoenix_gun_place,image_angle),
	    y+lengthdir_y(ActivityCtrl.phoenix_gun_place,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "boss_devolariumG": {
	    ii = instance_create_depth(x+lengthdir_x(ActivityCtrl.phoenix_gun_place,image_angle),
	    y+lengthdir_y(ActivityCtrl.phoenix_gun_place,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "sibelonG": {
	    ii = instance_create_depth(x+lengthdir_x(ActivityCtrl.phoenix_gun_place,image_angle),
	    y+lengthdir_y(ActivityCtrl.phoenix_gun_place,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}
	case "boss_sibelonG": {
	    ii = instance_create_depth(x+lengthdir_x(ActivityCtrl.phoenix_gun_place,image_angle),
	    y+lengthdir_y(ActivityCtrl.phoenix_gun_place,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0); break;}      
	case "kringspiermusketier": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+lengthdir_x(30,image_angle),y+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(68.10,image_angle+29.54),y+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(70.71,image_angle-28.74),y+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(34.48,image_angle+119.54),y+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(32.65,image_angle-117.35),y+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}                                             
	//Added 11-5-13
	//Vengies
	//Adept
	case "adept": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+lengthdir_x(94,image_angle),y+lengthdir_y(94,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(51.55,image_angle+18),y+lengthdir_y(51.55,image_angle+18),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(51.55,image_angle-18),y+lengthdir_y(51,image_angle-18),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(48.50,image_angle+81.70),y+lengthdir_y(48.50,image_angle+81.70),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(48.50,image_angle-81.70),y+lengthdir_y(48.50,image_angle-81.70),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}  
	//Corsair
	case "corsair": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+lengthdir_x(94,image_angle),y+lengthdir_y(94,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(51.55,image_angle+18),y+lengthdir_y(51.55,image_angle+18),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(51.55,image_angle-18),y+lengthdir_y(51,image_angle-18),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(48.50,image_angle+81.70),y+lengthdir_y(48.50,image_angle+81.70),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(48.50,image_angle-81.70),y+lengthdir_y(48.50,image_angle-81.70),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}  
	//Golliaths
	//kick
	case "kick": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+lengthdir_x(30,image_angle),y+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(68.10,image_angle+29.54),y+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(70.71,image_angle-28.74),y+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(34.48,image_angle+119.54),y+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(32.65,image_angle-117.35),y+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	//referee
	case "referee": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+lengthdir_x(30,image_angle),y+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(68.10,image_angle+29.54),y+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(70.71,image_angle-28.74),y+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(34.48,image_angle+119.54),y+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(32.65,image_angle-117.35),y+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	//goal
	case "goal": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+lengthdir_x(30,image_angle),y+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(68.10,image_angle+29.54),y+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(70.71,image_angle-28.74),y+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(34.48,image_angle+119.54),y+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(32.65,image_angle-117.35),y+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;} 
	//centaur
	case "centaur": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+lengthdir_x(30,image_angle),y+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(68.10,image_angle+29.54),y+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(70.71,image_angle-28.74),y+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(34.48,image_angle+119.54),y+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(32.65,image_angle-117.35),y+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	//saturn
	case "saturn": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+lengthdir_x(30,image_angle),y+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(68.10,image_angle+29.54),y+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(70.71,image_angle-28.74),y+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(34.48,image_angle+119.54),y+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(32.65,image_angle-117.35),y+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	//exalted
	case "exalted": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+lengthdir_x(30,image_angle),y+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(68.10,image_angle+29.54),y+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(70.71,image_angle-28.74),y+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(34.48,image_angle+119.54),y+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(32.65,image_angle-117.35),y+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);} break;}
	//veteran
	case "veteran": {
	if GunSprite[1]!=2 and GunSprite[1]!=4 then {     //Âûñòðåë ëàçåðîì èç ñåðåäèíû êîðàáëÿ.
	    ii = instance_create_depth(x+lengthdir_x(30,image_angle),y+lengthdir_y(27,image_angle),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
	if GunSprite[1]>=2 then {   //Âûñòðåë 2-ìÿ ëàçåðàìè ñ ïåðåäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(68.10,image_angle+29.54),y+lengthdir_y(68.10,image_angle+29.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    if (GunSprite[1]=2) or (GunSprite[1]=4) then ii.damage = MaxDamage else ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(70.71,image_angle-28.74),y+lengthdir_y(70.71,image_angle-28.74),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	if GunSprite[1]>=4 then {    //Âûñòðåë 2-ìÿ ëàçåðàìè ñ çàäíèõ êðàåâ êîðàáëÿ.
	    //Ñîçäàíèå ïåðâîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(34.48,image_angle+119.54),y+lengthdir_y(34.48,image_angle+119.54),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0);
	    ii.speed = global.laser_speed;
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    //Ñîçäàíèå âòîðîãî ëàçåðà.
	    ii = instance_create_depth(x+lengthdir_x(32.65,image_angle-117.35),y+lengthdir_y(32.65,image_angle-117.35),0,ammo_ship);
	    a=instance_create_depth(ii.x,ii.y,0,blust); a.owner:=id; with(a) event_user(0); 
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
	        {ii = instance_create_depth(droid[i,0].x,droid[i,0].y,0,ammo_ship);
	        a=instance_create_depth(ii.x,ii.y,0,blust); a.owner=droid[i,0]; with(a) {with(a) event_user(0);}
	        ii.speed = global.laser_speed;
	        ii.target:=target; ii.owner:=id; ii.myOwner=id;
	        ii.image_xscale=0.5; ii.image_yscale=0.5
	        ii.damage:=0; ii.drawDamage=false;; with(ii) event_user(0);}
	    }}
	}
	else {//Ñîçäàíèå îäíîãî ëàçåðà (ýêîíîìíûé ðåæèì (ïîâûøàåò ïðîèçâîäèòåëüíîñòü)).
	    ii = instance_create_depth(x,y,0,ammo_ship);
	    ii.speed = global.laser_speed;
	    ii.direction = point_direction(x,y,target.x,target.y);
	    ii.target:=target; ii.owner:=id; ii.myOwner=id;
	    ii.damage = MaxDamage; ii.drawDamage=true; with(ii) event_user(0);}
}