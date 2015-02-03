//set_character(
//  sprite body, 
//  sprite head, 
//  sprite shirt, 
//  sprite pants, 
//  sprite shoes,
//  o_weapon weapon,
//  hover_sprite);
var character = argument8;
character.body_sprite = argument0;
character.head_sprite = argument1;
character.shirt_sprite = argument2;
character.pants_sprite = argument3;
character.shoes_sprite = argument4;
character.weapon = argument5;
character.hover_sprite = argument6;
character.display_key = argument7;
character.keypress = ord(argument7);

character.state = CHARACTER_STATE_BATTLE;

character.width = sprite_get_width(character.body_sprite);
character.height = sprite_get_height(character.body_sprite);

character.mb_left_action = select_character;

character.pistol = instance_create(0, 0, o_pistol);
character.pistol.character = character;
