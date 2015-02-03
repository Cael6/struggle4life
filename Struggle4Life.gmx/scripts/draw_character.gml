draw_sprite(body_sprite, image_index, x, y);
draw_sprite(head_sprite, image_index, x, y);
draw_sprite(shirt_sprite, image_index, x, y);
draw_sprite(pants_sprite, image_index, x, y);
draw_sprite(shoes_sprite, image_index, x, y);

var curr_weapon;

if (using_weapon) {
    curr_weapon = weapon;
} else {
    curr_weapon = pistol;
}

draw_sprite(curr_weapon.sprite_index, image_index, x, y);

if (state == CHARACTER_STATE_BATTLE) {
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_set_font(f_oswald);
    var key_string_width = string_width(display_key);
    var key_string_height = string_height(display_key);
    draw_text(x - key_string_width - 7, y - key_string_height - 7, display_key);
}

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
    

if (state == CHARACTER_STATE_BATTLE && hover) {
    draw_sprite(hover_sprite, image_index, x, y);
}
