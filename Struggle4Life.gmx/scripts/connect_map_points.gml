// connect_map_points(point1, point2)
var point1 = argument[0];
var point2 = argument[1];


var distance = sqrt(sqr(point1.x - point2.x) + sqr(point1.y - point2.y));
if(distance <= MAP_MAX_DISTANCE_BETWEEN_CONNECTED_POINTS) {
    //points in range, connect
    ds_list_add(point1.connected_points, point2);
    ds_list_add(point2.connected_points, point1);
}