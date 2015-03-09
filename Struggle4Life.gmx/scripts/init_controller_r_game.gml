for (var i = 0; i < 5; i += 1) {
    background_visible[i] = false;
}

background_visible[irandom(4)] = true;

/*
var infected, infected_x, infected_y, infected_weapon, infected_oi,
    infected_weapon_oi;
for (i = 0; i < glb_room_count; i += 1) {
    var random_infected_spawner = irandom(2);
    
    infected_x = ROOM_WIDTH + irandom(200);
    infected_y = irandom_range(100, ROOM_HEIGHT - sprite_get_height(s_runner));
    
    switch (random_infected_spawner) {
        case 0:
            infected_oi = o_runner;
            break;
        case 1:
            infected_oi = o_spitter;
            break;
        case 2:
            infected_oi = o_bruiser;
            break;
    }
    
    infected = instance_create(infected_x, infected_y, infected_oi);
}
*/

with (o_character) {
    x = battle_position_x;
    y = battle_position_y;
    state = CHARACTER_STATE_BATTLE;
}

get_plot_scenario();
