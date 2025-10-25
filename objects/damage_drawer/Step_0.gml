_ycoef*=0.92;
_scalecoef*=0.994;
_acoef*=0.92;
a-=.02*(1-_acoef);
yy-=5*_ycoef;
scale+=0.026*_scalecoef;

if t = "0" then t = "MISS";
if is_numeric(t) and is_nan(t) = false then
{
	t = dotString(round(t));
}

if instance_exists(idship) then
{
	x3=round(idship.x+5);
	y3=round(idship.y+yy)
	if a<=0 instance_destroy();
} else instance_destroy();

