//r_test init

var character_1 = instance_create(32, ROOM_HEIGHT - 100, o_character);
var shotgun = set_shotgun(character_1);

with (character_1) {
    set_character(
        s_body_1, 
        s_head_1, 
        s_shirt_1, 
        s_pants_1, 
        s_shoes_1, 
        shotgun, 
        s_char_hover,
        "1"
    );
}

var character_2 = instance_create(96, ROOM_HEIGHT - 100, o_character);
var flamethrower = set_flamethrower(character_2);

with (character_2) {
    set_character(
        s_body_2, 
        s_head_2, 
        s_shirt_2, 
        s_pants_2, 
        s_shoes_2, 
        flamethrower, 
        s_char_hover,
        "2"
    );
}

var character_3 = instance_create(160, ROOM_HEIGHT - 100, o_character);
var sniper = set_sniper(character_3);

with (character_3) {
    set_character(
        s_body_3, 
        s_head_3, 
        s_shirt_3, 
        s_pants_3, 
        s_shoes_3, 
        sniper, 
        s_char_hover,
        "3"
    );
}

var character_4 = instance_create(224, ROOM_HEIGHT - 100, o_character);
var ar = set_assault_rifle(character_4);

with (character_4) {
    set_character(
        s_body_3, 
        s_head_1, 
        s_shirt_2, 
        s_pants_3, 
        s_shoes_1, 
        ar, 
        s_char_hover,
        "4"
    );
}

randomize();

var runner, runner_x, runner_y;
for (i = 0; i < 10; i += 1) {
    var top = irandom(1);
    
    if (top) {
        runner_x = irandom(ROOM_WIDTH);
        runner_y = -irandom(ROOM_HEIGHT);
    } else {
        runner_x = ROOM_WIDTH + irandom(ROOM_WIDTH);
        runner_y = irandom(ROOM_HEIGHT - sprite_get_height(s_runner));
    }
    
    runner = instance_create(runner_x, runner_y, o_runner);
    
    with (runner) {
        set_runner(
            s_runner,
            s_runner_hover,
            1
        );
    }
}
