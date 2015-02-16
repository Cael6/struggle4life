draw_set_alpha(0.9);
draw_set_font(f_oswald);

var show_cost = false;

if (glb_selected != noone) {
    if (glb_selected.weapon.resource_type == resource_type 
        && glb_selected.using_weapon) {
        if (glb_selected.weapon.shots_before_reload == glb_selected.weapon.shots_left) {
            show_cost = true;
        }
    }
}

if (show_cost) {
    draw_set_color(make_color_rgb(180, 180, 20));
} else {
    draw_set_color(make_color_rgb(20, 20, 20));
}

draw_roundrect(x, y, x + width, y + height, false);

draw_set_color(c_white);
var text_height = string_height(string(amount));
draw_text(x + 7, y + height / 2 - text_height / 2, string(amount));

draw_sprite(
    resource_icon, 
    image_index, 
    x + width - sprite_get_width(resource_icon) - 7,
    y + height / 2 - sprite_get_height(resource_icon) / 2
);

if (show_cost) {
    draw_text(
        x + 7 + string_width(string(amount)),
        y + height / 2 - text_height / 2,
        " - 1"
    );
}
