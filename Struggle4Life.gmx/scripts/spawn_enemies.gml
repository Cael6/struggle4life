//spawn_enemies( spawn_type, number_of_enemy)
var spawn_type = argument0
var number_of_enemy = argument1

var infected, infected_x, infected_y, infected_weapon, infected_oi,
    infected_weapon_oi;
    
var random_infected_spawner;

for (i = 0; i < number_of_enemy; i += 1) {
    //IMPLEMENTED IN BAD WAY, THESE KINDS OF IF STATEMENT SHOULD BE OUT IF LOOP
    switch(spawn_type) {
        case ENEMY_SPAWN_TURTORIAL: 
            random_infected_spawner = 0;
            break;
            
        case ENEMY_SPAWN_INFECTED:
            random_infected_spawner = irandom(2);
            break;
            
        case ENEMY_SPAWN_MARAUDERS:
            random_infected_spawner = irandom_range(3,4);
             break;
            
        case ENEMY_SPAWN_ALL:
            random_infected_spawner = irandom(4);
             break;
            
    }
    
    
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
        case 3:
            infected_oi = o_sprinter;
            break;
        case 4:
            infected_oi = o_shooter;
            break;
    }
    
    infected = instance_create(infected_x, infected_y, infected_oi);
}