var x1 = argument0, y1 = argument1, x2 = argument2, y2 = argument3, cX = argument4, cY = argument5, cR = argument6;
{
    var denominator,mag,dx,dy,px,py,u;
    
    dx=x2-x1; dy=y2-y1;

    denominator=sqr(dx)+sqr(dy); if denominator <= 0 { return false }

    position=((cX-x1)*dx+(cY-y1)*dy)/denominator;
    px=x1+position*dx;
    py=y1+position*dy;

//tanget point
    m=point_distance(px,py,cX,cY)/cR;

    if m>1 { return false }

    offset=cR*sin(arccos(m));
    mag=sqrt(denominator);
    dx/=mag;
    dy/=mag;
    
//intersection points
    var ret; ret[0] = px - offset * dx; ret[1] = py - offset * dy; ret[2] = px + offset * dx; ret[3] = py + offset * dy
    
    var xL = abs((x2 - x1) + (y2 - y1));
    if abs((ret[2] - x1) + (ret[3] - y1)) > xL || abs((ret[2] - x2) + (ret[3] - y2)) > xL { ret[2] = 0; ret[3] = 0 }
    if abs((ret[0] - x1) + (ret[1] - y1)) > xL || abs((ret[0] - x2) + (ret[1] - y2)) > xL { ret[0] = ret[2]; ret[1] = ret[3]; ret[2] = 0; ret[3] = 0 }
    if !point_in_circle(x1, y1, cX, cY, cR) && !point_in_circle(x2, y2, cX, cY, cR) && ret[0] + ret[1] + ret[2] + ret[3] = 0 { return false }
    
    return ret;
}
