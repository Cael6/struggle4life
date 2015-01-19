
randomize();
var points = ds_list_create();
var num_points = irandom_range(MAP_LEAST_POINTS, MAP_MOST_POINTS);
var new_point;
var good_map = false;
var map_width_with_padding = MAP_WIDTH - 2 * MAP_PADDING;
var map_height_with_padding = MAP_HEIGHT - 2 * MAP_PADDING;
var rows = floor(sqrt(num_points * MAP_HEIGHT / MAP_WIDTH));
var cols = floor(num_points / rows);
for(var i = 0; i < cols; i += 1) {
    for(var j = 0; j < rows; j+=1) {
        new_point = instance_create(
            get_horizontal_center_from_width(MAP_POINT_WIDTH),
            get_vertical_center_from_height(MAP_POINT_HEIGHT),
            o_map_point
        );
        
        ds_list_add(points, new_point);
    }
}
num_points = rows * cols;
var curr_point, connect_point;
while(!good_map) {
    //Spread points
    for(var i = 0; i < num_points; i+=1) {
        curr_point = ds_list_find_value(points, i);
        curr_point.x += irandom_range(-(MAP_WIDTH - MAP_PADDING * 2)/2, (MAP_WIDTH - MAP_PADDING * 2)/2);
        curr_point.y += irandom_range(-(MAP_HEIGHT - MAP_PADDING * 2)/2,(MAP_HEIGHT - MAP_PADDING * 2)/2);
    }
    for(var i = 0; i < num_points; i+=1) {
        curr_point = ds_list_find_value(points, i);
        for(var j = i + 1; j < num_points; j+= 1) {
            connect_point = ds_list_find_value(points, j);
            connect_map_points(curr_point, connect_point);
        }
    }
    good_map = map_points_all_connect(points);
    if(!good_map) {
        for(var i = 0; i < num_points; i += 1) {
            curr_point = ds_list_find_value(points, i);
            curr_point.x = get_horizontal_center_from_width(MAP_POINT_WIDTH);
            curr_point.y = get_vertical_center_from_height(MAP_POINT_HEIGHT);
            ds_list_destroy(curr_point.connected_points);
            curr_point.connected_points = ds_list_create();
        }
    }
}

ds_list_destroy(self.map_points);
self.map_points = points;