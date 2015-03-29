//init of common variables for spitter

//Body Sprite
body_sprite = s_spitter;

//sprite to show when hovered
hover_sprite = s_spitter_hover;

o_speed = ENEMY_SPITTER_SPEED * glb_cheat_enemy_speed;
hp = ENEMY_SPITTER_HEALTH;
max_hp = ENEMY_SPITTER_HEALTH;

width = sprite_get_width(body_sprite);
height = sprite_get_height(body_sprite);

//Create Weapon
//Can create here on infected because their weapon is always the same.
weapon = instance_create(0, 0, o_spitter_mouth);
weapon.character = self.id;

death_animation = s_spitter_death;

attack_animation = s_spitter_attack;