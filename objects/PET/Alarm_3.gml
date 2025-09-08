/// @description ATTACKING
var xdec = 0;
var ydec = 0;

if attacking = true and guns > 0
{
	if instance_exists(target)
	{
		if point_distance(x,y,target.x,target.y) <= global.attack_range
		{
			var ammo_qty = 0;
			if owner.ammo_selected = x1_ammo then ammo_qty = global.x1;
			if owner.ammo_selected = x2_ammo then ammo_qty = global.x2;
			if owner.ammo_selected = x3_ammo then ammo_qty = global.x3;
			if owner.ammo_selected = x4_ammo then ammo_qty = global.x4;
			if owner.ammo_selected = sab then ammo_qty = global.x5;
			if owner.ammo_selected = rsb then ammo_qty = global.x6;
				
			if ammo_qty >= guns
			{	
				//SAB AMMO.
				if owner.ammo_selected = sab //ammo[0,0]=5 then
				{
				    ii = instance_create_depth(target.x+xdec,target.y+ydec,0,owner.ammo_selected);
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
			
					//if Ship="bigboy" then {dec1a=71;dec1b=0;dec2a=59.67;dec2b=39.56;dec3a=59.67;dec3b=-39.56;dec4a=45.71;dec4b=100;dec5a=45.71;dec5b=-100;}
					//dec1a=73;dec1b=0;dec2a=51.42;dec2b=13.5;dec3a=51.42;dec3b=-13.5;dec4a=37.16;dec4b=13.81;dec5a=37.16;dec5b=-13.81;
					//dec1a=94;dec1b=0;dec2a=51.55;dec2b=18;dec3a=51.55;dec3b=-18;dec4a=48.5;dec4b=81.7;dec5a=48.5;dec5b=-81.7;
					dec1a=30;dec1b=0;dec2a=68.10;dec2b=29.54;dec3a=70.71;dec3b=-24.74;dec4a=34.48;dec4b=119.54;dec5a=32.65;dec5b=-117.35;
			
					var factor = 0.75;
					dec1a=factor*dec1a;dec1b=factor*dec1b;
					dec2a=factor*dec2a;dec2b=factor*dec2b;
					dec3a=factor*dec3a;dec3b=factor*dec3b;
					dec4a=factor*dec4a;dec4b=factor*dec4b;
					dec5a=factor*dec5a;dec5b=factor*dec5b;
			
					var blust_xdec = 20;
			
				    laser_1 = instance_create_depth(x+xdec+lengthdir_x(dec1a,image_angle+dec1b),y+ydec+lengthdir_y(dec1a,image_angle+dec1b),0,owner.ammo_selected);
				    blust_1=instance_create_depth(laser_1.x+blust_xdec,laser_1.y,0,blust); blust_1.owner:=id; with(blust_1) event_user(0);
				    laser_1.speed = global.laser_speed;
				    laser_1.target:=target; laser_1.owner:=id; laser_1.myOwner=id;
				    laser_1.damage = MaxDamage; laser_1.drawDamage=true; with(laser_1) event_user(0);
			
				    laser_2 = instance_create_depth(x+xdec+lengthdir_x(dec2a,image_angle+dec2b),y+ydec+lengthdir_y(dec2a,image_angle+dec2b),0,owner.ammo_selected);
				    blust_2=instance_create_depth(laser_2.x+blust_xdec,laser_2.y,0,blust); blust_2.owner:=id; with(blust_2) event_user(0);
				    laser_2.speed = global.laser_speed;
				    laser_2.target:=target; laser_2.owner:=id; laser_2.myOwner=id;
				    laser_2.damage:=0; laser_2.drawDamage=false;; with(laser_2) event_user(0);
			
				    laser_3 = instance_create_depth(x+xdec+lengthdir_x(dec3a,image_angle+dec3b),y+ydec+lengthdir_y(dec3a,image_angle+dec3b),0,owner.ammo_selected);
				    blust_3=instance_create_depth(laser_3.x+blust_xdec,laser_3.y,0,blust); blust_3.owner:=id; with(blust_3) event_user(0); 
				    laser_3.speed = global.laser_speed;
				    laser_3.target:=target; laser_3.owner:=id; laser_3.myOwner=id;
				    laser_3.damage:=0; laser_3.drawDamage=false; with(laser_3) event_user(0);
			
				    laser_4 = instance_create_depth(x+xdec+lengthdir_x(dec4a,image_angle+dec4b),y+ydec+lengthdir_y(dec4a,image_angle+dec4b),0,owner.ammo_selected);
				    blust_4=instance_create_depth(laser_4.x+blust_xdec,laser_4.y,0,blust); blust_4.owner:=id; with(blust_4) event_user(0);
				    laser_4.speed = global.laser_speed;
				    laser_4.target:=target; laser_4.owner:=id; laser_4.drawDamage=false; laser_4.myOwner=id;
			
				    laser_5 = instance_create_depth(x+xdec+lengthdir_x(dec5a,image_angle+dec5b),y+ydec+lengthdir_y(dec5a,image_angle+dec5b),0,owner.ammo_selected);
				    blust_5=instance_create_depth(laser_5.x+blust_xdec,laser_5.y,0,blust); blust_5.owner:=id; with(blust_5) event_user(0); 
				    laser_5.speed = global.laser_speed;
				    laser_5.target:=target; laser_5.owner:=id; laser_5.myOwner=id;
				    laser_5.damage:=0; laser_5.drawDamage=false; with(laser_5) event_user(0);
				}
				
				
				if owner.ammo_selected = x1_ammo then global.x1 -= guns;
				if owner.ammo_selected = x2_ammo then global.x2 -= guns;
				if owner.ammo_selected = x3_ammo then global.x3 -= guns;
				if owner.ammo_selected = x4_ammo then global.x4 -= guns;
				if owner.ammo_selected = sab then global.x5 -= guns;
				if owner.ammo_selected = rsb then global.x6 -= guns;
			}
		}
	}
}

alarm[3] = 11*2*1.5;
