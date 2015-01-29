var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;

var cx = argument4;
var cy = argument5;
var r = argument6;

var dx = x2 - x1;
var dy = y2 - y1;

var denominator = sqr(dx) + sqr(dy);

if (denominator <= 0) {
    return false;
}

var position = ((cx - x1) * dx + (cy - y1) * dy) / denominator;
var px = x1 + position * dx;
var py = y1 + position * dy;

var m = point_distance(px, py, cx, cy) / r;

if (m > 1) {
    return false;
}

var offset = r * sin(arccos(m));
var mag = sqrt(denominator);
dx /= mag;
dy /= mag;
    
//intersection points
var ret = array_1d(
    px - offset * dx,
    py - offset * dy,
    px + offset * dx,
    py + offset * dy
);
var xL = abs((x2 - x1) + (y2 - y1));

if (abs((ret[2] - x1) + (ret[3] - y1)) > xL 
    || abs((ret[2] - x2) + (ret[3] - y2)) > xL) {
    ret[2] = 0;
    ret[3] = 0;
}

if (abs((ret[0] - x1) + (ret[1] - y1)) > xL 
    || abs((ret[0] - x2) + (ret[1] - y2)) > xL) {
    ret[0] = ret[2];
    ret[1] = ret[3];
    ret[2] = 0;
    ret[3] = 0;
}

if (
    !point_in_circle(x1, y1, cx, cy, r) 
    && !point_in_circle(x2, y2, cx, cy, r) 
    && ret[0] + ret[1] + ret[2] + ret[3] == 0
) {
    return false 
}

return true;
