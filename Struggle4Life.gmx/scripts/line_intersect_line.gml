var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var x3 = argument4;
var y3 = argument5;
var x4 = argument6;
var y4 = argument7;

var CmPx = x3 - x1;
var CmPy = y3 - y1;
var rx = x2 - x1;
var ry = y2 - y1;
var sx = x4 - x3;
var sy = y4 - y3;

var CmPxr = CmPx * ry - CmPy * rx;
var CmPxs = CmPx * sy - CmPy * sx;
var rxs = rx * sy - ry * sx;

if (CmPxr == 0) {
    return ((x3 - x1 < 0) != (x3 - x2 < 0)) 
        || ((y3 - y1 < 0) != (y3 - y2 < 0));
}
 
if (rxs == 0) {
    return false; // Lines are parallel.
}
 
var rxsr = 1 / rxs;
var t = CmPxs * rxsr;
var u = CmPxr * rxsr;
 
return (t >= 0) && (t <= 1) && (u >= 0) && (u <= 1);
