
if (selected && mouse_check_button_released(mb_right)) {
    self.using_weapon = !self.using_weapon;
    
    if (using_weapon) {
        cursor_sprite = self.weapon.aoe_sprite;
    } else {
        cursor_sprite = s_pistol_aoe;
    }
}

if (selected && mouse_check_button_released(mb_left)) {
    with (weapon) {
        fire_weapon();
    }
}
