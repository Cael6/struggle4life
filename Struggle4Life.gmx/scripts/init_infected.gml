//define infected

//Sprite for the infected's body
body_sprite = -1;

//Sprite to be drawn on the head
head_sprite = -1;

//Sprite to be drawn on the chest
shirt_sprite = -1;

//Sprite to be drawn on the legs
pants_sprite = -1;

//Sprite to be drawn on the feet
shoes_sprite = -1;

//Weapon object associated to the infected
weapon = -1;

//Whether the infected is busy eating
is_eating = false;

//Whether the infected is in battle or not
is_in_battle = false;

death_animation = -1;
attack_animation = -1;
attacking = false;

hp = -1
max_hp = -1;
alive = true;
hover_sprite = -1;
gun_hover = false;
o_speed = -1;

target = -1;

ai_find_target();
