//init of common variables for runner

//Body Sprite
body_sprite = s_bruiser;

//sprite to show when hovered
hover_sprite = s_bruiser_hover;

o_speed = ENEMY_BRUISER_SPEED * glb_cheat_enemy_speed;
hp = ENEMY_BRUISER_HEALTH;
max_hp = ENEMY_BRUISER_HEALTH;

width = sprite_get_width(body_sprite);
height = sprite_get_height(body_sprite);

//create weapon
//Can create here because weapons are static to infected.
weapon = instance_create(0, 0, o_bruiser_fist);
weapon.character = self.id;

death_animation = s_bruiser_death;
