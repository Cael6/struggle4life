draw_sprite(char_sprite, image_index, x, y);

var curr_weapon;

if (using_weapon) {
    curr_weapon = weapon;
} else {
    curr_weapon = pistol;
}

var weapon_index;

if (curr_weapon.cooldown != 0) {
    weapon_index = 1;
} else {
    weapon_index = 0;
}

draw_sprite(curr_weapon.sprite_index, weapon_index, x, y);

if (state == CHARACTER_STATE_BATTLE) {
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_set_font(f_oswald);
    var key_string_width = string_width(display_key);
    var key_string_height = string_height(display_key);
    draw_text(x - key_string_width - 7, y - key_string_height - 7, display_key);

    draw_healthbar(
        x,
        y - 10,
        x + width,
        y,
        curr_weapon.curr_cooldown/curr_weapon.cooldown * 100,
        make_color_rgb(0, 0, 0),
        make_color_rgb(0,0,150),
        make_color_rgb(0,0,150),
        0,
        false,
        false
    );
    
    draw_healthbar(
        x,
        y - 20,
        x + width,
        y - 10,
        hp / max_hp * 100,
        make_color_rgb(0, 0, 0),
        make_color_rgb(0, 255, 0),
        make_color_rgb(0, 255, 0),
        0,
        false,
        false
    );
}
    

if (state == CHARACTER_STATE_BATTLE && hover) {
    draw_sprite(hover_sprite, image_index, x, y);
}
