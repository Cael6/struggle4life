if (self.drawing) {

    draw_set_alpha(0.7);
    draw_set_color(c_red);
    draw_line_width(
        obj_get_center_x(character),
        obj_get_center_y(character),
        target_x,
        target_y,
        2
    );
    draw_sprite(self.aoe_sprite, image_index, mouse_x, mouse_y);
    draw_set_alpha(1);
}