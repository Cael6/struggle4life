destroy_dialogue();
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
        
    case SCENARIO_TUTORIAL_ROOM1_1:
        var dialogue_text = "You base has been overrun by infected! As you try to escape, you run into some of them.";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Continue", destroy_dialogue, '1');
        
        break;
        
    case SCENARIO_TUTORIAL_ROOM1_2:
        var dialogue_text = "Click your character and left click the enemy to deal damage with your primary weapon.";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Close Dialogue", destroy_dialogue, '1');
        
        break;
    
    case SCENARIO_TUTORIAL_ROOM1_3:
        var dialogue_text = "This enemy doesn’t require three shots, click your character and right click to switch to your pistol.";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Close Dialogue", destroy_dialogue, '1');
        
        break;
    
    case SCENARIO_TUTORIAL_ROOM1_4:
        var dialogue_text = "Here comes two more enemies, defeat them by using your weapons.";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Close Dialogue", destroy_dialogue, '1');
        
        break;

   //Second turtorial     
    case SCENARIO_TUTORIAL_ROOM2_1:
        var dialogue_text = "You found a surviver. He looks like he want to come with you.";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Continue", destroy_dialogue, '1');
        
        break;
        
    case SCENARIO_TUTORIAL_ROOM2_2:
        var dialogue_text = "Your car can hold a total of three people with all of your equipment, you may meet new strangers to help you on your journey";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Continue", destroy_dialogue, '1');
        
        break;
            
    case SCENARIO_TUTORIAL_ROOM2_3:
        var dialogue_text = "Select the player you wish to attack with by selecting them or their number.";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Close Dialogue", destroy_dialogue, '1');
        
        break;
        
    case SCENARIO_TUTORIAL_ROOM2_4:
        var dialogue_text = "The shotgun is most effective at close range but can hit more targets at a longer range";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Close Dialogue", destroy_dialogue, '1');
        
        break;     
        
    case SCENARIO_TUTORIAL_ROOM2_5:
        var dialogue_text = "Once a zone is cleared, you may scavenge the area to collect materials.";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Close Dialogue", destroy_dialogue, '1');
        
        break;    
    
    //Scenario 3  
    case SCENARIO_TUTORIAL_ROOM3_1:
        var dialogue_text = "It looks like this guy want to join you. Let take him with us.";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Continue", destroy_dialogue, '1');
        
        break;    
        
    case SCENARIO_TUTORIAL_ROOM3_2:
        var dialogue_text = "Enemies are coming. Prepare to attack them.";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Close Dialogue", destroy_dialogue, '1');
        
        break;
    
    case SCENARIO_TUTORIAL_ROOM3_3:
        var dialogue_text = "The sniper rifle can hit at a very far range and pierces all enemies hit.";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Close Dialogue", destroy_dialogue, '1');
        
        break; 
    
    case SCENARIO_TUTORIAL_ROOM4_1:
        var dialogue_text = "You have now completed completed tutorial!! You are now free to do as you please";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Venture Onward", move_to_next_level, '1');
        //Testing purpose
        dialogue_add_option(dialogue, "Go last screen", get_win_screen, '1');
        break; 
                          
    //SAFE ZONE
    case SCENARIO_TUTORIAL_SAFE_ZONE:
        
        var dialogue_text = "The party has reached a safe zone; what do they do next?";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Venture Onward", move_ahead, '1');
        dialogue_add_option(dialogue, "Scavenge", scavenge, '2');
        
        break;
    
    //SAFE ZONE
    case SCENARIO_TUTORIAL_MOVE_AHEAD:
        
        var dialogue_text = "Looks like it is safe now. Let move.";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Venture Onward", move_ahead, '1');
        
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
