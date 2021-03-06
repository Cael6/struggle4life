//Updated r_game
if (!check_characters_alive()) {
    var controller = o_controller_r;
    controller.state = STATE_NOT_BATTLE;
    if(instance_find(o_dialogue, 0 ) < 0) { 
        get_scenario_dialogue(SCENARIO_GAME_OVER);
    }
}

if (is_additional_update) {
    script_execute(additional_update);
}

if (!room_transfering && state_is_battle() && !check_enemies_alive() && enemy_spawner_finished()) {
    room_transfering = true;
    transfer_script = get_to_safe_zone;
    //clear dead bodies
    with (o_character) {
        if (!alive) {
            with (weapon) {
                instance_destroy();
            }
            with (pistol) {
                instance_destroy();
            }
            instance_destroy();
        }
    }
}
