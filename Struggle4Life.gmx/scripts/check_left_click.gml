if (hover && mouse_check_button_pressed(mb_left)) {
    click_start = true;
}

if (click_start && mouse_check_button_released(mb_left)) {
    if (hover) {
        if (!mb_left_action) {
            //Mouse released and intersecting fire script
            execute_self_action();
        } else {
            execute_action(self.mb_left_action);
        }
    }
    click_start = false;
}
