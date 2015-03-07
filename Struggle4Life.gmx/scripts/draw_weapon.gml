if (drawing) {
    draw_set_alpha(0.3);
    draw_set_color(make_color_rgb(50, 50, 100));
    draw_circle(
        obj_get_center_x(character),
        obj_get_center_y(character),
        range * WEAPON_RANGE_DISTANCE,
        false
    );
    draw_set_alpha(1);
}
