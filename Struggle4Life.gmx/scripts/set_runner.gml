//Set Runner

//Body Sprite
body_sprite = argument0;
hover_sprite = argument1;

//(I just made some up so delete unnecessary variables later.)
o_speed = argument2;
dmg = ENEMY_RUNNER_ATTACK;
health = ENEMY_RUNNER_HEALTH;
cooldown = 60;
attackrange = 0;

state = CHARACTER_STATE_BATTLE;

width = sprite_get_width(body_sprite);
height = sprite_get_height(body_sprite);

alive = true;
