//update script for next button

//Get the index of next sprite in the list
next_sprite = text_instance.s_current + 1;

//Set to 0 if the index is over length of list

if (next_sprite > text_instance.s_max) {
    next_sprite = 0;
}

//Set the index of sprite using
text_instance.s_current = next_sprite;

//Update text label
text_instance.text = text_instance.s_list[next_sprite,0]

//Update sprite
character = instance_find(o_character, 0);
var new_gun = 0;
switch(text_instance.s_list[next_sprite, 1]){
    case "SHOTGUN":
        new_gun = create_shotgun(character);
        break;
    case "SNIPER":
        new_gun = create_sniper(character);
        break;
    case "ASSULT":
        new_gun = create_assaultrifle(character);    
        break;
    case "FRAME":
         new_gun = create_framethrower(character);   
        break;
    
    
}
character.weapon = new_gun;

//Delete previous weapon object
weapon = instance_find(o_weapon, 0);
with(weapon){
    instance_destroy();
}

//update aoe
weapon_aoe = instance_find(o_gun_aoe, 0);
weapon_aoe.sprite_index = new_gun.aoe_sprite;
if(weapon_aoe.sprite_index = s_framethrower_aoe){
    weapon_aoe.x = 672;
    weapon_aoe.y = 512;
    weapon_aoe.image_yscale = 0.5;
    weapon_aoe.image_xscale = 0.5;
}
else{
    weapon_aoe.x = 736;
    weapon_aoe.y = 544;
    weapon_aoe.image_yscale = 1;
    weapon_aoe.image_xscale = 1;
}
