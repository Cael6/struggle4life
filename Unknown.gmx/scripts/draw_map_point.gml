//Draw lines to connected points
draw_set_alpha(1);
draw_set_color(make_color_rgb(250,250,250));
var connect_point;
for(var i = 0; i < ds_list_size(self.connected_points); i += 1) {
    connect_point = ds_list_find_value(self.connected_points, i);
    draw_line_width(self.x, self.y, connect_point.x, connect_point.y, 2);
}

draw_set_color(MAP_POINT_COLOR_OUTSIDE);
draw_circle(self.x, self.y, MAP_POINT_WIDTH/2, false);

draw_set_color(MAP_POINT_COLOR_INSIDE);
draw_circle(self.x, self.y, MAP_POINT_WIDTH/4, false);
