//Set title of the page
var title = instance_create(400,10,o_label);
with(title){
    update_o_label("Choose Characters", 
                   BUTTON_WIDTH, 
                   BUTTON_HEIGHT, 
                   BUTTON_TEXT_COLOR
                   );
}

//Set character design box
character_creation(64,64, "1");
/*
character_creation(640,64, "2")
character_creation(64, 416, "3")
character_creation(640, 416, "4")
*/
//Set start button
var startButton = instance_create(ROOM_WIDTH/2 - BUTTON_WIDTH - 96, ROOM_HEIGHT/2  - 16 ,o_button_startgame);
var startButton = instance_create(ROOM_WIDTH/2 , ROOM_HEIGHT/2 - 16,o_button_r_start);

audio_play_sound(so_bg_menu, 10, true);

