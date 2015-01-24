
draw_set_halign(fa_left);
draw_set_font(DIALOGUE_FONT);

//Draw Rectangular background
draw_set_color(DIALOGUE_BACKGROUND_COLOR);
draw_set_alpha(DIALOGUE_BACKGROUND_ALPHA);
draw_roundrect_ext(
    x,
    y,
    x+DIALOGUE_WIDTH, 
    y+DIALOGUE_HEIGHT,
    DIALOGUE_RADIUS_X,
    DIALOGUE_RADIUS_Y,
    false
);

//Draw Text
draw_set_color(DIALOGUE_TEXT_COLOR);
draw_set_alpha(DIALOGUE_TEXT_ALPHA);
draw_text_ext_color(
    x + DIALOGUE_PADDING,
    y + DIALOGUE_PADDING,
    self.text,
    DIALOGUE_LINE_SEP,
    DIALOGUE_WIDTH - 2 * DIALOGUE_PADDING,
    DIALOGUE_TEXT_COLOR,
    DIALOGUE_TEXT_COLOR,
    DIALOGUE_TEXT_COLOR,
    DIALOGUE_TEXT_COLOR,
    DIALOGUE_TEXT_ALPHA
);
    