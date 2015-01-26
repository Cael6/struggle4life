//init o_label_guns
character = -1

s_current = 0;
s_max = 0;

s_list = make_sprite_list(
             "Shot gun", "SHOTGUN",
             "Sniper Rifle", "SNIPER",
             "Assult Rifle", "ASSULT",
             "Frame Thrower", "FRAME",
         );
s_max = array_length_2d(s_list, 0) + 1;

update_o_label(s_list[0,0], BUTTON_WIDTH, BUTTON_HEIGHT, BUTTON_TEXT_COLOR);