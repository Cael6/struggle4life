if (self.drawing) {
    draw_sprite_ext(
        self.aoe_sprite,
        image_index,
        target_x,
        target_y,
        radius / max_radius,
        radius / max_radius,
        0,
        c_white,
        1
    );
}