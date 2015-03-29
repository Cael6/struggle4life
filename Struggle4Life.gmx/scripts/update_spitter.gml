if (is_in_battle && state_is_battle() && !glb_pause && alive) {
    //look for character
    if (alive) {
        if (-1 == target) {
            ai_find_target();
        }
        
        if (
            distance_between_points(
                x + width / 2,
                y + height / 2,
                target.x + target.width / 2,
                target.y + target.height / 2
            ) > WEAPON_RANGE_DISTANCE * WEAPON_SPITTER_RANGE
        ) {
            move_towards_point(target.x, target.y, o_speed);
        } else {
            if (speed > 0) {
                attacking = true;
                sprite_index = attack_animation;
                image_index = 0;
                speed = 0;
            }
            if (0 == weapon.curr_cooldown) {
                if (!target.alive) {
                    ai_find_target();
                }
                fire_spitter();
                weapon.curr_cooldown = weapon.cooldown;
            }
        }
    }
}

if (!state_is_battle() || glb_pause) {
    speed = 0;
}