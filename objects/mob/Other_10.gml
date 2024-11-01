var a,b;
with (way) {if owner=other.id then instance_destroy()};
a:=choose(sprite_width,room_width-sprite_width);
b:=choose(sprite_height,room_height-sprite_height);
with(instance_create_depth(a,b,0,way)) {owner:=other.id;}