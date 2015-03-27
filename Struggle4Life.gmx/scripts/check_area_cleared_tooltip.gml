if (!check_enemies_alive() && enemy_spawner_finished()) {
    if (!area_cleared || array_length_1d(queue) == 1) {
        area_cleared = true;
        while (array_length_1d(queue) > 1) {
            th_queue_pop();
        }
        th_queue_push(s_tooltip_area_clear);
    }
} else {
    area_cleared = false;
}
