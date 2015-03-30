last_select_2 += 1;

// Character 2 checks
var character = find_char_by_char_id(2);
if (character != noone) {
    //character 1 exists;
    if (!character.alive || character.selected) {
        //reset select_1 timer to 0 if character is dead or if they are selected.
        last_select_2 = 0;
        th_pop_specific(s_tooltip_select_2);
    }
} else {
    last_select_2 = 900;
    th_pop_specific(s_tooltip_select_2);
}

if (last_select_2 > 900 && character != noone) {
    th_queue_push(s_tooltip_select_2);
    last_select_2 = 0;
}
