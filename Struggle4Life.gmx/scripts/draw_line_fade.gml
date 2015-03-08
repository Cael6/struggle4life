var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var alpha = argument4;

var dx = x2 - x1;
var dy = y2 - y1;

if (abs(dy) <= 5 && abs(dx) <= 5) {
    return 1;
}


var cx = x1 + dx / 2;
var cy = y1 + dy / 2;

draw_set_alpha(alpha);

draw_line(x1, y1, cx, cy);
draw_line_fade(cx, cy, x2, y2, alpha * 0.8);