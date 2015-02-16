//draw_self();
//draw_sprite(self.sprite, -1, self.x, self.y);

/*
draw_rectangle_colour(
    x,
    y,
    x + width,
    y + height,
    make_color_rgb(40, 40, 120),
    make_color_rgb(40, 40, 120),
    make_color_rgb(20, 20, 100),
    make_color_rgb(20, 20, 100),
    false
);*/

draw_set_halign(fa_center);
draw_set_color(self.text_color);
draw_set_font(BUTTON_FONT);
draw_text(
    x + self.width / 2,
    y + self.height / 2 - string_height(self.text) / 2,
    self.text
);
