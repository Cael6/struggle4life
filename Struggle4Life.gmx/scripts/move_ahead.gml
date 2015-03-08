destroy_dialogue();
glb_room_count += 1;

if (glb_room_count > 20) {
    get_scenario_dialogue(SCENARIO_GAME_WIN);
} else {
    //Generate next scenario
    goto_r_safe_zone();
}
