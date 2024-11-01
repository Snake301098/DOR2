/// @description TRANSFER ORES
/*
//DOING PRE TRANSFER LIMIT CHECKS
for(i=0; i<8; i+=1)
{
	if transfer_qty[i] > ores_qty[i] then {show_message("Cannot transfer more than quantity in storage");exit;}
}

if get_current_transfer(transfer_qty) <= 0 then {show_message("Select ores to be transfered to storage");exit;}

if get_current_transfer(transfer_qty) > total_transfer then {show_message("Cannot transfer more than total transferable quantity");exit;}

if get_current_storage() + get_current_transfer(transfer_qty) > total_storage then {show_message("Total storage cannot receive this quantity");exit;}

//OK TO TRANSFER
for(i=0; i<8; i+=1)
{
	storage_qty[i] += transfer_qty[i];
	ores_qty[i] -= transfer_qty[i];
	transfer_qty[i] = 0;
}

//CARGO
global.prometium=ores_qty[0]
global.endurium=ores_qty[1]
global.terbium=ores_qty[2]
global.duranium=ores_qty[3]
global.prometid=ores_qty[4]
global.promerium=ores_qty[5]
global.seprom=ores_qty[6]
global.palladium=ores_qty[7]
	
//STORAGE
global.storage_prometium=storage_qty[0]
global.storage_endurium=storage_qty[1]
global.storage_terbium=storage_qty[2]
global.storage_duranium=storage_qty[3]
global.storage_prometid=storage_qty[4]
global.storage_promerium=storage_qty[5]
global.storage_seprom=storage_qty[6]
global.storage_palladium=storage_qty[7]

show_message("Transfer done")
global.transfer_used = true;