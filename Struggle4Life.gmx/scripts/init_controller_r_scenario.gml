for (var i = 0; i < 5; i += 1) {
    background_visible[i] = false;
}

background_visible[irandom(4)] = true;

scenario = instance_create(0,0,o_scenario);
state = STATE_NOT_BATTLE;

//Adjust character's position
var char_x = CHARACTER_POSITION_BATTLE_X;
var char_y = CHARACTER_POSITION_BATTLE_Y;

for (var i = 0; i < array_length_1d(glb_characters); i += 1) {
    character = glb_characters[i];
    character.x = char_x;
    character.y = char_y;
    character.state = CHARACTER_STATE_BATTLE;
    char_y = char_y + CHARACTER_POSITION_MAP_INTERVAL;
}
