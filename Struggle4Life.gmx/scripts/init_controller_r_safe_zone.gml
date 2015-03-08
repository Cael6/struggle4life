//Place character
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
