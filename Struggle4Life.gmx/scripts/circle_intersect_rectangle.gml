var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;

var cx = argument4;
var cy = argument5;
var r = argument6;

if (point_in_rectangle(cx, cy, x1, y1, x2, y2)) {
    return true;
}

//Not done in one if because gml doesn't exit conditions or'd 
// together even if the first is true. This way makes it faster.
if (circle_intersect_line(x1, y1, x1, y2, cx, cy, r)) {
    return true;
} else if (circle_intersect_line(x1, y2, x2, y2, cx, cy, r)) {
    return true;
} else if (circle_intersect_line(x2, y2, x2, y1, cx, cy, r)) {
    return true;
} else if (circle_intersect_line(x2, y1, x1, y1, cx, cy, r)) {
    return true;
}
//checked all sides no intersections
return false;