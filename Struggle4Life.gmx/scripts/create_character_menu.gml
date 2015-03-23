//init
var start_x = ROOM_WIDTH/2 - 250;
var start_y = 96;

var button_y = 32 + CHARACTER_MENU_REC_ADJ_Y ;

//if current_room is main menu update start position
if(room == r_start) {
    start_x = 46;
}
//Delete all related object
with(o_character) {
    instance_destroy();
}

with(o_weapon) {
    instance_destroy();
}

with(o_rectangle) {
    instance_destroy();
}

with(o_text){
    instance_destroy();
}

with(o_textbox){
    instance_destroy();
}

with(o_label){
    instance_destroy();
}

//Create Instances
//Make frame rectangle
character_creation(start_x , start_y, "1");
with(o_character){
    depth = 9
}
with(o_rectangle){
    depth = 9;
}

var rec = instance_create(0,0,o_rectangle);
with(rec){
    set_rec(start_x - 32,
            start_y - 32,
            start_x + CHARACTER_MENU_REC_ADJ_X + 32 ,
            start_y - 32 + CHARACTER_MENU_REC_ADJ_Y + BUTTON_HEIGHT * 3,
            c_black,
            false,
            2
            )
    depth = 10
    draw_set_alpha(0.5)
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
    depth = 10
    draw_set_alpha(0.5)
}
var startButton = instance_create(start_x, 
                                  start_y + button_y,
                                  o_button_startgame
                                  );
with(startButton) {
     depth = 8
}
                                  
var menuButton = instance_create(start_x + BUTTON_WIDTH * 2, 
                                 start_y + button_y,
                                 o_button_r_start
                                 );
with(menuButton) {
     depth = 8
}