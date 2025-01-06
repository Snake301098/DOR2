function dotString(nbr,k_format=false)
{
	if nbr = "" then {return("");exit;}
	if k_format=true
	{
		var _base,_left,_right,_letter;
		if nbr < 1000
		{
			return(string(nbr))
		}
		else if nbr < 1000000
		{
			_base = 1000
			_letter = "k"
		}
		else if nbr < 1000000000
		{
			_base = 1000000
			_letter = "m"
		}
		else
		{
			_base = 1000000000
			_letter = "b"
		}		
		_left = nbr div _base
		_right = (nbr-_left * _base) div (_base/10);
		if _right = 0
		{
			return(string(_left)+_letter)
		}
		else
		{
			return(string(_left)+"."+string(_right)+_letter)
		}
	}
	else
	{
		strTEMP = string(nbr);
		if (string_length(strTEMP) <= 3) return strTEMP;

		for (l = string_length(strTEMP) - 2; l > 1; l -= 3) {

		    strTEMP = string_insert(",", strTEMP, l); }
    
		return strTEMP;
	}
}