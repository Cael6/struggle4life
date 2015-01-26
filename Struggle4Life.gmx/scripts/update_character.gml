
if (selected) {

    if (keyboard_check_pressed(vk_escape)) {
        deselect_character();
    }

    if (mouse_check_button_released(mb_right)) {
        self.using_weapon = !self.using_weapon;
    }
    
    if (mouse_check_button_released(mb_left)) {
        with (weapon) {
            fire_weapon();
        }
    }
}
