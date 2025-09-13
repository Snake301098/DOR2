if owner.id = gamer.id then
{
    if targetedship != 0 then
        {
            if speedrocket<17 then speedrocket=speedrocket*1.05 else speedrocket = 17;
        motion_set(point_direction(x,y,targetedship.x,targetedship.y),speedrocket) //speed
        direction=point_direction(x,y,targetedship.x,targetedship.y)+ammoangle;
        image_angle = set_angle(image_angle, direction, 10); //10
        if point_distance(x,y,targetedship.x,targetedship.y)<5 or point_distance(x,y,gamer.x,gamer.y)>550 then {instance_destroy();} //or point_distance(x,y,xowner,yowner)>650
    } else {
            if speedrocket<17 then speedrocket=speedrocket*speedmultiplier else speedrocket = 17;
        //motion_set(point_direction(xowner,yowner,targetx,targety),speedrocket) //speed
        //direction=point_direction(xowner,yowner,targetx,targety)+ammoangle;
        //motion_set(point_direction(x,y,targetx,targety),speedrocket) //speed
        //direction=point_direction(x,y,targetx,targety)+ammoangle;
		final_targetx=lengthdir_x(600+abs(+gamer.x-xowner),point_direction(xowner,yowner,targetx,targety))
		final_targety=lengthdir_y(600+abs(+gamer.y-yowner),point_direction(xowner,yowner,targetx,targety))
        motion_set(point_direction(x+gamer.x-xowner,y+gamer.y-yowner,gamer.x+final_targetx+gamer.x-xowner,gamer.y+final_targety+gamer.y-yowner),speedrocket) //speed
        direction=point_direction(x+gamer.x-xowner,y+gamer.y-yowner,xowner+final_targetx+gamer.x-xowner,yowner+final_targety+gamer.y-yowner)+ammoangle;
        image_angle = set_angle(image_angle, direction, 10); //10
        if point_distance(x,y,gamer.x,gamer.y)>550 then {instance_destroy();}
    }
}
else
{
    if instance_exists(target) then
    {
        //if point_distance(x,y,target.x,target.y)<speed then speed:=point_distance(x,y,target.x,target.y);
        //speed = 12;
        //direction=point_direction(x,y,target.x,target.y);
        
        if speedrocket<17 then speedrocket=speedrocket*1.05 else speedrocket = 17;
        motion_set(point_direction(x,y,target.x,target.y),speedrocket) //speed
        direction=point_direction(x,y,target.x,target.y)+ammoangle;
        image_angle = set_angle(image_angle, direction, 10); //10
        if point_distance(x,y,target.x,target.y)<5 or point_distance(x,y,owner.x,owner.y)>550 then {instance_destroy();}
		
	}
    else instance_destroy();
}

ammoangle = ammoangle*decrease_angle_factor;
//decrease_angle_factor = decrease_angle_factor * anglemultiplier;

/*
var colliding_door_id = instance_place(x, y, ships);
if (colliding_door_id != noone and colliding_door_id != ownership.id) {
	var a,b,c,healthAbsord,shieldAbsorb,shieldPen;
	if owner.corporation!=other.corporation and other.v_zone_bz=false and owner.id != other.id  then
	    {
	        if other.ish=1 then {a=0} else
	        { //If no ISH
	            //Hit calculation etc
	                if (irandom_range(0,100) < 80){ //If not missed
	                if (!is_real(damage)){damage=0; drawDamage=false;}
                    
	                    //BOUNTY HUNTER
	                    //if owner.id = gamer.id then //bounty hunter
	                    //{
	                        //a=round(((damage*damage_x)-irandom((damage*damage_x)))*(1+global.bounty_hunter_bonus)) //BOUNTY HUNTER for gamer
							a=round(damage*irandom_range(80,120)/100) //BOUNTY HUNTER for gamer
	                   // } else
	                   // {
	                   //     a=round((damage*damage_x)-irandom((damage*damage_x)*0.15))
	                    //}
				
	                    //SPECTRUM ABILITY
	                    //if other.usespectrumability = 1 then { a = round(a * 0.5)} //-50% of others dmg when using spectrum ability //*0.5
	                    //if owner.usespectrumability = 1 then { a = round(a * 0.75)} //-25% of own dmg when using spectrum ability   //0.75
                    
	                    //ELEECH ABILITY
	                    if owner.useeleech=1 then 
	                    {
	                        if a!=0 then
	                        {
	                            owner.own_health+=round(a*0.3);
	                            if(owner.id == gamer.id || owner.id = gamer.target) then draw_damage(owner.id,owner.y,"+" + damage_syntax(a*0.3),c_lime);
	                        }
	                    }
                    
	                    //Quick thingy for energyleech
	                    //restoredHP = a*healthAbsorb;
	                }else{a=0;}
	        //Dealing damage.        
	        //- Damage is NOT 0
	        if(a != 0){ //not missed           
	            //- We"re using SAB***
            
	        //Not using SAB
				other.own_health-=a;
            
                
	            //GET A KILL ***ONLY FOR NPC***
	            if(other.own_health<=0) and not(owner=gamer.id) then 
	            {
	                //if owner.Ship="lightning" then {eleech=instance_create(owner.x,owner.y,eleech_obj);eleech.owner=owner.id}
	            }
                
	            //GET A KILL LAST HIT ***ONLY FOR GAMER***
	            if other.own_health<=0 and owner=gamer.id then 
	            {
	                instance_create_depth(other.x,other.y,-100,dropobject);
	            }
            
	        }
	            if(!drawDamage){instance_destroy();}
	            //Drawing damage
	            else if (drawDamage=true && owner.object_index == gamer || owner.id == PET.id or other.id == gamer.target){ 
	                if(a == 0) a="MISS";
	                draw_damage(other.id, damage_syntax(a),c_red);
	                //if (owner.id=gamer.id and other.id = gamer.target and is_real(a)) then {other.id.damageReceived += a;} //check if gamer inflicted more than 50% of the total health, if yes, then got the kill as well
	            }
	            else if (owner.target = gamer.id){
	                if(a == 0) {a = "MISS"}
	                draw_damage(gamer.id,damage_syntax(a),make_color_rgb(183,73,191)); //c_purple
	            }
	        }
			instance_destroy();
	}
}



/*
if object_index=x1ammo then{
if owner.fatlasers=1 then{
sprite_index=global.x1lasersFAT}
else{
sprite_index=global.x1lasers}}

else if object_index=x2ammo then{
if owner.fatlasers=1 then{
sprite_index=global.x2lasersFAT}
else{
sprite_index=global.x2lasers}}

else if object_index=x3ammo then{
if owner.fatlasers=1 then{
sprite_index=global.x3lasersFAT}
else{
sprite_index=global.x3lasers}}

else if object_index=x4ammo then{
if owner.fatlasers=1 then{
sprite_index=ubr;} //x4lasersFAT
else{
sprite_index=ubr;}} //x4lasers

else if object_index=sub_ammo then{
if owner.fatlasers=1 then{
sprite_index=global.sablasersFAT}
else{
sprite_index=global.sablasers}}

else if object_index=rsb_obj or object_index=rsb_75 then{
if owner.fatlasers=1 then{
sprite_index=global.rsblasersFAT}
else{
sprite_index=global.rsblasers}}
