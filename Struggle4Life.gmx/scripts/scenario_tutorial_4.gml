var controller = o_controller_r;
var go_next = false;

var character;
var infected, infected_x, infected_y, infected_weapon, infected_oi,
        infected_weapon_oi;

switch(scenario_step){
    //Create new character 
    case 0:
        controller.state = STATE_NOT_BATTLE;
        get_tutorial_dialogue(SCENARIO_TUTORIAL_ROOM4_1); 
        scenario_step += 1;
        
        break;
        
}
