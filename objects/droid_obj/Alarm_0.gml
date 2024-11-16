//if pos>4 then speedn=3;
if pos=2 or pos=3 or pos=9 or pos=10  then speedn=1;
if pos=4 or pos=7 or pos=8 then speedn=2;
if owner=gamer.id then depth=-1 else depth=1;

    //New way for drone designs, should be ALOT faster AND shorter
	show_debug_message(owner)
    switch(owner.droid[pos,1]){
    
        case "flax":{
        
            switch(owner.droid[pos,4]){
                
                case "HAVOC": {sprite_index:=flax_havoc_spr; break;}
                case "HERCULES": {sprite_index:=flax_hercules_spr; break;}
                case "NORMAL": {sprite_index:=flax_spr; break;}
                default: {sprite_index:=flax_spr; break;}
                show_error(string(owner.droid[pos,4]),false)
            }
        break;
        }
        
        case "iris":{
            switch(owner.droid[pos,4]){
                
                case "HAVOC": {sprite_index:=iris_havoc_spr; break;}
                case "HERCULES": {sprite_index:=iris_hercules_spr; break;}
                case "NORMAL": {sprite_index:=iris_spr; break;}
                default: {sprite_index:=iris_spr; break;}
            }
        break;
        }
        
        case "apis":{
        
            switch(owner.droid[pos,4]){
                
                case "HAVOC": {sprite_index:=iris_havoc_spr; break;}
                case "HERCULES": {sprite_index:=iris_hercules_spr; break;}
                case "NORMAL": {sprite_index:=apis_spr; break;}
                default: {sprite_index:=apis_spr; break;}
            }
        break;
        }
        
        case "zeus":{
        
            switch(owner.droid[pos,4]){
                
                case "HAVOC": {sprite_index:=iris_havoc_spr; break;}
                case "HERCULES": {sprite_index:=iris_hercules_spr; break;}
                case "NORMAL": {sprite_index:=zeus_spr; break;}
                default: {sprite_index:=zeus_spr; break;}
            }
        break;
        }            
    }
	
x = owner.x
y = owner.y