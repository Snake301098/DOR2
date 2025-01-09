var a;
/*if id=other.owner.target then
{
if lock_=false then 
    {
    target=other.owner;
    lock_:=true;
    with (ship) if (target=other.id) and (other.target!=id) 
        {
        target=noone;
        rounding[4]:=0;
        with (rounding[5]) instance_destroy();
        rounding[5]:=noone;
        }
    }
a:=other.id;
/*
if distance_to_object(gamer)<=1000 then

with(instance_create(a.x,a.y,laserdamage_expl))
    {
    if a.object_index=rocket then 
        {
        sprite_index:=choose(global.rocketDamage0,global.rocketDamage1,global.rocketDamage2,
        global.rocketDamage3,global.rocketDamage4);
        if point_distance(gamer.x,gamer.y,x,y) <= FMODSoundGetMaxDist(global.rocketDamage_s)
            {
            FMODSoundPlay3d(global.rocketDamage_s,x,y,0);
            }
        }
    owner:=other.id;
    event_user(0);
    if not other.expl_color=false then
        image_blend=other.expl_color;
    }
with(a) instance_destroy();
}