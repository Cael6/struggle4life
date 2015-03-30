move_towards_point(target.x, target.y, speed);
if (
    rectangle_in_rectangle(
        target.x,
        target.y,
        target.x + target.width,
        target.y + target.height,
        x,
        y,
        x + width,
        y + width
    )
) {
    with (weapon) {
        fire_weapon();
    }
    instance_destroy();
}
