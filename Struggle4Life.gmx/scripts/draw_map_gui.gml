
var helper_margin = 32;

if (!glb_hide_map_help) {

    var helper_width = 250;
    var helper_height = 180;
    var helper_margin = 32;
    
    draw_set_alpha(0.8);
    draw_set_color(c_black);
    draw_roundrect(
        ROOM_WIDTH - (helper_width + helper_margin),
        helper_margin,
        ROOM_WIDTH - helper_margin,
        (helper_height + helper_margin),
        false
    );
    
    draw_set_color(c_white);
    draw_roundrect(
        ROOM_WIDTH - (helper_width + helper_margin),
        helper_margin,
        ROOM_WIDTH - helper_margin,
        (helper_height + helper_margin),
        true
    );
    
    var padding = 10;
    var curr_x = ROOM_WIDTH - (helper_width + helper_margin) + padding;
    var curr_y = helper_margin + padding;
    var font_height = string_height("test");
    
    draw_set_halign(fa_left);
    
    draw_sprite(s_mouse_left_click, -1, curr_x, curr_y);
    draw_text(
        curr_x + sprite_get_width(s_mouse_left_click) + padding,
        curr_y + (sprite_get_height(s_mouse_left_click) - font_height) / 2,
        "Select next destination"
    );
    
    curr_y += sprite_get_height(s_mouse_left_click) + padding;
    
    draw_sprite(s_mouse_right_click, -1, curr_x, curr_y);
    draw_text(
        curr_x + sprite_get_width(s_mouse_right_click) + padding,
        curr_y + (sprite_get_height(s_mouse_right_click) - font_height) / 2,
        "Pan map"
    );
    
    curr_y += sprite_get_height(s_mouse_right_click) + padding;
    
    draw_sprite(s_mouse_scroll, -1, curr_x, curr_y);
    draw_text(
        curr_x + sprite_get_width(s_mouse_scroll) + padding,
        curr_y + (sprite_get_height(s_mouse_scroll) - font_height) / 2,
        "Zoom in/out"
    );
    
    curr_y += sprite_get_height(s_mouse_scroll) + padding;
    
    draw_sprite(s_keyboard_hint, -1, curr_x, curr_y);
    
    draw_set_halign(fa_center);
    draw_text(curr_x + sprite_get_width(s_keyboard_hint) / 2 + 1, curr_y + 1, "H");
    draw_set_color(c_black);
    
    draw_text(curr_x + sprite_get_width(s_keyboard_hint) / 2, curr_y, "H");
    draw_set_color(c_white);
    draw_set_halign(fa_left);
    draw_text(
        curr_x + sprite_get_width(s_keyboard_hint) + padding,
        curr_y + (sprite_get_height(s_keyboard_hint) - font_height) / 2,
        "Hide / Show help"
    );
    
} else {
    draw_set_color(c_black);
    draw_text(ROOM_WIDTH - string_width('"H"') - helper_margin + 1, helper_margin + 1, '"H"'); 
    draw_set_color(c_white);
    draw_text(ROOM_WIDTH - string_width('"H"') - helper_margin, helper_margin, '"H"'); 
}



