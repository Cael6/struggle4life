//Updated r_test

var one_alive = false;

with (o_character) {
    if (alive) {
        one_alive = true;
    }
}

if (!one_alive) {
    get_scenario_dialogue(1);
}