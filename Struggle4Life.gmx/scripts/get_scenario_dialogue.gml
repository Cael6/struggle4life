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
        
    case SCENARIO_GAME_OVER:
        
        var dialogue_text = "Game Over:##All party members have been overrun and are now infected.";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Exit Game", exit_game, '1');
        dialogue_add_option(dialogue, "Main Menu", goto_r_start, '2');
        
        break;
    
    case SCENARIO_GAME_WIN:
        
        var dialogue_text = "Conguratation. You have successfully escaped from infected.";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Credits", goto_r_credits, '1');
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
        
        var dialogue_text = "The party has reached a safe zone.";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Okay", goto_r_safe_zone, '1');
        
        break;
        
    case SCENARIO_OVERRUN_BASE:
        
        var dialogue_text = "You have returned to the overrun base... That wasn't smart. Good Luck.";
        set_enemy_spawner(200, ENEMY_MOD_IMPOSSIBLE, ENEMY_TYPE_INFECTED_ALL, 30);
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Let's do this!", start_battle, '1');
        
        break;
            
    case SCENARIO_TUT_1_1:
    
        o_controller_r_game.is_additional_update = true;
        o_controller_r_game.additional_update = tut_1_1;
        
        var dialogue_text = "You've just left the overrun base. All your friends have died. Everyone... You are alone in a dark and tainted world. You have nothing but the clothes on your back and the shoes on your feet.##You see a weakened infected in front of you and pick up a nearby assault rifle. Take aim lost soul and hold your own.";
        set_enemy_spawner(1, ENEMY_MOD_EASY, ENEMY_TYPE_INFECTED_CRAWLER, 30);
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Let's do this!", start_battle, '1');
        
        break;
        
    case SCENARIO_TUT_1_2:
        
        var dialogue_text = "Ammo is scarce in this cold and lonely world. Your pistols, however, have been modified to take anything you can find to be used as ammo.##Switch to your pistol ([Tab] / [Right Click] when character selected) and finish this wretched creation.";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        o_controller_r_game.is_additional_update = false;
        o_controller_r_game.additional_update = -1;
        glb_safe_zone_scenario_id = SCENARIO_TUT_1_3;
        glb_has_map = true;
        
        
        dialogue_add_option(dialogue, "Continue", start_battle, '1');
        
        break;
        
    case SCENARIO_TUT_1_3:
    
        change_resource_amount(RESOURCE_AMMO, 2);
        
        var dialogue_text = "The area looks clear. You search around a bit. You found:#2 ammo#1 map#1 red marker##You find a place to rest and take the time to plan your next moves.";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Continue", destroy_dialogue, '1');
        
        glb_safe_zone_scenario_id = SCENARIO_SAFE_ZONE;
        
        break;
        
    case SCENARIO_TUT_2_1:
        
        var dialogue_text = "Your base has been overrun by the infected! As you try to escape, you run into some of them.";
        set_enemy_spawner(1, ENEMY_MOD_NORMAL, ENEMY_TYPE_INFECTED_CRAWLER, 30);
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Let's do this!", start_battle, '1');
        
        break;
        
        
    case SCENARIO_RANDOM_START:
    
        set_enemy_spawner(1, ENEMY_MOD_NORMAL, ENEMY_TYPE_INFECTED_ALL, 30);
        
        var dialogue_text = "You've come across " + string(glb_room_count) + " infected. What will you do?";
        
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "To Battle", start_battle, '1');
        
        break;
        
    case SCENARIO_RANDOM_END:
        
        var reward = random_reward();
        var dialogue_text = "";
        if (reward[0] > 0 || reward[1] > 0) {
            dialogue_text += "The party comes across a little extra resources.##";
        } else {
            get_scenario_dialogue(SCENARIO_SAFE_ZONE);
            break;
        }
        
        if (reward[0] > 0) {
            dialogue_text += string(reward[0]) + " ammo#";
        }
        
        if (reward[1] > 0) {
            dialogue_text += string(reward[1]) + " fuel#";
        }
        
        change_resource_amount(RESOURCE_AMMO, reward[0]);
        change_resource_amount(RESOURCE_FUEL, reward[1]);
        
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Continue", get_to_safe_zone, '1');
        
        break;
        
        
    default:
        c_log("Got to default dialogue scenario with scenario_id: " + string(scenario_id), C_LOG__ERROR);
        var dialogue_text = "Something went wrong with the scenario generator##Please tell a dev!";
        with (dialogue) {
            set_dialogue(dialogue_text);
        }
        
        dialogue_add_option(dialogue, "Dismiss Dialogue", destroy_dialogue, '1');
        dialogue_add_option(dialogue, "Exit Game", exit_game, '2');
        break;
}

return dialogue;
