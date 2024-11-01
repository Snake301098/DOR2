a-=.02;
yy-=.95;
scale+=0.006

if t = "0" then t = "MISS";

if instance_exists(idship) then
{
	if idship=gamer.id then x3=round(idship.x-50); else x3=round(idship.x);
	y3=round(idship.y+yy)
	if a<=0 instance_destroy();
} else instance_destroy();

