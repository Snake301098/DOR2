///@description drones
var i;

if(id.object_index != gamer){
    
    //Yay... Random stuff kthnxbai
    __tmp = choose(1,2,1,2,3,3,3,3) 
    if(__tmp == 1){
        for(i=1; i<=10; i+=1){
            if(droid[i,1] != "" && droid[i,1] != "noone"){
                droid[i,4] = "HAVOC";
            }
        }
    }else if(__tmp == 2){
        for(i=1; i<=10; i+=1){
            if(droid[i,1] != "" && droid[i,1] != "noone"){
                droid[i,4] = "HERCULES";
            }
        }        
    }else{
        
        __tmp2 = choose(1,2)
        if(__tmp2 == 1){
                    for(i=1; i<=10; i+=1){
            if(droid[i,1] != "" && droid[i,1] != "noone"){
                droid[i,4] = choose("HERCULES","HAVOC","NORMAL");
            }
        }
        }else{
            for(i=1; i<=10; i+=1){
                if(droid[i,1] != "" && droid[i,1] != "noone"){
                    droid[i,4] = "NORMAL";
                }
            }
        }    
    }
	
} 


if !global.droid_enable exit;
//Replace 10th drones with apis and zeus
if(droid[9,1]!="noone" and droid[9,1]!=""){droid[9,1] = "apis"}
if(droid[10,1]!="noone" and droid[10,1]!=""){droid[10,1] = "zeus"}


/*
for (i=1; i<=10; i+=1)
    {
    //if instance_exists(droid[i,0]) then with(droid[i,0]) instance_destroy();
    if droid[i,1]!="noone" and droid[i,1]!="" then 
        {
	        droid[i,0]=instance_create_depth(x,y,-1,droid_obj);
	        droid[i,0].pos:=i;
	        droid[i,0].owner=id;
			if id=gamer.id then {droid[i,0].x=1920/2; droid[i,0].y=1080/2;}
        }
    }


   