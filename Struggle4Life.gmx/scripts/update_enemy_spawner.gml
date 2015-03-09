if (enabled && state_is_battle()) {
    if (enemy_count < 1) {
        finished_spawning = true;
        enabled = false;
    } else {
        if (wave_timer == 0) {
            spawn_enemy_type();
            wave_timer = wave_time_diff;
        }
        wave_timer -= 1;
    }
}
