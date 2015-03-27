//define character

//Name of the character
name = "";

//Sprite for the character's body
char_sprite = -1;

//Weapon object associated to the character
weapon = -1;

//Pistol object associated to the character
pistol = -1;

//Health of character
hp = CHARACTER_HEALTH;

max_hp = CHARACTER_HEALTH;

//Boolean to be checked at times to kill the character
alive = true;

//Boolean to check for infected
infected = false;

//Time left before the character dies from infection
life_countdown = -1;

//Hover state
hover = false;

//sprite to show when hovered
hover_sprite = -1;

//The state of the character
state = -1;

//True if using weapon over pistol
using_weapon = true;

width = -1;
height = -1;

//Key to press to select character
keypress = -1;

//key to display for character
display_key = "1";

selected = false;
persistent = true;

char_id = -1;

if (glb_available_chars[0] != noone) {
    display_key = string(glb_available_chars[0]);
    keypress = ord(string(glb_available_chars[0]));
    char_id = glb_available_chars[0];
    
    //Pop a spot off available_chars
    var new_available_chars = array_1d(noone);
    for (var i = 1; i < array_length_1d(glb_available_chars); i += 1) {
        new_available_chars[i - 1] = glb_available_chars[i];
    }
    glb_available_chars = new_available_chars;
} else {
    c_log("Tried to set a character when there were no spots left.", C_LOG__ERROR);
}

battle_position = get_next_char_position();

battle_position_x = battle_position[0];
battle_position_y = battle_position[1];
