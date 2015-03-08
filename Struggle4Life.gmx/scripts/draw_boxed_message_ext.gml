var message = argument0;
var start_x = argument1;
var start_y = argument2;
var padding = argument3;
var line_sep = argument4;
var max_width = argument5;
var align = argument6;

var helper_height = string_height_ext(message, line_sep, max_width) + 2 * padding;
var helper_width = string_width_ext(message, line_sep, max_width) + 2 * padding;

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

draw_set_halign(align);
var curr_x = start_x;

if (align == fa_left) {
    curr_x = start_x + padding
} else if (align == fa_center) {
    curr_x = start_x + helper_width / 2;
} else if (align == fa_right) {
    curr_x = start_x + helper_width - padding;
}

draw_text_ext(
    curr_x,   
    start_y + padding,
    message,
    line_sep,
    max_width
);
