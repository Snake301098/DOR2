/// @description PET

if global.pet_unlocked = 1
{
	if instance_exists(PET)
	{
		with(PET) {if owner = gamer.id then {instance_destroy()}}
	}
	else
	{
		var _x = gamer.x + irandom_range(-100,100)
		var _y = gamer.y + irandom_range(-100,100)
		var _pet = instance_create_depth(_x,_y,-2,PET);
		_pet.owner = gamer.id
	}
}
else
{
	show_message("PET not unlocked");
}
	
	