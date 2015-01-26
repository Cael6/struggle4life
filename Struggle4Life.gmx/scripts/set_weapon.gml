//set_weapon(sprite weapon_sprite, sprite aoe_sprite, int cooldown, string name, o_character character);
sprite_index = argument0;
aoe_sprite = argument1;
cooldown = argument2;
name = argument3;
character = argument4;
is_pistol = "pistol" == name;
draw_function = argument5;

curr_cooldown = cooldown;
visible = true;