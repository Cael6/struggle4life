get_scenario_dialogue(SCENARIO_GAME_START);
randomize();
state = STATE_NOT_BATTLE;
var infected, infected_x, infected_y, infected_weapon, infected_oi,
    infected_weapon_oi;
for (i = 0; i < 10; i += 1) {
    var random_infected_spawner = irandom(4);
    var top = irandom(1);
    
    if (top) {
        infected_x = irandom(ROOM_WIDTH);
        infected_y = -irandom(ROOM_HEIGHT);
    } else {
        infected_x = ROOM_WIDTH + irandom(ROOM_WIDTH);
        infected_y = irandom(ROOM_HEIGHT - sprite_get_height(s_runner));
    }
    
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
        case 3:
            infected_oi = o_sprinter;
            break;
        case 4:
            infected_oi = o_shooter;
            break;
    }
    
    infected = instance_create(infected_x, infected_y, infected_oi);
}

ammo = instance_create(0,0, o_resource_ammo);
fuel = instance_create(0,0, o_resource_fuel);
