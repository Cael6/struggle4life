if (keyboard_check_pressed(ord('F'))) {
    key_down = true;
}

if (key_down && keyboard_check_released(ord('F'))) {
    key_down = false;
    if (state_is_battle()) {
        if (get_resource_count(RESOURCE_FUEL) > 0) {
            with (weapon) {
                fire_weapon();
            }
            sprite_index = s_truck_fire;
            image_index = 0;
            change_resource_amount(RESOURCE_FUEL, -1);
        }
    }
}

if (
    sprite_index == s_truck_fire
    && image_index == image_number - 1
) {
    sprite_index = s_truck;
    image_index = 0;
}

if (key_down) {
    with (weapon) {
        drawing = true;
    }
} else {
    with (weapon) {
        drawing = false;
    }
}