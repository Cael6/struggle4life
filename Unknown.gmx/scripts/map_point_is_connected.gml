//map_point_is_connected(point)
var point = argument0;
point.connected = true;

var conn_point;
for(var i = 0; i < ds_list_size(point.connected_points); i += 1) {
    conn_point = ds_list_find_value(point.connected_points, i);
    if(!conn_point.connected) {
        map_point_is_connected(conn_point);
    }
}