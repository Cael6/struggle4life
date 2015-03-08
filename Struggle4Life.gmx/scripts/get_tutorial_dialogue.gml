destroy_dialogue();
deselect_character();
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
        var dialogue_text = "Your base has been overrun by the infected! As you try to escape, you run into some of them.";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Continue", get_tutorial_dialogue, '1', SCENARIO_TUTORIAL_ROOM1_2);
        
        break;
        
    case SCENARIO_TUTORIAL_ROOM1_2:
        var dialogue_text = "Select your character by clicking him (or press keyboard 1-3) and left click the enemy to deal damage with your primary weapon.";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        //Add am arrow 
        with(o_character) {
            create_arrow( x + 100, y + 100, x + 50, y + 50, ARROW_SIZE)
        }
        
        dialogue_add_option(dialogue, "Close Dialogue", start_battle, '1');
        
        break;
    
    case SCENARIO_TUTORIAL_ROOM1_3:
        var dialogue_text = "The primary weapon cosumes an ammo for each shot. However pistols doesm't cosume any ammo.";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        //Add am arrow 
        with(o_resource_ammo) {
            create_arrow( x + 100, y + 100, x + 25 , y + 25, ARROW_SIZE)
        }
        
        
        dialogue_add_option(dialogue, "Close Dialogue", get_tutorial_dialogue, '1', SCENARIO_TUTORIAL_ROOM1_4);
        
        break;
    
    case SCENARIO_TUTORIAL_ROOM1_4:
        var dialogue_text = "This enemy only has 1 shot left, click your character and right click (or TAB) to switch to your pistol.";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
           
        dialogue_add_option(dialogue, "Close Dialogue", start_battle, '1');
        
        break;
    
    case SCENARIO_TUTORIAL_ROOM1_5:
        var dialogue_text = "Here comes two more enemies, defeat them by using your weapons.";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Close Dialogue", start_battle, '1');
        
        break;
        
    case SCENARIO_TUTORIAL_ROOM1_6:
        var dialogue_text = "Each weapon has cool down. It is display under each character's health bar. Be careful on managing it.";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        //Add am arrow 
        with(o_character) {
            create_arrow( x + 128, y, x + 64, y, ARROW_SIZE)
        }
        
        dialogue_add_option(dialogue, "Close Dialogue", get_tutorial_dialogue, '1', SCENARIO_TUTORIAL_MOVE_AHEAD);
        
        break;

   //Second turtorial     
    case SCENARIO_TUTORIAL_ROOM2_1:
        var dialogue_text = "You found a survivor. He looks like he wants to join your quest.";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Continue", start_battle, '1');
        
        break;
        
    case SCENARIO_TUTORIAL_ROOM2_2:
        var dialogue_text = "Your car can hold a total of three people with all of your equipment, you may meet new strangers to help you on your journey";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Continue", start_battle, '1');
        
        break;
            
    case SCENARIO_TUTORIAL_ROOM2_3:
        var dialogue_text = "Select the player you wish to attack with by selecting them or pressing their keyboard number.";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Close Dialogue", start_battle, '1');
        
        break;
        
    case SCENARIO_TUTORIAL_ROOM2_4:
        var dialogue_text = "The shotgun is most effective at close range but can hit more targets at a longer range";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Close Dialogue", start_battle, '1');
        
        break;     
        
    case SCENARIO_TUTORIAL_ROOM2_5:
        var dialogue_text = "Once a zone is cleared, you may scavenge the area to collect materials.";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Close Dialogue", start_battle, '1');
        
        break;    
    
    //Scenario 3  
    case SCENARIO_TUTORIAL_ROOM3_1:
        var dialogue_text = "It looks like this guy wants to join you. Let's take him with us.";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Continue", start_battle, '1');
        
        break;    
        
    case SCENARIO_TUTORIAL_ROOM3_2:
        var dialogue_text = "Enemies are coming. Prepare for a fight.";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Close Dialogue", start_battle, '1');
        
        break;
    
    case SCENARIO_TUTORIAL_ROOM3_3:
        var dialogue_text = "The sniper rifle can hit at a very far range and pierces all enemies hit.";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Close Dialogue", start_battle, '1');
        
        break; 
    
    case SCENARIO_TUTORIAL_ROOM4_1:
        var dialogue_text = "You have now completed the tutorial!! You are now free to do as you please";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Venture Onward", move_to_next_level, '1');
        if (DEBUG) {
            dialogue_add_option(dialogue, "Go last screen", get_win_screen, '2');
        }
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