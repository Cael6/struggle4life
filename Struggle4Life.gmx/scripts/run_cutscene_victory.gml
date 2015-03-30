glb_current_cutscene = CUTSCENE_VICTORY;

with (o_weapon) {
    instance_destroy();
}

with (o_character) {
    instance_destroy();
}

with (o_resource) {
    instance_destroy();
}

with (o_truck) {
    instance_destroy();
}

goto_r_cutscene();
