//init script for r_create_char init

//Make character
var character_1 = instance_create(736, 256, o_character);
var shotgun = set_shotgun(character_1);

with (character_1) {
    set_character(
        s_body_1, 
        s_head_1, 
        s_shirt_1, 
        s_pants_1, 
        s_shoes_1, 
        shotgun, 
        s_char_hover,
        "1"
    );
}

character_1.state = CHARACTER_STATE_DISPLAY;

//body button 
var body_button_back = instance_create(160, 224, o_button_back)
var body_button_next = instance_create(384, 224, o_button_next)

with (body_button_back) {
    set_o_button_back(
        instance_find(o_character, 0), 
        instance_find(o_label_body, 0), 
        update_o_button_back, 
        "BODY"
    );
}

with (body_button_next) {
    set_o_button_next(
        instance_find(o_character, 0), 
        instance_find(o_label_body, 0), 
        update_o_button_next, 
        "BODY"
    );
}

//head button 
var body_button_back = instance_create(160, 288, o_button_back)
var body_button_next = instance_create(384, 288, o_button_next)

with (body_button_back) {
    set_o_button_back(
        instance_find(o_character, 0), 
        instance_find(o_label_head, 0), 
        update_o_button_back, 
        "HEAD"
    );
}

with (body_button_next) {
    set_o_button_next(
        instance_find(o_character, 0), 
        instance_find(o_label_head, 0), 
        update_o_button_next, 
        "HEAD"
    );
}

//shirt button 
var body_button_back = instance_create(160, 352, o_button_back)
var body_button_next = instance_create(384, 352, o_button_next)

with (body_button_back) {
    set_o_button_back(
        instance_find(o_character, 0), 
        instance_find(o_label_shirt, 0), 
        update_o_button_back, 
        "SHIRT"
    );
}

with (body_button_next) {
    set_o_button_next(
        instance_find(o_character, 0), 
        instance_find(o_label_shirt, 0),
        update_o_button_next,
        "SHIRT"
    );
}

//pants button 
var body_button_back = instance_create(160, 416, o_button_back)
var body_button_next = instance_create(384, 416, o_button_next)

with (body_button_back) {
    set_o_button_back(
        instance_find(o_character, 0),
        instance_find(o_label_pants, 0),
        update_o_button_back,
        "PANTS"
    );
}

with (body_button_next) {
    set_o_button_next(
        instance_find(o_character, 0),
        instance_find(o_label_pants, 0),
        update_o_button_next,
        "PANTS"
    );
}

//shoes button 
var body_button_back = instance_create(160, 480, o_button_back)
var body_button_next = instance_create(384, 480, o_button_next)

with (body_button_back) {
    set_o_button_back(
        instance_find(o_character, 0),
        instance_find(o_label_shoes, 0),
        update_o_button_back,
        "SHOES"
    );
}
with (body_button_next) {
    set_o_button_next(
        instance_find(o_character, 0),
        instance_find(o_label_shoes, 0),
        update_o_button_next,
        "SHOES"
    );
}

//guns button 
var body_button_back = instance_create(160, 544, o_button_back)
var body_button_next = instance_create(384, 544, o_button_next)

with(body_button_back){
    set_o_button_back(
        instance_find(o_character, 0),
        instance_find(o_label_gun, 0), 
        update_o_button_back_guns,
        "GUNS"
    );
}
with(body_button_next){
    set_o_button_next(
        instance_find(o_character, 0),
        instance_find(o_label_gun, 0),
        update_o_button_next_guns,
        "GUNS"
    );
}

draw_sprite(shotgun.aoe_sprite, image_index, 500, 500);
