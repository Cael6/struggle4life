dragging = false;
drag_x = mouse_x;
drag_y = mouse_y;

with (o_map_plot) {
    enabled = true;
}

with (o_character) {
    visible = false;
}

with (o_truck) {
    visible = false;
}

with (o_resource) {
    visible = false;
}

view_xview[0] = glb_current_map_plot.x - 512;
view_yview[0] = glb_current_map_plot.y - 378;

show_particles(false, false, false, false);
