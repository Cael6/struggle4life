//set_character(
//  sprite body, 
//  sprite head, 
//  sprite shirt, 
//  sprite pants, 
//  sprite shoes,
//  o_weapon weapon,
//  hover_sprite);
body_sprite = argument0;
head_sprite = argument1;
shirt_sprite = argument2;
pants_sprite = argument3;
shoes_sprite = argument4;
weapon = argument5;
hover_sprite = argument6;
display_key = argument7;
keypress = ord(argument7);

state = CHARACTER_STATE_BATTLE;

width = sprite_get_width(body_sprite);
height = sprite_get_height(body_sprite);

hp = CHARACTER_HEALTH;

mb_left_action = select_character;

pistol = set_pistol(self.id);
