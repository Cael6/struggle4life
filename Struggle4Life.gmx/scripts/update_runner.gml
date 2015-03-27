if (is_in_battle && state_is_battle() && !glb_pause && alive) {
    if (!is_eating) {
        if (-1 == target) {
            ai_find_target();
        }
        
        if (
            rectangle_in_rectangle(
                target.x,
                target.y,
                target.x + target.width / 2,
                target.y + target.height,
                x,
                y,
                x + width,
                y + height
            ) > 0
        ) { //in range
            with (weapon) {
                fire_weapon();
            }
            if (!target.alive) {
                is_eating = true;
            }
            x = target.x + target.width / 2;
            y = target.y + target.height / 2 - 10;
            if (speed > 0) {
                attacking = true;
                sprite_index = attack_animation;
                image_index = 0;
                speed = 0;
            }
        } else {
            move_towards_point(
                target.x,
                target.y + target.height / 2,
                o_speed
            );
        }
    } else {
        //eat some more
    }
}

if (!state_is_battle() || glb_pause) {
    speed = 0;
}
