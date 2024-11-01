{
    for (i:=1; i<=12; i+=1)
        {
        instance_activate_object(droid[i,0]);
        with(droid[i,0])
            {
            //Ïîäòÿãèâàíèå
            switch pos 
                {
                case 1: x:=owner.x+lengthdir_x(108.02,owner.image_angle+178.94);
                    y:=owner.y+lengthdir_y(108.02,owner.image_angle+178.94); break;
                case 2:
                    {x:=owner.x+lengthdir_x(139.59,owner.image_angle-171.35);
                     y:=owner.y+lengthdir_y(139.59,owner.image_angle-171.35);} break;
                case 3:
                    {x:=owner.x+lengthdir_x(144.73,owner.image_angle+168.85);
                    y:=owner.y+lengthdir_y(144.73,owner.image_angle+168.85);} break;
                case 4:
                    {x:=owner.x+lengthdir_x(175.03,owner.image_angle+179.02);
                     y:=owner.y+lengthdir_y(175.03,owner.image_angle+179.02);} break;
                case 5:
                    {x:=owner.x+lengthdir_x(69.38,owner.image_angle-74.96);
                    y:=owner.y+lengthdir_y(69.38,owner.image_angle-74.96);} break;
                case 6:
                    {x:=owner.x+lengthdir_x(69.05,owner.image_angle+79.99);
                    y:=owner.y+lengthdir_y(69.05,owner.image_angle+79.99);} break;
                case 7:
                    {x:=owner.x+lengthdir_x(117.55,owner.image_angle-80.70);
                    y:=owner.y+lengthdir_y(117.55,owner.image_angle-80.70);} break; 
                case 8:
                    {x:=owner.x+lengthdir_x(119.60,owner.image_angle+84.24);
                    y:=owner.y+lengthdir_y(119.60,owner.image_angle+84.24);} break;
                case 9:
                    {x:=owner.x+lengthdir_x(92.23,owner.image_angle-99.36);
                    y:=owner.y+lengthdir_y(92.23,owner.image_angle-99.36);} break;
                case 10:
                    {x:=owner.x+lengthdir_x(97.74,owner.image_angle+103.61);
                    y:=owner.y+lengthdir_y(97.74,owner.image_angle+103.61);} break;
                case 11:
                    {x:=owner.x+lengthdir_x(103.94,owner.image_angle-59.98);
                    y:=owner.y+lengthdir_y(103.94,owner.image_angle-59.98);} break; 
                case 12:
                    {x:=owner.x+lengthdir_x(106.02,owner.image_angle+64.89);
                    y:=owner.y+lengthdir_y(106.02,owner.image_angle+64.89);} break;             
                }
            }            
        }
    DroidOff=false;
}