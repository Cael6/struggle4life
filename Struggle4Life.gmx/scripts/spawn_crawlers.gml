var crawlers_to_spawn = min(irandom_range(4, 8), enemy_count);
randomize();
var group_y = irandom_range(
    440,
    700 - sprite_get_height(s_runner)
);

for (var i = 0; i < crawlers_to_spawn; i += 1) {
    var new_crawler = instance_create(
        ROOM_WIDTH,
        max(440, group_y + irandom_range(
            -1 * sprite_get_height(s_runner), 
            sprite_get_height(s_runner))
        ),
        o_runner
    );
    new_crawler.image_index = irandom_range(0, new_crawler.image_number);
}

enemy_count -= crawlers_to_spawn;
