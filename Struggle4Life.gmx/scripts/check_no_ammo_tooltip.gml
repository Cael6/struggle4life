if (glb_selected != noone) {
    if (glb_selected.using_weapon && get_resource_count(RESOURCE_AMMO) < 1) {
        th_queue_push(s_tooltip_no_ammo);
    } else if (get_resource_count(RESOURCE_AMMO) < 1) {
        th_pop_specific(s_tooltip_no_ammo);
    }
}
