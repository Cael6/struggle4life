if (self.drawing) {
    
    var extended_line = extend_past_screen(
        obj_get_center_x(character),
        obj_get_center_y(character),
        mouse_x,
        mouse_y
    );
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_line_width(
        obj_get_center_x(character),
        obj_get_center_y(character),
        extended_line[0],
        extended_line[1],
        2
    );
    draw_sprite(self.aoe_sprite, image_index, mouse_x, mouse_y);
}
