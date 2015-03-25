
last_select_1 += 1;

// Character 1 checks
var character = find_char_by_char_id(1);
if (character != noone) {
    //character 1 exists;
    if (!character.alive || character.selected) {
        //reset select_1 timer to 0 if character is dead or if they are selected.
        last_select_1 = 0;
        th_pop_specific(s_tooltip_select_1);
    }
} else {
    last_select_1 = 900;
    th_pop_specific(s_tooltip_select_1);
}

if (last_select_1 > 900 && character != noone) {
    th_queue_push(s_tooltip_select_1);
    last_select_1 = 0;
}
