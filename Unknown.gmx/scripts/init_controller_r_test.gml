//r_test init
get_scenario_dialogue(0);

var character_1 = instance_create(320, 320, o_character);

var shotgun = create_shotgun();

with(character_1) {
    set_character(s_body_1, s_head_1, s_shirt_1, s_pants_1, s_shoes_1, shotgun, s_char_hover);
}