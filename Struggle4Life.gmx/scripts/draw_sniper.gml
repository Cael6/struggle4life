if (self.drawing) {
    var pos_start;
    var pos_end;
    pos_start[0] = self.character.x + self.character.width / 2;
    pos_start[1] = self.character.y + self.character.height / 2;
    pos_end[0] = mouse_x;
    pos_end[1] = mouse_y;
    
    var extended_line = extend_past_screen(pos_start, pos_end);
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_line_width(
        pos_start[0],
        pos_start[1],
        extended_line[0],
        extended_line[1],
        2
    );
    draw_sprite(self.aoe_sprite, image_index, mouse_x, mouse_y);
}