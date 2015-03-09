width = sprite_get_width(sprite_index);
height = sprite_get_height(sprite_index);

order_id = -1;
scenario_id = -1;

controller = o_controller_r;

connected_plots[0] = noone;
connected_count = 0;

var self_plot = self.id;

with (o_map_plot) {
    if (
        distance_between_points(x, y, self_plot.x, self_plot.y) < MAP_PLOT_DISTANCE_THRESHOLD
        && distance_between_points(x, y, self_plot.x, self_plot.y) > 0
    ) {
        self_plot.connected_plots[self_plot.connected_count] = self.id;
        self_plot.connected_count += 1;
    }
}

action = select_plot;

ally = false;

persistent = true;
