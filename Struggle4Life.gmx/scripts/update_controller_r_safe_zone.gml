if (glb_next_map_plot == noone && glb_has_map) {
    o_button_embark.enabled = false;
} else {
    o_button_embark.enabled = true;
}

if (!room_transfering && glb_safe_zone_night) {
    room_transfering = true;
    glb_safe_zone_night = false;
    transfer_script = goto_r_game;
    with (o_button) {
        visible = false;
        enabled = false;
    }
}
