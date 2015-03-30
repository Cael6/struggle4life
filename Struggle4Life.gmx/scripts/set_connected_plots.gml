var curr_plots = argument0;
var plot_count = argument1;

var next_plots;
var next_count = 0;
var duplicate_plot = false;

for (var i = 0; i < array_length_1d(curr_plots); i += 1) {
    if (curr_plots[i].order_id == -1) {
        curr_plots[i].order_id = plot_count; //Set this current plot
        plot_count += 1;
    }
    for (var j = 0; j < array_length_1d(curr_plots[i].connected_plots); j += 1) {
        if (curr_plots[i].connected_plots[j].order_id == -1) { //plot not already set
            for (var k = 0; k < next_count; k += 1) { 
                if (next_plots[k].id == curr_plots[i].connected_plots[j].id) {
                    //plot already set up to be set in next plots.
                    duplicate_plot = true;
                }
            }
            if (!duplicate_plot) {
                //Not a duplicate add to list to be set.
                next_plots[next_count] = curr_plots[i].connected_plots[j];
                next_count += 1;
            }
        }
    }
}

if (next_count > 0) {
    set_connected_plots(next_plots, plot_count);
} else {
    c_log("Plots set", C_LOG__INFO);
}