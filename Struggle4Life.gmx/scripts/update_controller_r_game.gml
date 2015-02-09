//Updated r_game
if (!check_characters_alive()) {
    get_scenario_dialogue(SCENARIO_GAME_OVER);
}

if (state == STATE_BATTLE && !check_enemies_alive()) {
    get_scenario_dialogue(SCENARIO_SAFE_ZONE);
}
