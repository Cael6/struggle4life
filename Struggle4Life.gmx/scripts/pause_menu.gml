//init
var start_x = 192;
var start_y = 156;

//menu options
var label_x = 64;
var label_y = 48;
var input_x = 384;
var input_y = 64;
var next_line = 64;

var button_y = 32 + CHARACTER_MENU_REC_ADJ_Y ;

//Delete all related object
close_pause_menu(start_x, start_y + button_y,);

//Create Instances
//Make frame rectangle
var rec = instance_create(0,0,o_rectangle);
with(rec){
    set_rec(0,
            0,
            ROOM_WIDTH ,
            ROOM_HEIGHT,
            c_black,
            false,
            0.5)
    depth = 1000
}

var rec = instance_create(0,0,o_rectangle);
with(rec){
    set_rec(start_x - 32,
            start_y - 32,
            start_x + CHARACTER_MENU_REC_ADJ_X + 32 ,
            start_y - 32 + CHARACTER_MENU_REC_ADJ_Y + BUTTON_HEIGHT * 3,
            c_black,
            false,
            0.5)
    depth = 999
}

var rec = instance_create(0,0,o_rectangle);
with(rec){
    set_rec(start_x - 32,
            start_y - 32,
            start_x + CHARACTER_MENU_REC_ADJ_X + 32 ,
            start_y - 32 + CHARACTER_MENU_REC_ADJ_Y + BUTTON_HEIGHT * 3,
            c_white,
            true,
            1
            )
    depth = 998
    draw_set_alpha(0.5)
}

//Music
var musicLbl =  instance_create(start_x + label_x,
                                start_y + label_y  + next_line,
                                o_label
              );
with(musicLbl) {
    update_o_label("Music Volume: ", BUTTON_WIDTH, BUTTON_HEIGHT, BUTTON_TEXT_COLOR);
}

var musicBar = instance_create(start_x + input_x, 
                               start_y + input_y + next_line,
                               o_slider
                               );
with(musicBar){
    set_slider("music")
}

//Sound
next_line += next_line
var soundLbl = instance_create(start_x + label_x,
                               start_y + label_y + next_line,
                               o_label
              );
              
with(soundLbl) {
    update_o_label("Sound Volume: ", BUTTON_WIDTH, BUTTON_HEIGHT, BUTTON_TEXT_COLOR);
}

                         
var soundBar = instance_create(start_x + input_x, 
                               start_y + input_y + next_line,
                               o_slider
                               );
with(soundBar){
    set_slider("sound")
}

//Continue Game
var continueButton = instance_create(start_x, 
                                  start_y + button_y,
                                  o_button_close_pause
                                  );

//Exit button                              
var exitButton = instance_create(start_x + BUTTON_WIDTH * 2, 
                                 start_y + button_y,
                                 o_button_exit
                                 );
