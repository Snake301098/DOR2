var a,b,c,healthAbsord,shieldAbsorb,shieldPen,healthAbsorb;
if owner.target=other.id then
    {
        if other.is_using_ish=1 then {a=0} else
        {
            //Hit calculation etc
                if (irandom_range(0,100) < 80){
                if (!is_real(damage)){ damage=0; drawDamage=false;}
                    a=round((damage*damage_x)-irandom((damage*damage_x)*0.15))
                    c = a-other.own_shield
                    if (c < 0) c = 0;
                    
                    //Absorbation
                    if(object_get_parent(other.object_index) == mob
                    || other.object_index == mob){
                        shieldAbsorb = 0.90;
                        healthAbsorb = 0.10;
                    }else{
                        shieldAbsorb = other.shieldAbsorb;
                        shieldPen = owner.shieldPen;
                        shieldAbsorb -= shieldPen;
                        healthAbsorb = 1-shieldAbsorb;
                        if (healthAbsorb < 0) healthAbsord = 0;
                        if (shieldAbsorb > 1) shieldAbsorb = 1;
                    }
                    //Quick thingy for energyleech
                    restoredHP = a*healthAbsorb;
                }else{a=0;}
        //Dealing damage.        
        //- Damage is NOT 0
        if(a != 0){     
			
			/*
            //- We"re using SAB
            if(object_index == sub_ammo){
                if (other.own_shield > 0){
                    if (other.own_shield < a){
                        myOwner.own_shield += other.own_shield;
                        other.own_shield -= a;
                    }
                    else{
                        other.own_shield -= a;
                        myOwner.own_shield += a;
                    }
                }
            } else{*/
            //Not using SAB
                if(other.own_shield <= 0){
                    other.own_health-=a;
                }else{
                    other.own_shield-=a*shieldAbsorb;
                    other.own_health-=(a*healthAbsorb)+c;
                }
            }
        }
            if(!drawDamage){instance_destroy()}
            //Drawing damage
            else
			{
				if instance_exists(gamer.target)
				{
					if (drawDamage=true && owner.object_index == gamer.id || other.id == gamer.target)// || owner.id == PET.id)
					{
	               // if(a == 0 && object_index == rsb_obj || object_index == rsb_75) a="" else if(a == 0) a="MISS"
						draw_damage(other.id,a,c_red);
	                //if object_index=sub_ammo{}else{instance_destroy();}
					}
				}
	            if instance_exists(owner.target)
				{
					if (owner.target = gamer.id)
					{
		                if(a == 0) {a = "MISS"}
		                draw_damage(other.id,a,c_purple);
		            }
				}
			}
			instance_destroy()
            // else if object_index=sub_ammo{}else{instance_destroy();}
        }



/*
var a,b,c,healthAbsord,shieldAbsorb,shieldPen;
if owner.corporation!=other.corporation and other.v_zone_bz=false and owner.id != other.id  then
{
	if distance_to_object(gamer) < 1000 then {zz=instance_create_depth(x,y,other.depth-1,ammo_explosion); zz.owner=other.id;}
    if other.ish=1 then {a=0} else
    {	
		if drawDamage = true
		{
			damage_function(owner,other,damage,"ammo_mob",critical_hit)
		}
    }
	instance_destroy();
}