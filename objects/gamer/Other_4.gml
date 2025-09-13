//STARS
if room != shipload and room != startmenu
{/*
	_ps = part_system_create();
	_pemit1 = part_emitter_create( _ps );

	part_system_draw_order( _ps, true);
	part_type_shape( _ptype1, pt_shape_sphere );
	part_type_size( _ptype1, 0.8, 1.2, 0, 0 );
	part_type_scale( _ptype1, 0.1, 0.1);
	part_type_speed( _ptype1, 0, 0, 0, 0);
	part_type_direction( _ptype1, 0, 0, 0, 0);
	part_type_gravity( _ptype1, 0, 270);
	part_type_orientation( _ptype1, 0, 0, 0, 0, false);
	part_type_colour3( _ptype1, $7F7FFF, $FFFFFF, $FFEFBC );
	part_type_alpha3( _ptype1, 1, 1, 1);
	part_type_blend( _ptype1, true);
	part_type_life( _ptype1, 1000000, 1000000);*/

	global.stars_sys = part_system_create();
	global._pemit1 = part_emitter_create( global.stars_sys );
	global.stars = part_type_create();
	part_type_life(global.stars,10000000,10000000);
	part_type_sprite(global.stars,star_spr,0,0,0);
	//part_type_size(global.stars,0.5,1,0,0.5);
	part_type_size(global.stars,0.8,1.3,0,0.1);
	
	//part_emitter_region( _ps, _pemit1, -364, 364, -364, 164, ps_shape_rectangle, ps_distr_linear );
	//part_emitter_stream(_ps, _pemit1, _ptype1, 1);
	//part_emitter_burst(_ps, _pemit1, _ptype1, 30);

	//part_emitter_region( global.stars_sys, global._pemit1, 0, room_width, 0, room_height, ps_shape_rectangle, 0);

	part_system_position(global.stars_sys, 0,0);
	part_emitter_region( global.stars_sys, global._pemit1, -1000, room_width+1000, -1000, room_height+1000, ps_shape_rectangle, 0);
	part_emitter_burst(global.stars_sys, global._pemit1, global.stars, round(sqrt(room_width*room_height)));


	//part_system_position(_ps, gamer.x, gamer.y);
}



//if dead respawn

with(droid_obj){x=owner.x;y=owner.y}

//RESPAWN AT BASE
if destroyed=1
{
	var oBase=instance_nearest(gamer.x,gamer.y,base);
	gamer.x=oBase.x
	gamer.y=oBase.y
	gamer.own_health=30000;
	gamer.destroyed=0;
	with(droid_obj){if owner=gamer.id then destroyed=0}
	instance_destroy(respawn);
}

event_user(0);