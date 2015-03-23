// To be used to set next destination.

if (enabled) {
    if (connected_path(self.id, glb_current_map_plot)) {
        if (glb_next_map_plot != noone) {
            glb_next_map_plot.selected = false;
        }
        glb_next_map_plot = self.id;
        selected = true;
        play_sound_effect(so_zone_selected, false);
    }
}
