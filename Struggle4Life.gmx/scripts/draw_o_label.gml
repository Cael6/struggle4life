//draw_self();
//draw_sprite(self.sprite, -1, self.x, self.y);

var text_max_width = self.width - 2 * BUTTON_PADDING;
var text_width = string_width_ext(self.text, BUTTON_LINE_SEP, text_max_width);
var text_height = string_height_ext(self.text, BUTTON_LINE_SEP, text_width);
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_set_font(BUTTON_FONT);
draw_text_ext(
    x + self.width / 2 - text_width / 2,
    y + self.height / 2 - text_height / 2,
    self.text,
    BUTTON_LINE_SEP,
    text_width
);
