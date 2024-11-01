//Exports object id if sprite not found
if !sprite_exists(sprite_index) {show_error("Sprite not found for: " + string(object_index) + " "
+ string(name) + "#In room: " + string(room),false)}
//Makes sure you don't get shot while cloaked
if room!=GGA and room!=GGB and room!=GGY and room!=GGD then // and room!=GGE and room!=GGZ and room!=GGKR and room!=GGKA
{
	if instance_exists(gamer) then if target=gamer.id then{
	if global.cloaked=1 then{if attacking=true then {} else {target=noone;}}
	}
}
//EMP fix
//if target.emp=1 then {target:=noone;}
//Óíè÷òîæåíèå ìîáà, åñëè ó íåãî êîí÷èëàñü ïðî÷êà.

{
    if own_health <= 0
    {   instance_destroy();    }
}

if instance_exists(target) then 
{
	if own_health>=health_def*0.1 then //if not running
	{
		if distance_to_object(target) > 50 then move_towards_point(target.x,target.y,ship_speed) else move_towards_point(target.x,target.y,0);
	}
}



followHP = lerp(followHP, own_health, 0.02) //hit health bar point effect


/*

if instance_exists(target) then{
if distance_to_object(target) > range+sprite_width then
{attacking=false}}

if instance_exists(target) then {  
if distance_to_object(target) > range+sprite_width then {
        with (way) {if owner=other.id then instance_destroy()};
        with(instance_create_depth(target.x,target.y,0,way))
            {owner=other.id;}}              }
/*
//Prevents aliens from hauling up at top left
if distance_to_point(0,0) < 2000 and attacking=false
then {x=random_range(20,room_width-20); y=random_range(20,room_height-20)} 
*/
//Passive fix
/*
if passive=true then
{
with (way) {if owner=id and distance_to_object(id.target) > 500 then {instance_destroy()}}
}