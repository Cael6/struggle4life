draw_sprite(body_sprite, image_index, x, y);

if (gun_hover) {
    draw_sprite(hover_sprite, image_index, x, y);
}

draw_healthbar(
    x,
    y - 4,
    x + width,
    y,
    hp/max_hp * 100,
    make_color_rgb(0,0,0),
    make_color_rgb(255, 0, 0),
    make_color_rgb(255, 0, 0),
    0,
    false,
    false
);
