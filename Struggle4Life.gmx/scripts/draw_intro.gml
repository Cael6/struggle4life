draw_set_alpha(alpha);
if (draw_struggle_soft) {
    draw_sprite(s_struggle_soft_intro, min(64, time), 0, 0);
} else if (draw_struggle_4_life) {
    draw_sprite_ext(
        s_struggle_4_life_intro,
        -1,
        ROOM_WIDTH / 2,
        ROOM_HEIGHT / 2,
        scale,
        scale,
        0,
        c_white,
        alpha
    );
}
