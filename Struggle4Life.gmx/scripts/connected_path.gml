var plot1 = argument0;
var plot2 = argument1;

for (i = 0; i < plot1.connected_count; i++) {
    if (plot1.connected_plots[i].id = plot2.id) {
        return true;
    }
}

return false;
