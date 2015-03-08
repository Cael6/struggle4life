//init of common variables for spitter

//Body Sprite
body_sprite = s_body_3;

//sprite to show when hovered
hover_sprite = s_runner_hover;

o_speed = ENEMY_SPITTER_SPEED;
hp = ENEMY_SPITTER_HEALTH;
max_hp = ENEMY_SPITTER_HEALTH;

width = sprite_get_width(body_sprite);
height = sprite_get_height(body_sprite);

//Create Weapon
//Can create here on infected because their weapon is always the same.
weapon = instance_create(0, 0, o_spitter_mouth);
weapon.character = self.id;