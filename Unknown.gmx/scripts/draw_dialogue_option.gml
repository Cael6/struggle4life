draw_set_halign(fa_left);
draw_set_font(DIALOGUE_FONT);
if(hover) {
    draw_set_color(DIALOGUE_OPTION_TEXT_COLOR_2);
} else {
    draw_set_color(DIALOGUE_OPTION_TEXT_COLOR_1);
}
draw_set_alpha(self.text_alpha);
draw_text_ext(
    x, 
    y, 
    self.text, 
    DIALOGUE_LINE_SEP, 
    DIALOGUE_WIDTH - 2 * DIALOGUE_PADDING
);