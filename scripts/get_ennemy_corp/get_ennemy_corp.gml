/// @description
function get_ennemy_corp(_corp)
{
	if _corp = 0 then return(choose(1,2));
	if _corp = 1 then return(choose(0,2));
	if _corp = 2 then return(choose(0,1));
}