var char_x = CHARACTER_POSITION_MAP_X;
var char_y = CHARACTER_POSITION_MAP_Y;
var character_instance = 0;

var character_1 = instance_create(
    0, 
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

//Make instances of ammo and fuel
ammo = instance_create(0,0, o_resource_ammo);
fuel = instance_create(0,0, o_resource_fuel);

switch_bg_music(so_bg_game);

goto_r_map();
