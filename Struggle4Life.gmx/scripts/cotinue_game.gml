//For Test
//Make character
var character_1 = instance_create(0, 
                                  0, 
                                  o_character
                  );
var assault = instance_create(0, 0, o_assault_rifle);
assault.character = character_1;

set_character(
    character_1,
    s_char_1, 
    s_char_1_hover, 
    assault
);

character_1.state = CHARACTER_STATE_DISPLAY;

var char_x = CHARACTER_POSITION_MAP_X;
var char_y = CHARACTER_POSITION_MAP_Y;
var counter = 0;
var character_instance = 0;

while (true) {
    character_instance = instance_find(o_character, counter);
    
    if (character_instance < 1) {
        break;
    }
    
    //textbox_instance = instance_find(o_textbox, counter);
    
    //character_instance.name = textbox_instance.txt;
    character_instance.depth -= counter;
    glb_characters[counter] = character_instance;
    counter += 1;
}


//Make instances of ammo and fuel
ammo = instance_create(0,0, o_resource_ammo);
fuel = instance_create(0,0, o_resource_fuel);

load_progress();

switch_bg_music(so_bg_game);

goto_r_safe_zone();