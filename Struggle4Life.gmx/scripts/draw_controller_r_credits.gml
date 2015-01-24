draw_set_halign(fa_center);

//Draw Title
draw_set_color(CREDITS_TITLE_COLOR);
draw_set_font(CREDITS_TITLE_FONT);
draw_text_ext(
    self.title_x, 
    self.title_y, 
    self.title_text, 
    CREDITS_TITLE_LINE_SEP, 
    ROOM_WIDTH - 2 * CREDITS_PADDING
);

//Draw Text
draw_set_color(CREDITS_TEXT_COLOR);
draw_set_font(CREDITS_TEXT_FONT);
draw_text_ext(
    self.text_x,
    self.text_y,
    self.text,
    CREDITS_TEXT_LINE_SEP,
    ROOM_WIDTH - 2 * CREDITS_PADDING
);
    