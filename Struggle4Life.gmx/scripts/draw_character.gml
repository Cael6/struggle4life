draw_sprite(body_sprite, image_index, x, y);
draw_sprite(head_sprite, image_index, x, y);
draw_sprite(shirt_sprite, image_index, x, y);
draw_sprite(pants_sprite, image_index, x, y);
draw_sprite(shoes_sprite, image_index, x, y);
draw_sprite(weapon.sprite_index, image_index, x, y);

if (state == CHARACTER_STATE_BATTLE && hover) {
    draw_sprite(hover_sprite, image_index, x, y);
}