if (room_transfering) {
    draw_set_alpha(time / room_transfer_time);
    draw_set_color(make_color_rgb(10, 10, 10));
    draw_rectangle(0, 0, ROOM_WIDTH, ROOM_HEIGHT, false);
    draw_set_alpha(1);
}
