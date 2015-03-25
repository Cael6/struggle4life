if (state_is_battle()) {
    time += 1;
    
    check_select_1_tooltip();
    check_select_2_tooltip();
    check_select_3_tooltip();
    
    check_1_dead_tooltip();
    check_2_dead_tooltip();
    check_3_dead_tooltip();
    
    check_no_ammo_tooltip();
    
    check_flamethrower_tooltip();
    
    if (array_length_1d(queue) > 1) {
        pop_time += 1;
    } else {
        //reset when there is no real item in queue in case one was popped off 
        //before pop time was reset.
        pop_time = 0;
    }
    if (pop_time > 90) {
        th_queue_pop();
        pop_time = 0;
    }
    
}
