if (!dragging) {
    if (mouse_check_button(mb_left)) {
        dragging = true;
        drag_x = mouse_x;
        drag_y = mouse_y;
    }
} else {
    if (mouse_check_button(mb_left)) {
        view_xview = view_xview + drag_x - mouse_x;
        view_yview = view_yview + drag_y - mouse_y;
        
        view_xview = max(0, min(view_xview, room_width - view_wview))
        view_yview = max(0, min(view_yview, room_height - view_hview))
    } else {
        dragging = false;
    }
}
