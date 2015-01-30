draw_set_font(f_oswald);
draw_set_color(c_white);
draw_set_alpha(0.8);
var text = "Infected Remaining: " + string(instance_number(o_infected));

draw_text(ROOM_WIDTH - string_width(text) - 7, 7, text);
draw_set_alpha(1)
