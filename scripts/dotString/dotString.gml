function dotString(argument0){
	strTEMP = string(argument0);
	if (string_length(strTEMP) <= 3) return strTEMP;

	for (l = string_length(strTEMP) - 2; l > 1; l -= 3) {

	    strTEMP = string_insert(".", strTEMP, l); }
    
	return strTEMP;
}