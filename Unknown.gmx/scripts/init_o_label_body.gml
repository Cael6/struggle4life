//init_o_label_body
s_current = 0;
s_max = 0;

s_list = make_sprite_list("Body 1", s_body_1, "Body 2", s_body_2, "Body 3", s_body_3);
s_max = array_length_2d(s_list, 0);

update_o_label(s_list[0,0], BUTTON_WIDTH, BUTTON_HEIGHT, BUTTON_TEXT_COLOR);