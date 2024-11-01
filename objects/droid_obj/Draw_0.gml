//Ïðîðèñîâêà è ðàçâîðîò äðîèäîâ.

if owner!=gamer.id then
{
	alpha=1;
if view_current!=1
	{
	//draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,alpha);
	    image_xscale=global.scale;
	    image_yscale=global.scale;
	    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,alpha);
	}
}

if owner=gamer.id then
{
if global.cloaked = 1 then alpha=0.5
if global.cloaked = 0 then alpha=1
if destroyed=1 then alpha=0;
if view_current!=1
    {
    //draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,alpha);
        image_xscale=global.scale;
        image_yscale=global.scale;
        draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,alpha);
    }

}