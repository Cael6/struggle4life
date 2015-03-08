if (!dragging) {
    if (mouse_check_button(mb_right)) {
        dragging = true;
        drag_x = mouse_x;
        drag_y = mouse_y;
    }
} else {
    if (mouse_check_button(mb_right)) {
        view_xview[0] = view_xview[0] + drag_x - mouse_x;
        view_yview[0] = view_yview[0] + drag_y - mouse_y;
        
    } else {
        dragging = false;
    }
}

if (mouse_wheel_down() || keyboard_check(vk_pagedown)) {
    var scroll_x = mouse_x;
    var scroll_y = mouse_y;

    var change_x = view_wview[0]/10;
    var change_y = view_hview[0]/10;
    
    view_wview[0] += change_x;
    view_hview[0] += change_y;
    
    
    if (view_wview[0] >= 2048 || view_hview[0] >= 1536) {
        view_wview[0] = 2048;
        view_hview[0] = 1536;
    } else {
        view_xview[0] -= change_x/2;
        view_yview[0] -= change_y/2;
    }
    
    view_xview[0] -= mouse_x - scroll_x;
    view_yview[0] -= mouse_y - scroll_y;
}
if (mouse_wheel_up() || keyboard_check(vk_pageup)) {
    var scroll_x = mouse_x;
    var scroll_y = mouse_y;
    
    var change_x = view_wview[0]/10;
    var change_y = view_hview[0]/10;

    view_wview[0] -= change_x;
    view_hview[0] -= change_y;
    
    
    if (view_wview[0] <= 512 || view_hview[0] <= 384) {
        view_wview[0] = 512;
        view_hview[0] = 384;
    } else {
        view_xview[0] += change_x/2;
        view_yview[0] += change_y/2;
    }
    
    
    view_xview[0] -= mouse_x - scroll_x;
    view_yview[0] -= mouse_y - scroll_y;
}

if (keyboard_check(vk_left)) {
    view_xview[0] -= view_wview[0]/10;
}

if (keyboard_check(vk_right)) {
    view_xview[0] += view_wview[0]/10;
}

if (keyboard_check(vk_up)) {
    view_yview[0] -= view_hview[0]/10;
}

if (keyboard_check(vk_down)) {
    view_yview[0] += view_hview[0]/10;
}

view_xview[0] = max(0, min(view_xview[0], room_width - view_wview[0]))
view_yview[0] = max(0, min(view_yview[0], room_height - view_hview[0]))
