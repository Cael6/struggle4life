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
    var shotgun = instance_create(0, 0, o_shotgun);
    shotgun.character = character;
    set_character(
        s_body_1, 
        s_head_1, 
        s_shirt_1, 
        s_pants_1, 
        s_shoes_1, 
        shotgun, 
        s_char_hover,
        string(array_length_1d(glb_characters) + 1),
        character
    );
    character.state = CHARACTER_STATE_BATTLE;
    
    glb_characters[array_length_1d(glb_characters)] = character;
    
    //Create first dialogue
    get_tutorial_dialogue(SCENARIO_TUTORIAL_ROOM2_1); 
    
    scenario_step += 1;
    break;
    
    ///Show second dialogue
    case 1:
        controller.state = STATE_NOT_BATTLE;
        if(instance_find(o_dialogue, 0) < 0) {
            scenario_step += 1;
            get_tutorial_dialogue(SCENARIO_TUTORIAL_ROOM2_2); 
        }
        
        break;
    
    ///Show third dialogue
    case 2:
        controller.state = STATE_NOT_BATTLE;
        if(instance_find(o_dialogue, 0) < 0) {
            scenario_step += 1;
            get_tutorial_dialogue(SCENARIO_TUTORIAL_ROOM2_3); 
        }
        
        break;
    
    //Wait until dialogue close;    
    case 3:
        controller.state = STATE_NOT_BATTLE;
        if(instance_find(o_dialogue, 0) < 0) {
            scenario_step += 1;
        }
        break;
    
    //Spawn enemies when dialogue closed
    case 4:
        controller.state = STATE_BATTLE;
        spawn_enemies(ENEMY_SPAWN_TURTORIAL, 5)
        scenario_step += 1;
        break;
    
    //Show dialogue about shotgun explanation when shotgun character is clicked
    //and stop all enemies.
    case 5:
        with(o_character){
            if(selected && weapon.name == "shotgun"){
                go_next = true;
                deselect_character()
                get_tutorial_dialogue(SCENARIO_TUTORIAL_ROOM2_4); 
            }
        }
        
        if(go_next){
            scenario_step += 1;
            with(o_runner){
                o_speed = 0;
            }
        }
        break;
    
    //Select shotgun character when the dialogue is closed.
    case 6:
        controller.state = STATE_NOT_BATTLE;
        if(instance_find(o_dialogue, 0) < 0) {
            with(o_character){
                if(weapon.name == "shotgun"){
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
        
    //When all enemy are gone, show dialogue that you can scavange after battle.
    case 7:
        controller.state = STATE_BATTLE;
        if(instance_find(o_runner, 0) < 0){
            get_tutorial_dialogue(SCENARIO_TUTORIAL_ROOM2_5); 
            scenario_step += 1;
        }
        break;
    
     //Move to next room if done
    case 8:
       controller.state = STATE_NOT_BATTLE;
        if(instance_find(o_dialogue, 0) < 0) {
            get_tutorial_dialogue(SCENARIO_TUTORIAL_SAFE_ZONE); 
            scenario_step += 1;
            glb_room += 1;
        }
        break;
}
