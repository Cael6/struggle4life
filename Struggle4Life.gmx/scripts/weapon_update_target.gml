var x1 = obj_get_center_x(character);
var y1 = obj_get_center_y(character);
var x2 = mouse_x;
var y2 = mouse_y;
var max_distance = range * WEAPON_RANGE_DISTANCE;

if (self.object_index == o_sniper) {
    var extended_target = extend_past_screen(
        obj_get_center_x(character),
        obj_get_center_y(character),
        mouse_x,
        mouse_y
    );
    
    target_x = extended_target[0];
    target_y = extended_target[1];
} else if (distance_between_points(x1, y1, x2, y2) > max_distance) {
    var angle = point_direction(x1, y1, x2, y2);
    target_x = x1 + lengthdir_x(max_distance, angle);
    target_y = y1 + lengthdir_y(max_distance, angle);
} else {
    target_x = mouse_x;
    target_y = mouse_y;
}
