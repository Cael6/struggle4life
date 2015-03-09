var base_alpha = 1;

if (!enabled) {
    base_alpha = 0.4;
}

if (hover && enabled) {
    draw_set_color(make_color_rgb(255, 255, 150));
} else {
    draw_set_color(self.text_color);
}

draw_set_alpha(base_alpha * 0.5);
draw_roundrect_ext(x, y, x + width, y + height, scale * 10, scale * 10, true);
draw_set_alpha(base_alpha);


draw_sprite_ext(s_eye_small, eye_get_sprite_index(), x, y, scale, scale, 0, c_white, base_alpha);

draw_set_halign(fa_center);
draw_set_font(BUTTON_FONT);
draw_text_ext_transformed(
    x + self.width / 2,
    y + self.height / 2 - string_height(self.text) * scale / 2,
    self.text,
    string_height("pl"),
    BUTTON_WIDTH,
    scale,
    scale,
    0
);

if (hover && !enabled && disabled_message != "") {
    draw_boxed_message_ext(disabled_message, mouse_x, mouse_y, 8, string_height("pl"), 150, fa_left);
}

draw_set_alpha(1);
