//Sprite to change the cursor to when firing.
aoe_sprite = -1;

//Frames before the weapon can attack. (Used to reset curr_cooldown)
cooldown = -1;

//The current cooldown before the weapon can attack.
curr_cooldown = -1;

//The name of the weapon
name = "";

//The character holding the weapon
character = false;

//Whether or not the weapon is a pistol
is_pistol = false;

//The function to run on draw
draw_function = false;

//Whether or not anything will be drawn for the weapon
drawing = false;
