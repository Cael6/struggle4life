// map_points_all_connect(ds_list points)
var points = argument[0];
var all_connected = true;
var curr_point;

for(var i = 0; i < ds_list_size(points); i += 1) {
    curr_point = ds_list_find_value(points, i);
    curr_point.connected = false;
}

map_point_is_connected(ds_list_find_value(points, 0)); 

for(var i = 0; i < ds_list_size(points); i += 1) {
    curr_point = ds_list_find_value(points, i);
    if(!curr_point.connected) {
        return false;
    }
}

return true;