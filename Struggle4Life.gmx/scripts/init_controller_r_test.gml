//r_test init
get_scenario_dialogue(0);

var character_1 = instance_create(320, 320, o_character);
var shotgun = create_shotgun(character_1);

with (character_1) {
    set_character(
        s_body_1, 
        s_head_1, 
        s_shirt_1, 
        s_pants_1, 
        s_shoes_1, 
        shotgun, 
        s_char_hover
    );
}

var character_2 = instance_create(394, 340, o_character);
var shotgun = create_shotgun(character_2);

with (character_2) {
    set_character(
        s_body_2, 
        s_head_2, 
        s_shirt_2, 
        s_pants_2, 
        s_shoes_2, 
        shotgun, 
        s_char_hover
    );
}

var character_3 = instance_create(480, 360, o_character);
var sniper = create_sniper(character_3);

with (character_3) {
    set_character(
        s_body_3, 
        s_head_3, 
        s_shirt_3, 
        s_pants_3, 
        s_shoes_3, 
        sniper, 
        s_char_hover
    );
}
