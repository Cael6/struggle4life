for (var i = 0; i < 5; i += 1) {
    background_visible[i] = false;
}

is_additional_update = false;
additional_update = -1;

background_visible[irandom(4)] = true;

with (o_character) {
    x = battle_position_x;
    y = battle_position_y;
    state = CHARACTER_STATE_BATTLE;
}

if (instance_number(o_enemy_spawner) == 0) {
    instance_create(0,0,o_enemy_spawner);
}

get_plot_scenario();

