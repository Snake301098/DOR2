function draw_damage(ship_id,dmg,color){

a=instance_create_depth(round(0),round(0),-5500,damage_drawer)
a.idship=ship_id;
a.t=dmg; //dmg
a.color_1=color;
}