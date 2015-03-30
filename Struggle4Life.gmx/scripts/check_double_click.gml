if (first_click_time != -1) {
    first_click_time += 1;
}

if (check_left_click()) {
    if (first_click_time == -1) {
        first_click_time = 0;
    } else  if (first_click_time < 30) {
        if (!double_click_action) {
            //Mouse released and intersecting fire script
            execute_self_action();
            if(sound > -1) {
                play_sound_effect(sound, false);
            }
            click_start = false;
            return true;
        } else {
            execute_action(self.double_click_action);
            click_start = false;
            return true;
        }
    } else {
        //Time is over double click time count as a first click
        first_click_time = 0;
    }
}
