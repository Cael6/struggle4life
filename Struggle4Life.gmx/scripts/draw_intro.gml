draw_set_alpha(alpha);
if (draw_struggle_soft) {
    draw_sprite(s_struggle_soft_intro, min(64, time), 0, 0);
    draw_set_color(make_color_rgb(36,36,36));
    draw_rectangle(0, 0, ROOM_WIDTH, 47, false);
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
