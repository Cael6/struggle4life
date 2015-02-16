var controller = o_controller_r;
var go_next = false;

var infected, infected_x, infected_y, infected_weapon, infected_oi,
        infected_weapon_oi, scenario_tut;

scenario_tut = self.id;
        
switch (scenario_step) {
    //Create enemy
    case 0:
        //Set enemy
        infected_x = ROOM_WIDTH - 200;
        infected_y = irandom_range(100, ROOM_HEIGHT - sprite_get_height(s_runner));
        infected_oi = o_runner;
        infected = instance_create(infected_x, infected_y, infected_oi);
        infected.o_speed = ENEMY_RUNNER_SPEED / 4;
    
        //Show dialogue about intro
        get_tutorial_dialogue(SCENARIO_TUTORIAL_ROOM1_1); 
        
        scenario_step += 1;
    
    //Show dialogue about switching to pistol 
    case 1:
        //Change the flag if infected health = 1.
        with (o_runner) {
            if (hp == 1) {
                //Show dialogue about weapon switch when enemy's HP is 1.
                get_tutorial_dialogue(SCENARIO_TUTORIAL_ROOM1_3);       
                scenario_tut.scenario_step += 1;
            }
        }
        
        break;
        
    //If enemy is gone, show dialogue about more enemies.
    case 2:
        if (instance_find(o_runner, 0) < 0) {
            get_tutorial_dialogue(SCENARIO_TUTORIAL_ROOM1_4);       
            scenario_step += 1;
        }
        break;
    
    //When the dialogue is closed, add enemies
     case 3:      
        if (instance_find(o_dialogue, 0) < 0) {
            controller.state = STATE_BATTLE;
            spawn_enemies(ENEMY_SPAWN_TURTORIAL, 2);
            scenario_step += 1;
        }
        break;
        
    //Move to next room if done
    case 4:
        if (instance_find(o_runner, 0) < 0) {
            get_tutorial_dialogue(SCENARIO_TUTORIAL_MOVE_AHEAD); 
            glb_room += 1;
            scenario_step += 1;
        }
}
