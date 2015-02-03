//Sprite to change the cursor to when firing.
aoe_sprite = -1;

//Frames before the weapon can attack. (Used to reset curr_cooldown)
cooldown = -1;

//The current cooldown before the weapon can attack.
//All weapons start off cooldown
curr_cooldown = 0;

//The name of the weapon
name = "";

//The character holding the weapon
character = false;

//Whether or not the weapon is a pistol
is_pistol = false;

//Whether or not anything will be drawn for the weapon
drawing = false;

//How many range units the weapon can fire.
range = -1;

//The target position after range limitations implemented.
target_x = -1;
target_y = -1;

//Function to run when checking collision
check_collision = -1;

//The id for the type of resource
resource_type = -1;

//The amount of damage the weapon does when firing
damage = -1;

//TODO: fix this in fire_weapon
//The number of shots before the weapon has to reload
shots_before_reload = 1;

//The current number of shots before reload
shots_left = 1;

//The radius of the weapon aoe
radius = -1;

visible = true;
