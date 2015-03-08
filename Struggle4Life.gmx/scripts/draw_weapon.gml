if (drawing) {
    draw_set_alpha(0.3);
    draw_set_color(make_color_rgb(50, 50, 100));
    draw_circle(
        obj_get_center_x(character),
        obj_get_center_y(character),
        range * WEAPON_RANGE_DISTANCE,
        false
    );
    draw_set_alpha(1);
}

var show_cost = false;

if (!is_pistol && glb_selected != noone) {
    if (character.id == glb_selected.id && glb_selected.using_weapon) {
        if (glb_selected.weapon.shots_before_reload == glb_selected.weapon.shots_left) {
            show_cost = true;
        }
    }
}

if (show_cost) {
    if (get_resource_count(glb_selected.weapon.resource_type) < 1) {
    
        var margin = 10;
        var padding = 8;
        var message = "No Ammo#Switch Weapons#[TAB]";
        draw_boxed_message(
            message, 
            target_x + margin,
            target_y - (string_height(message) + 2 * padding) - margin,
            padding
        );
    }
}
