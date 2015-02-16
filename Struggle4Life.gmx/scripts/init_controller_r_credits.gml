
title_text = CREDITS_TITLE;
title_font = CREDITS_TITLE_FONT;

text = CREDITS_TEXT;
text_font = CREDITS_TEXT_FONT;

title_x = ROOM_WIDTH/2;
title_y = CREDITS_PADDING;

text_x = ROOM_WIDTH/2;
text_y = title_y + CREDITS_TITLE_LINE_SEP + CREDITS_PADDING;

start_timer = 60; //Wait 2 seconds before start scrolling

audio_play_sound(so_bg_menu, 10, true);
