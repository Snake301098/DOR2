/// @description 
/// @description Insert description here
// You can write your code in this editor
x=0;
y=0;
active_tab = "CARGO";

//ORES
ores_qty=global.ores_qty;
ores_sprites=[prometium_spr, endurium_spr, terbium_spr, prometid_spr, duranium_spr, promerium_spr, seprom_spr, palladium_spr];
ores_color=[c_maroon, c_teal, c_olive, c_fuchsia, c_green, c_orange, c_purple, c_aqua]
total=global.cargo_max;

//STORAGE
storage_qty=global.storage_qty;
total_storage=global.storage_max;

//TRANSFER
transfer_prometium = 0;
transfer_endurium = 0;
transfer_terbium = 0;
transfer_prometid = 0;
transfer_duranium = 0;
transfer_promerium = 0;
transfer_seprom = 0;
transfer_palladium = 0;
transfer_qty=[0, 0, 0, 0, 0, 0, 0, 0];
total_transfer = global.transfer_capacity;
transfer_used = global.transfer_used;

//PIECES
pieces_qty = global.pieces_qty;
capacity_pieces = global.pieces_capacity;

//init user events
event_user(0); //creation in the main tabs
event_user(1); //creation in the sub tabs