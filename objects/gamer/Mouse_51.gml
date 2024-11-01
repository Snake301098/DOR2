/*


target = noone;
target_looking_rocket_alpha = 1;
if instance_exists(window_background)=false and !instance_exists(window_ores) and destroyed=0 then
{
	attacking_laser=true;

	var a,b,c;
	//test if no target found
	targetfound=0;
	a:=instance_nearest(mouse_x,mouse_y,ship);
	b:=instance_nearest(mouse_x,mouse_y,mob);
	c:=instance_nearest(mouse_x,mouse_y,mob);

	if instance_exists(a) = false and instance_exists(b) = false and instance_exists(c) = false then exit
	else if instance_exists(a) = false and b.emp=0 then
	    {
	    if point_distance(mouse_x,mouse_y,b.x,b.y) < b.sprite_width//1.7 then //2.8 before, and now it's 2.8*0.75 
	        {   
	        if b != gamer.target then 
	            { gamer.target=b; targetfound=1; }
	        }
	        exit;
	    }
    
	else if instance_exists(b) = false and instance_exists(c) = false and a.emp=0 then
	    { 
	    if point_distance( mouse_x, mouse_y, a.x, a.y) < a.sprite_width//1.7 then 
	                {
	                    if a.corporation != gamer.corporation then 
	                        { gamer.target=a;targetfound=1; }
                    
	                }
	    exit;
	    } else

	//prot fix
	if point_distance(mouse_x,mouse_y,c.x,c.y) < point_distance(mouse_x,mouse_y,b.x,b.y) and point_distance(mouse_x,mouse_y,c.x,c.y) < point_distance(mouse_x,mouse_y,a.x,a.y) then 
	    { 
	    if point_distance( mouse_x, mouse_y, c.x, c.y) < c.sprite_width//1.7 then 
	                {
	                    if c != gamer.target then 
	                        { gamer.target=c;targetfound=1; }
                    
	                }
	                exit;
	    }
    
	else if instance_exists(b) = false and instance_exists(c) = false and c.emp=0 then
	    { 
	    if point_distance( mouse_x, mouse_y, c.x, c.y) < c.sprite_width//1.7 then 
	                {
	                    if c != gamer.target then 
	                        { gamer.target=c;targetfound=1; }
                    
	                }
	    exit;
	    }    
	//---    
    
	if point_distance(mouse_x,mouse_y,a.x,a.y) < point_distance(mouse_x,mouse_y,b.x,b.y) or (instance_exists(a) = false) then 
	    { 
	    if point_distance( mouse_x, mouse_y, a.x, a.y) < a.sprite_width//1.7 then 
	                {
	                    if a.corporation != gamer.corporation then 
	                        { gamer.target=a;targetfound=1; }
                    
	                }
	                exit;
	    }
	else 
	    {
	    if point_distance(mouse_x,mouse_y,b.x,b.y) < b.sprite_width//1.7 then 
	        {   
	        if b != gamer.target then 
	            { gamer.target=b;targetfound=1; }
	            exit;
	        }
	    }
	if targetfound=0 then gamer.target=noone;
}