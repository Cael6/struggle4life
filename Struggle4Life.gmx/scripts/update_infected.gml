var controller = o_controller_r;
if (controller.state == STATE_BATTLE) {
    self.is_in_battle = true;
} else {
    self.is_in_battle = false;
}

if (!alive) {
    if (death_animation != -1) {
        if (sprite_index != death_animation) {
            //Just died.
            image_index = 0;
            sprite_index = death_animation;
        }
        if (image_number == image_index + 1) {
            image_index -= 1;
            speed = 0;
            depth = 9999;            
        }
    } else {
        with (weapon) {
            instance_destroy();
        }
        instance_destroy();
    }
}

depth = ROOM_HEIGHT - (y + height);