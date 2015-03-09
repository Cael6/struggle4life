//Place character
var char_x = CHARACTER_POSITION_MAP_X;
var char_y = CHARACTER_POSITION_MAP_Y;
var counter = 0;
var character;

if (glb_safe_zone_scenario_id != SCENARIO_SAFE_ZONE) {
    get_scenario_dialogue(glb_safe_zone_scenario_id);
}

if (glb_has_map) {
    o_button_map.enabled = true;
    o_button_map.visible = true;
} else {
    o_button_map.enabled = false;
    o_button_map.visible = false;
}

for (var i = 0; i < array_length_1d(glb_characters); i += 1) {
    character = glb_characters[i];
    character.x = char_x;
    character.y = char_y;
    character.state = CHARACTER_STATE_DISPLAY;
    char_x = char_x + CHARACTER_POSITION_MAP_INTERVAL;
    
    //Heal
    character.hp = character.max_hp;
}
