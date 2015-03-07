dragging = false;
drag_x = mouse_x;
drag_y = mouse_y;

if (glb_current_map_plot == noone) {
    glb_current_map_plot = o_map_base_1;
    o_map_base_1.selected = true;
}
