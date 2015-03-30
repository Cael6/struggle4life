if (!glb_map_plots_ordered) {
    c_log("plots ordered", C_LOG__INFO);
    glb_current_map_plot = o_map_base_1;
    glb_next_map_plot = glb_current_map_plot.connected_plots[0];
    order_and_set_plots();
    glb_map_plots_ordered = true;
    close_map_return_to_embark();
}


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

if (mouse_wheel_down() || keyboard_check(vk_pagedown) || keyboard_check(ord('Q'))) {
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
if (mouse_wheel_up() || keyboard_check(vk_pageup) || keyboard_check(ord('E'))) {
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

if (keyboard_check(vk_left) || keyboard_check(ord('A'))) {
    view_xview[0] -= view_wview[0]/10;
}

if (keyboard_check(vk_right) || keyboard_check(ord('D'))) {
    view_xview[0] += view_wview[0]/10;
}

if (keyboard_check(vk_up) || keyboard_check(ord('W'))) {
    view_yview[0] -= view_hview[0]/10;
}

if (keyboard_check(vk_down) || keyboard_check(ord('S'))) {
    view_yview[0] += view_hview[0]/10;
}

view_xview[0] = max(0, min(view_xview[0], 2048 - view_wview[0]));
view_yview[0] = max(0, min(view_yview[0], 1536 - view_hview[0]));

if (keyboard_check_released(ord('H'))) {
    glb_hide_map_help = !glb_hide_map_help;
}

with (o_button) {
    scale = view_wview[0] / view_wport[0] ;
    width = base_width * scale;
    height = base_height * scale;
    x = base_x * scale + view_xview[0];
    y = base_y * scale + view_yview[0];
}