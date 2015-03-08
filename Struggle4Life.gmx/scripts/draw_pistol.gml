if (self.drawing) {
    draw_sprite(self.aoe_sprite, image_index, target_x, target_y);
    draw_set_alpha(0.1);
    draw_set_color(make_color_rgb(50, 50, 100));
    draw_circle(
        obj_get_center_x(character),
        obj_get_center_y(character),
        range,
        false
    );
    draw_set_alpha(1);
}