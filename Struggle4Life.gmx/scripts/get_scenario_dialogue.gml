//get_scenario_dialogue(int scenario_id)
// Scenarios 1 - 999 are reserved for static scenarios
// Scenarios 1000+ are random scenarios.
var scenario_id = argument0;

var dialogue = instance_create(
                   get_horizontal_center_from_width(DIALOGUE_WIDTH),
                   get_vertical_center_from_height(DIALOGUE_HEIGHT),
                   o_dialogue
               );

var dialogue_text;

switch (scenario_id) {

    //Each scenario should have an id in Macros

    case 0:
    
    
        var dialogue_text = "This is the test dialogue.##Select an option below to see example option action.";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Dismiss Dialogue", destroy_dialogue, '1');
        dialogue_add_option(dialogue, "Exit Game", exit_game, '2');
        
        break;
        
    case SCENARIO_GAME_OVER:
        
        var dialogue_text = "Game Over:##All party members have been overrun and are now infected.";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Exit Game", exit_game, '1');
        dialogue_add_option(dialogue, "Main Menu", goto_r_start, '2');
        
        break;
    
    case SCENARIO_GAME_START:
        
        var dialogue_text = "Here we put some story elements that explain the setting, characters, etc.. There will only be a continue option for this dialogue.";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Continue", get_random_scenario, '1');
        
        break;
        
    
    case SCENARIO_SAFE_ZONE:
        
        var dialogue_text = "The party has reached a safe zone; what do they do next?";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Venture Onward", move_ahead, '1');
        dialogue_add_option(dialogue, "Scavenge", scavenge, '2');
        
        break;
        
    default:
        c_log("Got to default dialogue scenario with scenario_id: " + scenario_id, C_LOG__ERROR);
        var dialogue_text = "Something went wrong with the scenario generator##Please tell a dev!";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Dismiss Dialogue", destroy_dialogue, '1');
        dialogue_add_option(dialogue, "Exit Game", exit_game, '2');
        break;
}

return dialogue;