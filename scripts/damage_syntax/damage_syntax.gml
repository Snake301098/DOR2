function damage_syntax(argument0=0){
//from 35462 to 35,462
var units, color2, fonter_, a;

if not is_real(argument0) then 
{
    return string(argument0)
} 
else 
{
    if argument0 < 1000 then {return string(round(argument0))}
    else
    {
        units = round(argument0 mod 1000);
        if units = 0 then return (string(round(argument0 div 1000)) + ",000") 
        else if (units > 0 and units <10) then return (string(round(argument0 div 1000)) + "," + string(units) + "00")
        else if (units >= 10 and units <100) then return (string(round(argument0 div 1000)) + "," + string(units) + "0")
        else return (string(round(argument0 div 1000)) + "," + string(units))
    }
}
}