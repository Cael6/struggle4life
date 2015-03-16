if (enabled) {
    if (DEBUG) {
        draw_set_color(c_red);
        draw_set_alpha(0.4);
        //draw_circle(x, y, MAP_PLOT_DISTANCE_THRESHOLD, true);
        
        for (i = 0; i < connected_count; i += 1) {
            draw_line(x, y, connected_plots[i].x, connected_plots[i].y);
        }
        draw_set_alpha(1);
    }
    
    if (hover && connected_path(self.id, glb_current_map_plot)) {
        draw_sprite(sprite_index, 1, x, y);
    } else {
        draw_sprite(sprite_index, 0, x, y);
    }
    
    if (ally) {
        draw_sprite(s_ally_plot, -1, x, y);
    }
    
    if (selected) {
        draw_sprite(s_selected_plot, -1, x + width / 2, y + height / 2);
    }
    
    if (glb_current_map_plot.id == self.id) {
        draw_sprite(s_map_locator, -1, x, y);
    }
    if (DEBUG) {
        draw_set_color(c_white);
        draw_set_font(f_default_12);
        draw_set_halign(fa_center);
        draw_text(x, y+10, self.order_id);
    }
}

