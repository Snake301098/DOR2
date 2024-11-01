/// @description
function select_target_mob(owner_id){
	//owner_id = owner id
	var mobs_list=ds_list_create();
	var nbr_mobs = collision_circle_list(owner_id.x, owner_id.y, irandom_range(500,750), mob, false, true, mobs_list, true);
	for (i=1; i<=nbr_mobs; i+=1)
	{
		target=mobs_list[|i-1]; 
		with(owner_id){path_end();}
		exit;
	}
}