//look for character
var random_num = random_range(0, 2);
charcter_instance = instance_find(o_character, random_num)
move_towards_point(charcter_instance.x, charcter_instance.y, o_speed)

if (!alive) {
    instance_destroy();
}
