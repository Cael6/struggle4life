for (var i = 0; i < 5; i += 1) {
    background_visible[i] = false;
}

background_visible[irandom(4)] = true;

get_random_scenario();
randomize();
state = STATE_NOT_BATTLE;
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

var char_x = CHARACTER_POSITION_BATTLE_X;
var char_y = CHARACTER_POSITION_BATTLE_Y;

for (var i = 0; i < array_length_1d(glb_characters); i += 1) {
    character = glb_characters[i];
    character.x = char_x;
    character.y = char_y;
    character.state = CHARACTER_STATE_BATTLE;
    char_y = char_y + CHARACTER_POSITION_MAP_INTERVAL;
}
