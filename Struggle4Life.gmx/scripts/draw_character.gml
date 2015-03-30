if (alive) {
    
    var curr_weapon;
    
    if (using_weapon) {
        curr_weapon = weapon;
    } else {
        curr_weapon = pistol;
    }
    
    var weapon_index;
    
    if (curr_weapon.curr_cooldown != 0 || !state_is_battle()) {
        weapon_index = 1;
        draw_sprite(char_sprite, 0, x, y);
    } else {
        weapon_index = 0;
        draw_sprite(char_sprite, image_index, x, y);
    }
    
    draw_sprite(curr_weapon.sprite_index, weapon_index, x, y);
    
    if (state_is_battle()) {
        
        draw_set_alpha(1);
        draw_set_color(c_white);
        draw_set_font(f_oswald);
        draw_set_halign(fa_center);
        
        draw_sprite(
            s_keyboard_hint,
            -1,
            x - sprite_get_width(s_keyboard_hint),
            y - sprite_get_height(s_keyboard_hint)
        );
            
        draw_set_color(c_white);
        draw_text_ext(
            x - sprite_get_width(s_keyboard_hint) / 2 + 1,
            y - sprite_get_height(s_keyboard_hint) + 1,
            display_key,
            sprite_get_height(s_keyboard_hint) / 2,
            sprite_get_width(s_keyboard_hint)
        );
        
        draw_set_color(c_black);
        draw_text_ext(
            x - sprite_get_width(s_keyboard_hint) / 2,
            y - sprite_get_height(s_keyboard_hint),
            display_key,
            sprite_get_height(s_keyboard_hint) / 2,
            sprite_get_width(s_keyboard_hint)
        );
    
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
        
    
    if (state_is_battle() && hover) {
        draw_sprite(hover_sprite, image_index, x, y);
    }
} else {
    draw_sprite_ext(char_sprite, 0, x, y + height, 1, 1, 90, c_white, 1);
}
