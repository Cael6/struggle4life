
var character = argument0;
character.char_sprite = argument1;
character.hover_sprite = argument2;
character.weapon = argument3;
character.display_key = argument4;
character.keypress = ord(argument4);

character.state = CHARACTER_STATE_BATTLE;

character.width = sprite_get_width(character.char_sprite);
character.height = sprite_get_height(character.char_sprite);

character.mb_left_action = select_character;

character.pistol = instance_create(0, 0, o_pistol);
character.pistol.character = character;