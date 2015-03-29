var threat_count = 0;

last_flamethrower += 1;

with (o_infected) {
    if (alive && x < ROOM_WIDTH / 2) {
        threat_count += 1;
    }
}

if (last_flamethrower > 900 && threat_count > 5 && get_resource_count(RESOURCE_FUEL) > 0) {
    th_queue_push(s_tooltip_flamethrower);
    last_flamethrower = 0;
}

if (keyboard_check(ord('F'))) {
    last_flamethrower = 0;
    th_pop_specific(s_tooltip_flamethrower);
}