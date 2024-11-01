healingammount=round(irandom_range(800,1200)/1000*20000);
target.own_health+=healingammount;
draw_damage(target.id,damage_syntax(healingammount),c_lime);