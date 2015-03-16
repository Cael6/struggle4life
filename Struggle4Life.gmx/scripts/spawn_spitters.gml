var spitters_to_spawn = min(irandom_range(3, 6), enemy_count);

var curr_x = ROOM_WIDTH;
var curr_y = irandom_range(400, 700 - sprite_get_height(s_runner));
var angle_to_sniper = point_direction(
    160 + sprite_get_width(s_char_1) / 2,
    256 + sprite_get_height(s_char_1) / 2,
    curr_x,
    curr_y
);

var distance_from_sniper = distance_between_points(
    160 + sprite_get_width(s_char_1) / 2,
    256 + sprite_get_height(s_char_1) / 2,
    curr_x,
    curr_y
);

for (var i = 0; i < spitters_to_spawn; i += 1) {
    var new_spitter = instance_create(curr_x, curr_y, o_spitter);
    new_spitter.image_index = irandom_range(0, new_spitter.image_number);
    distance_from_sniper += sprite_get_width(s_spitter) * 2;
    curr_x = 160 + sprite_get_width(s_char_1) / 2 
        + lengthdir_x(distance_from_sniper, angle_to_sniper);
    curr_y = 256 + sprite_get_height(s_char_1) / 2
        + lengthdir_y(distance_from_sniper, angle_to_sniper);
}

enemy_count -= spitters_to_spawn;
