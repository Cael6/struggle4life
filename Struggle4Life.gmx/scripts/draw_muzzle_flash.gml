draw_sprite_ext(sprite_index, -1, x, y, 1, 1, angle, c_white, alpha);
draw_set_alpha(alpha/2);
draw_set_color(c_white);
draw_rectangle(0, 0, ROOM_WIDTH, ROOM_HEIGHT, false);
draw_set_alpha(1);

