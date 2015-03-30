x = 0;
y = ROOM_HEIGHT - sprite_get_height(s_truck);
weapon = instance_create(x, y, o_flamethrower);
weapon.character = self.id;

width = sprite_get_width(s_truck);
height = sprite_get_height(s_truck);
//Used to track start and end press of fire key
key_down = false;
