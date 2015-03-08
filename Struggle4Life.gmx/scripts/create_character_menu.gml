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
character_creation(ROOM_WIDTH/2 - 200,64, "1");
var startButton = instance_create(ROOM_WIDTH/2 - BUTTON_WIDTH, ROOM_HEIGHT/2  - 16 ,o_button_startgame);
var menuButton = instance_create(ROOM_WIDTH/2 + BUTTON_WIDTH, ROOM_HEIGHT/2 - 16,o_button_r_start);
