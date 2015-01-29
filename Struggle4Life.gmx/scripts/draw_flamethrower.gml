if(drawing) {
    draw_set_alpha(0.4);
    draw_set_color(make_color_rgb(0, 0, 80));
    draw_circle(
        obj_get_center_x(character),
        obj_get_center_y(character),
        radius,
        false
    );
    draw_set_alpha(1);
}
