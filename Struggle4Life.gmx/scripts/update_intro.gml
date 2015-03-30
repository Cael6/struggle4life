time += 1;
if (mouse_check_button_released(mb_left)) {
    if (time < 128) {
        time = 128;
    } else if (time < 256) {
        time = 256;
    }
}
if (time == 1) {
    audio_play_sound(so_zombie_1, 10, false);
}

if (time == 128) {
    audio_stop_sound(so_zombie_1);
    audio_play_sound(so_truck, 10, false);
}
if (time < 64) {
    struggle_soft_image_index = time;
    draw_struggle_soft = true;
    draw_struggle_4_life = false;
} else if (time < 128) {
    alpha = (128 - time) / 64;
} else if (time < 192) {
    draw_struggle_soft = false;
    draw_struggle_4_life = true;
    scale = 1 - ((192 - time) / 64);
    alpha = 1 - max((192 - time) / 32, 0) / 2;
} else if (time < 256) {
    alpha = 1;
    scale = 1;
} else {
    audio_stop_sound(so_buttonn_embark);
    goto_r_debug();
}
