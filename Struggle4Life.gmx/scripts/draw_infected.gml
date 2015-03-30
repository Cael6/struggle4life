if (alive) {
    if (!attacking) {
        draw_sprite(body_sprite, image_index, x, y);
    } else {
        draw_sprite(attack_animation, image_index, x, y);
    }
    
    if (gun_hover) {
        draw_sprite_ext(hover_sprite, image_index, x, y, 1, 1, 0, c_white, 1);
    }
    draw_set_alpha(0.5);
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
    draw_set_alpha(1);
} else if (death_animation != -1) {
    draw_sprite_ext(death_animation, image_index, x, y, 1, 1, 0, c_white, 1);
}
