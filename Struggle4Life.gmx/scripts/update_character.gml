if (selected) {

    if (keyboard_check_pressed(vk_escape)) {
        deselect_character();
    }

    if (mouse_check_button_released(mb_right)
        || keyboard_check_released(vk_tab)) {
        self.using_weapon = !self.using_weapon;
    }
    
    if (mouse_check_button_pressed(mb_left)) {
        if (using_weapon) {
            with (weapon) {
                fire_weapon();
            }
        } else {
            with (pistol) {
                fire_weapon();
            }
        }
    }
} else {
    if (keyboard_check_pressed(keypress)) {
        with (glb_selected) {
            deselect_character();
        }
        select_character();
    }
}
