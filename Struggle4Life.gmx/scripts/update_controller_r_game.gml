//Updated r_game
if (!check_characters_alive()) {
    var controller = o_controller_r;
    controller.state = STATE_NOT_BATTLE;
    if(instance_find(o_dialogue, 0 ) < 0) { 
        get_scenario_dialogue(SCENARIO_GAME_OVER);
    }
}

if (state == STATE_BATTLE && !check_enemies_alive()) {
    get_to_safe_zone();
}