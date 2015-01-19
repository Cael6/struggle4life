//init o_label_head
s_current = 0;
s_max = 0;

s_list = make_sprite_list("Head 1", s_head_1, "Head 2", s_head_2, "Head 3", s_head_3);
s_max = array_length_2d(s_list, 0);

update_o_label(s_list[0,0], BUTTON_WIDTH, BUTTON_HEIGHT, BUTTON_TEXT_COLOR);