//Set maim map(map_number)
map_type = argument0;

//Set background
switch(map_type){
    case 1:
        map_background = bg_map_1;
        break;
    case 2:
        map_background = bg_map_2;
        break;
    case 3:
        map_background = bg_map_3;
        break;
        
}

//Set buttons
if(map_type > 1){
button_1 = instance_create(0, ROOM_HEIGHT / 2, o_button)
with(button_1){
        set_o_button(
            "Go Left", 
            BUTTON_WIDTH, 
            BUTTON_HEIGHT, 
            BUTTON_TEXT_COLOR, 
            goto_r_game
        );
        depth = 19;
    }
    
    button_2 = instance_create(ROOM_WIDTH - 200, ROOM_HEIGHT / 2, o_button)
    with(button_2){
        set_o_button(
            "Go Right", 
            BUTTON_WIDTH, 
            BUTTON_HEIGHT, 
            BUTTON_TEXT_COLOR, 
            goto_r_game
        );
        depth = 19;
    }
}

if(map_type > 2 || map_type == 1){
    button_3 = instance_create(ROOM_WIDTH / 2, ROOM_HEIGHT / 3, o_button)
    if(glb_level == 0){
        with(button_3){
            set_o_button(
                "Go straight", 
                BUTTON_WIDTH, 
                BUTTON_HEIGHT, 
                BUTTON_TEXT_COLOR, 
                goto_r_scenario
            );
            depth = 19;
        }
    }
    else{
        with(button_3){
        set_o_button(
                "Go straight", 
                BUTTON_WIDTH, 
                BUTTON_HEIGHT, 
                BUTTON_TEXT_COLOR, 
                goto_r_game
            );
            depth = 19;
        }
    }
}
