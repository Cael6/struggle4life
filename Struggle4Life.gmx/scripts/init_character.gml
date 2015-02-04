//define character

//Name of the character
name = "";

//Sprite for the character's body
body_sprite = -1;

//Sprite to be drawn on the head
head_sprite = -1;

//Sprite to be drawn on the chest
shirt_sprite = -1;

//Sprite to be drawn on the legs
pants_sprite = -1;

//Sprite to be drawn on the feet
shoes_sprite = -1;

//Weapon object associated to the character
weapon = -1;

//Pistol object associated to the character
pistol = -1;

//Health of character
hp = CHARACTER_HEALTH;

max_hp = CHARACTER_HEALTH;

//Boolean to be checked at times to kill the character
alive = true;

//Boolean to check for infected
infected = false;

//Time left before the character dies from infection
life_countdown = -1;

//Hover state
hover = false;

//sprite to show when hovered
hover_sprite = -1;

//The state of the character
state = -1;

//True if using weapon over pistol
using_weapon = true;

width = -1;
height = -1;

//Key to press to select character
keypress = -1;

//key to display for character
display_key = "1";

selected = false;
