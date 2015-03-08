var message = argument0;
var start_x = argument1;
var start_y = argument2;
var padding = argument3;

var margin = 10;
var helper_height = string_height(message) + 2 * padding;
var helper_width = string_width(message) + 2 * padding;

draw_set_color(c_black);
draw_set_alpha(0.8);
draw_set_font(f_oswald);
draw_roundrect(
    start_x,
    start_y,
    start_x + helper_width,
    start_y + helper_height,
    false
);

draw_set_color(c_white);
draw_roundrect(
    start_x,
    start_y,
    start_x + helper_width,
    start_y + helper_height,
    true
);

draw_set_halign(fa_left);
draw_text(
    start_x + padding,
    start_y + padding,
    message
);
