var controller = o_controller_r;
var go_next = false;

var character;
var infected, infected_x, infected_y, infected_weapon, infected_oi,
        infected_weapon_oi;

switch(scenario_step){
    //Create new character 
    case 0:
    controller.state = STATE_NOT_BATTLE;
    character = instance_create(100, 
                                600, 
                                o_character
                );
    var sniper = instance_create(0, 0, o_sniper);
    sniper.character = character;
    set_character(
        character,
        s_char_3,
        s_char_3_hover,
        sniper,
        string(array_length_1d(glb_characters) + 1)
    );
    character.state = CHARACTER_STATE_BATTLE;
    
    glb_characters[array_length_1d(glb_characters)] = character;
    
    //Create dialog
    get_tutorial_dialogue(SCENARIO_TUTORIAL_ROOM3_1); 
    
    scenario_step += 1;
    break;
    
    ///Show Message 1
    case 1:
        controller.state = STATE_NOT_BATTLE;
        if(instance_find(o_dialogue, 0) < 0) {
            scenario_step += 1;
            get_tutorial_dialogue(SCENARIO_TUTORIAL_ROOM3_2); 
        }
        
        break;
    
    //Wait until message close;    
    case 2:
        controller.state = STATE_NOT_BATTLE;
        if(instance_find(o_dialogue, 0) < 0) {
            scenario_step += 1;
        }
        break;
    
    case 3:
        controller.state = STATE_BATTLE;
        spawn_enemies(ENEMY_SPAWN_TURTORIAL, 10)
        scenario_step += 1;
        break;
    
    case 4:
        with(o_character){
            if(selected && weapon.name == "Sniper"){
                go_next = true;
                deselect_character()
                get_tutorial_dialogue(SCENARIO_TUTORIAL_ROOM3_3); 
            }
        }
        
        if(go_next){
            //Stop enemies
            with(o_runner){
                o_speed = 0;
            }
            scenario_step += 1;
        }
        break;
        
    case 5:
        controller.state = STATE_NOT_BATTLE;
        if(instance_find(o_dialogue, 0) < 0) {
            with(o_character){
                if(weapon.name == "Sniper"){
                    select_character()
                }
            }
            
            //Resume enemies
            with(o_runner){
               o_speed = ENEMY_RUNNER_SPEED;
            }
            
            scenario_step += 1;
        }
        break;
    case 6:
        controller.state = STATE_BATTLE;
        if(instance_find(o_runner, 0) < 0){
            scenario_step += 1;
        }
        break;
    
    //if done, add enemy    
     //Move to next room if done
    case 7:
       controller.state = STATE_NOT_BATTLE;
        if(instance_find(o_dialogue, 0) < 0) {
            get_tutorial_dialogue(SCENARIO_TUTORIAL_SAFE_ZONE); 
            scenario_step += 1;
            glb_room += 1;
        }
        break;
}
