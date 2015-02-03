//r_test init

var character_1 = instance_create(32, ROOM_HEIGHT - 100, o_character);
var shotgun = instance_create(0,0,o_shotgun);
set_character(
    s_body_1, 
    s_head_1, 
    s_shirt_1, 
    s_pants_1, 
    s_shoes_1, 
    set_shotgun(character_1), 
    s_char_hover,
    "1",
    character_1
);
shotgun.character = character_1;

var character_2 = instance_create(96, ROOM_HEIGHT - 100, o_character);
var flamethrower = instance_create(0,0,o_flamethrower);

set_character(
    s_body_2, 
    s_head_2, 
    s_shirt_2, 
    s_pants_2, 
    s_shoes_2, 
    flamethrower, 
    s_char_hover,
    "2",
    character_2
);
flamethrower.character = character_2;

var character_3 = instance_create(160, ROOM_HEIGHT - 100, o_character);
var sniper = instance_create(0,0,o_sniper);

set_character(
    s_body_3, 
    s_head_3, 
    s_shirt_3, 
    s_pants_3, 
    s_shoes_3, 
    sniper, 
    s_char_hover,
    "3",
    character_3
);
sniper.character = character_3;

var character_4 = instance_create(224, ROOM_HEIGHT - 100, o_character);
var ar = instance_create(0,0,o_assault_rifle);
    
set_character(
    s_body_3, 
    s_head_1, 
    s_shirt_2, 
    s_pants_3, 
    s_shoes_1, 
    ar, 
    s_char_hover,
    "4",
    character_4
);
ar.character = character_4;

randomize();

var runner, runner_x, runner_y, runner_bite;
for (i = 0; i < 20; i += 1) {
    var top = irandom(1);
    
    if (top) {
        runner_x = irandom(ROOM_WIDTH);
        runner_y = -irandom(ROOM_HEIGHT);
    } else {
        runner_x = ROOM_WIDTH + irandom(ROOM_WIDTH);
        runner_y = irandom(ROOM_HEIGHT - sprite_get_height(s_runner));
    }
    
    runner = instance_create(runner_x, runner_y, o_runner);
    
    runner_bite = set_runner_bite(runner);
    
    with (runner) {
        set_runner(
            s_runner,
            s_runner_hover,
            runner_bite
        );
    }
}

ammo = instance_create(0,0, o_resource_ammo);
fuel = instance_create(0,0, o_resource_fuel);
