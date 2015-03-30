var curr_range = distance_between_points(
    obj_get_center_x(character),
    obj_get_center_y(character),
    mouse_x,
    mouse_y
);
var max_range = range * WEAPON_RANGE_DISTANCE;
radius = max_radius * (curr_range / max_range);
damage = WEAPON_SHOTGUN_MIN_DAMAGE 
    + (WEAPON_SHOTGUN_MAX_DAMAGE - WEAPON_SHOTGUN_MIN_DAMAGE) * (1 - curr_range / max_range);
