with(o_dialogue) {
    instance_destroy();
}

    c_log("ran destroy_dialogue", C_LOG__DEBUG);

//destroy all options
with(o_dialogue_option) {
    instance_destroy();
}
