//init of common variables for runner

//Body Sprite
body_sprite = s_runner;

//sprite to show when hovered
hover_sprite = s_runner_hover;

o_speed = ENEMY_RUNNER_SPEED;
hp = ENEMY_RUNNER_HEALTH;
max_hp = ENEMY_RUNNER_HEALTH;

width = sprite_get_width(body_sprite);
height = sprite_get_height(body_sprite);

//create weapon
//Can create here because weapons are static to infected.
weapon = instance_create(0, 0, o_runner_bite);
weapon.character = self.id;
