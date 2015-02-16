with(o_weapon){
    instance_destroy()
}

with(o_character) {
    instance_destroy()
}

with(o_resource_ammo) {
    instance_destroy()
}

with(o_resource_fuel) {
    instance_destroy()
}

var num = audio_get_listener_count();
for (var i = 0; i < num; i += 1) {
    var info = audio_get_listener_info(i);
    var ind = info[? "index"];
    audio_set_master_gain(info[? "index"], 0.8);
    ds_map_destroy(info);
}

audio_stop_all();
audio_play_sound(so_bg_menu, 10, true);
