// To be used to set next destination.

if (enabled) {
    if (connected_path(self.id, glb_current_map_plot)) {
        glb_current_map_plot.selected = false;
        glb_current_map_plot = self.id;
        selected = true;
        
    }
}
