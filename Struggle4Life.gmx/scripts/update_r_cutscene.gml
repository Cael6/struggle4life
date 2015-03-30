if (mouse_check_button_released(mb_left)) {
    for (var i = 0; i <= step_count + 2; i += 1) {
        if (time < i * step_size) {
            time = i * step_size;
            break;
        }
    }
}

for (j = 1; j <= (step_count + 1); j += 1) {
    if (time == step_size * j) {
        if (j <= step_count) {
            text[j - 1].animating = true;
        }
        if (j > 1) {
            with (text[j - 2]) {
                force_cutscene_text_to_final();
            }
        }
    }
}

if (mouse_check_button_released(mb_left) && time > (step_count + 2) * step_size ) {
    script_execute(exit_script);
}

if (update != -1) {
    script_execute(update);
}

time += 1;
