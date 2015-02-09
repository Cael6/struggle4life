//Updated r_test

var one_alive = false;

with (o_character) {
    if (alive) {
        one_alive = true;
    }
}

//All defeated message
if( instance_number(o_infected) <= 0){
    show_dialog_battle_end();
}

//Game Over Message
if (!one_alive) {
    get_scenario_dialogue(SCENARIO_GAME_OVER);
}
