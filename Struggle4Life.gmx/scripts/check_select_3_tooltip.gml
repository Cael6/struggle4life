last_select_3 += 1;

// Character 2 checks
var character = find_char_by_char_id(3);
if (character != noone) {
    //character 1 exists;
    if (!character.alive || character.selected) {
        //reset select_1 timer to 0 if character is dead or if they are selected.
        last_select_3 = 0;
        th_pop_specific(s_tooltip_select_3);
    }
} else {
    last_select_3 = 900;
    th_pop_specific(s_tooltip_select_3);
}

if (last_select_3 > 900 && character != noone) {
    th_queue_push(s_tooltip_select_3);
    last_select_3 = 0;
}
