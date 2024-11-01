function text_add(argument0,argument1="",argument2="",argument3="",argument4="",argument5="",argument6="",argument7="",argument8="",){
	var i;
	args=[argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7,argument8]
	for (i:=8; i>=1; i-=1)
	    {
			argument0:=string_replace_all(argument0,"%"+string(i),string(args[i]));
	    }   
	argument0:=string_replace_all(argument0,"#","\n");
	return argument0
}