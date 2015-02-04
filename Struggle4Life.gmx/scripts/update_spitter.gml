//look for character
if (-1 == target) {
    infected_find_target();
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
    speed = 0;
    if (0 == weapon.curr_cooldown) {
        with (weapon) {
            fire_weapon();
        }
        if (!target.alive) {
            infected_find_target();
        }
    }
}
