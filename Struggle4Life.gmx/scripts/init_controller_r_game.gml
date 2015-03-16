randomize();
background_index[0] = glb_game_bgs[irandom(14)];

is_additional_update = false;
additional_update = -1;

with (o_character) {
    x = battle_position_x;
    y = battle_position_y;
    state = CHARACTER_STATE_BATTLE;
}

if (instance_number(o_enemy_spawner) == 0) {
    instance_create(0,0,o_enemy_spawner);
}

get_plot_scenario();
