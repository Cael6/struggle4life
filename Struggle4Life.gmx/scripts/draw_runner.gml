draw_sprite(body_sprite, image_index, x, y);
if (state == CHARACTER_STATE_BATTLE && hover) {
    draw_sprite(hover_sprite, image_index, x, y);
}
if (gun_hover) {
    draw_sprite(hover_sprite, image_index, x, y);
}
