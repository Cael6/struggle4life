//var rec = instance_create(0,0,o_dialogue);

//Randomly pick a map
var main_map = instance_create(100,100,o_main_map)
var map_type = irandom_range(1, 3)
if(glb_level == 0){
    map_type = 1;
}

with(main_map){
    set_main_map(map_type);
}

var char_x = CHARACTER_POSITION_MAP_X;
var char_y = CHARACTER_POSITION_MAP_Y;
var counter = 0;
var character;

for (var i = 0; i < array_length_1d(glb_characters); i += 1) {
    character = glb_characters[i];
    character.x = char_x;
    character.y = char_y;
    character.state = CHARACTER_STATE_DISPLAY;
    char_x = char_x + CHARACTER_POSITION_MAP_INTERVAL;
}


