var bruisers_to_spawn = min(irandom_range(1, 2), enemy_count);

var group_x = ROOM_WIDTH + sprite_get_width(s_runner) * 3;
var group_y = irandom_range(400, 700 - sprite_get_height(s_bruiser));

for (var i = 0; i < bruisers_to_spawn; i += 1) {
    var new_bruiser = instance_create(
        ROOM_WIDTH,
        irandom_range(400, 700 - sprite_get_height(s_bruiser)),
        o_bruiser
    );
    new_bruiser.image_index = irandom_range(0, new_bruiser.image_number);
}

enemy_count -= bruisers_to_spawn;
