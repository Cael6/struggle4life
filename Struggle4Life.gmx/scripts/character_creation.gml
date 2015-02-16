//makes character creation box
//init script for r_create_char init
var start_width = argument0;
var start_height = argument1;
var char_num = argument2;
var rec_w_adjust = 318*2;
var rec_h_adjust = 286;

//Textbox position
//var textbox_h_adjust = 32;
//var textbox_w_adjust = 128;
var textlbl_h_adjust = 64;
var textlbl_w_adjust = 64;

var textbox_h_adjust = 80;
var textbox_w_adjust = 128*2.5;

//Character position
var char_h_adjust = 96;
var char_w_adjust = 32;

//Button addjustment 
var o_back_adjust = 16;
var o_next_adjust = 164;

//list instances addjustment
var list_h_adjust = 64;
var list_w_adjust = 222;
var list_offset = 32;

//Make frame rectangle
var rec = instance_create(0,0,o_rectangle);
with(rec){
    set_rec(start_width,
            start_height,
            (start_width + rec_w_adjust),
            (start_height + rec_h_adjust),
            c_white)
}

//Make name inputbox
var nameLbl = instance_create(start_width + textlbl_w_adjust,
                              start_height + textlbl_h_adjust,
                              o_label
              );
with(nameLbl) {
    update_o_label("Name: ", BUTTON_WIDTH, BUTTON_HEIGHT, BUTTON_TEXT_COLOR);
}
              
var textbox = instance_create((start_width + textbox_w_adjust) ,
                              (start_height + textbox_h_adjust) ,
                              o_textbox
              );

//Make character
var character_1 = instance_create((start_width + char_w_adjust), 
                                  (start_height + char_h_adjust), 
                                  o_character
                  );
var assault = instance_create(0, 0, o_assault_rifle);
assault.character = character_1;

set_character(
    s_body_1, 
    s_head_1, 
    s_shirt_1, 
    s_pants_1, 
    s_shoes_1, 
    assault, 
    s_char_hover,
    char_num,
    character_1
);

character_1.state = CHARACTER_STATE_DISPLAY;

//body button 
list_h_adjust = list_h_adjust + list_offset;
list_h_adjust = list_h_adjust + list_offset;

var nameLbl = instance_create(start_width + textlbl_w_adjust,
                              start_height + list_h_adjust,
                              o_label
              );
with(nameLbl) {
    update_o_label("Character: ", BUTTON_WIDTH, BUTTON_HEIGHT, BUTTON_TEXT_COLOR);
}

var body_instance = instance_create((start_width + list_w_adjust),
                                    (start_height + list_h_adjust), 
                                    o_label_body
                    )
var body_button_back = instance_create((start_width + list_w_adjust + o_back_adjust), 
                                       (start_height + list_h_adjust ), 
                                       o_button_back
                       )
var body_button_next = instance_create((start_width + list_w_adjust + o_next_adjust), 
                                       (start_height + list_h_adjust), 
                                       o_button_next
                       )
with (body_button_back) {
    set_o_button_back(
        character_1, 
        body_instance, 
        update_o_button_back, 
        "BODY"
    );
}

with (body_button_next) {
    set_o_button_next(
        character_1, 
        body_instance, 
        update_o_button_next, 
        "BODY"
    );
}
/*
//head button 
//update the position of the list 
list_h_adjust = list_h_adjust + list_offset;

var head_instance = instance_create((start_width + list_w_adjust),
                                    (start_height + list_h_adjust), 
                                    o_label_head
                    )
var button_back = instance_create((start_width + list_w_adjust + o_back_adjust), 
                                  (start_height + list_h_adjust ), 
                                   o_button_back
                   )
var button_next = instance_create((start_width + list_w_adjust + o_next_adjust), 
                                  (start_height + list_h_adjust), 
                                   o_button_next
                   )
with (button_back) {
    set_o_button_back(
        character_1, 
        head_instance, 
        update_o_button_back, 
        "HEAD"
    );
}

with (button_next) {
    set_o_button_next(
        character_1, 
        head_instance, 
        update_o_button_next, 
        "HEAD"
    );
}

//shirt button 
//update the position of the list 
list_h_adjust = list_h_adjust + list_offset;

var shirt_instance = instance_create((start_width + list_w_adjust),
                                    (start_height + list_h_adjust), 
                                    o_label_shirt
                    )
var button_back = instance_create((start_width + list_w_adjust + o_back_adjust), 
                                  (start_height + list_h_adjust ), 
                                   o_button_back
                   )
var button_next = instance_create((start_width + list_w_adjust + o_next_adjust), 
                                  (start_height + list_h_adjust), 
                                   o_button_next
                   )

with (button_back) {
    set_o_button_back(
        character_1, 
        shirt_instance, 
        update_o_button_back, 
        "SHIRT"
    );
}

with (button_next) {
    set_o_button_next(
        character_1, 
        shirt_instance,
        update_o_button_next,
        "SHIRT"
    );
}

//pants button 
//update the position of the list 
list_h_adjust = list_h_adjust + list_offset;

var pants_instance = instance_create((start_width + list_w_adjust),
                                    (start_height + list_h_adjust), 
                                    o_label_pants
                    )
var button_back = instance_create((start_width + list_w_adjust + o_back_adjust), 
                                  (start_height + list_h_adjust ), 
                                   o_button_back
                   )
var button_next = instance_create((start_width + list_w_adjust + o_next_adjust), 
                                  (start_height + list_h_adjust), 
                                   o_button_next
                   )

with (button_back) {
    set_o_button_back(
        character_1,
        pants_instance,
        update_o_button_back,
        "PANTS"
    );
}

with (button_next) {
    set_o_button_next(
        character_1,
        pants_instance,
        update_o_button_next,
        "PANTS"
    );
}

//shoes button 
//update the position of the list 
list_h_adjust = list_h_adjust + list_offset;

var shoe_instance = instance_create((start_width + list_w_adjust),
                                    (start_height + list_h_adjust), 
                                    o_label_shoes
                    )
var button_back = instance_create((start_width + list_w_adjust + o_back_adjust), 
                                  (start_height + list_h_adjust ), 
                                   o_button_back
                   )
var button_next = instance_create((start_width + list_w_adjust + o_next_adjust), 
                                  (start_height + list_h_adjust), 
                                   o_button_next
                   )

with (button_back) {
    set_o_button_back(
        character_1,
        shoe_instance,
        update_o_button_back,
        "SHOES"
    );
}
with (button_next) {
    set_o_button_next(
        character_1,
        shoe_instance,
        update_o_button_next,
        "SHOES"
    );
}
*/

/*
//guns button 
//update the position of the list 
list_h_adjust = list_h_adjust + list_offset;

var guns_instance = instance_create((start_width + list_w_adjust),
                                    (start_height + list_h_adjust), 
                                    o_label_gun
                    )

var button_back = instance_create((start_width + list_w_adjust + o_back_adjust), 
                                  (start_height + list_h_adjust ), 
                                   o_button_back
                   )
var button_next = instance_create((start_width + list_w_adjust + o_next_adjust), 
                                  (start_height + list_h_adjust), 
                                   o_button_next
                   )
                   
with(button_back){
    set_o_button_back(
        character_1,
        guns_instance, 
        update_o_button_back_guns,
        "GUNS"
    );
}
with(button_next){
    set_o_button_next(
        character_1,
        guns_instance,
        update_o_button_next_guns,
        "GUNS"
    );
}*/
