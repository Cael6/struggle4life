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

with (o_character) {
    //Heal
    hp = max_hp;
    state = CHARACTER_STATE_DISPLAY;
}

save_progress();
