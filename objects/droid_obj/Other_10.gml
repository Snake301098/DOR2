 switch pos
{
case 1: next_x=owner.x+lengthdir_x(-250,owner.image_angle-150);
    next_y=owner.y+lengthdir_y(-250,owner.image_angle-150); break;
case 2:
    {next_x=owner.x+lengthdir_x(-250,owner.image_angle+150);
     next_y=owner.y+lengthdir_y(-250,owner.image_angle+150);} break;
case 3:
    {next_x=owner.x+lengthdir_x(100,owner.image_angle+100);
    next_y=owner.y+lengthdir_y(100,owner.image_angle+100);} break;
case 4:
    {next_x=owner.x+lengthdir_x(100,owner.image_angle-100);
     next_y=owner.y+lengthdir_y(100,owner.image_angle-100);} break;
case 5:
    {next_x=owner.x+lengthdir_x(200,owner.image_angle+0);
    next_y=owner.y+lengthdir_y(200,owner.image_angle-0);} break;
case 6:
    {next_x=owner.x+lengthdir_x(-250,owner.image_angle-100);
    next_y=owner.y+lengthdir_y(-250,owner.image_angle-100);} break;
case 7:
    {next_x=owner.x+lengthdir_x(-250,owner.image_angle+100);
    next_y=owner.y+lengthdir_y(-250,owner.image_angle+100);} break; 
case 8:
    {next_x=owner.x+lengthdir_x(250,owner.image_angle+0);
    next_y=owner.y+lengthdir_y(250,owner.image_angle+0);} break;
case 9:
    {next_x=owner.x+lengthdir_x(150,owner.image_angle-125);
    next_y=owner.y+lengthdir_y(150,owner.image_angle-125);} break;
case 10:
    {next_x=owner.x+lengthdir_x(150,owner.image_angle+125);
    next_y=owner.y+lengthdir_y(150,owner.image_angle+125);} break;
    }