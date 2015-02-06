if (!is_eating) {
    if (-1 == target) {
        ai_find_target();
    }
    
    if (
        rectangle_in_rectangle(
            target.x,
            target.y,
            target.x + target.width,
            target.y + target.height,
            x,
            y,
            x + width,
            y + height
        )
    ) { //in range
        with (weapon) {
            fire_weapon();
        }
        if (!target.alive) {
            is_eating = true;
        }
        speed = 0;
    } else {
        move_towards_point(target.x, target.y, o_speed);
    }
} else {
    //eat some more
}
