// Character 1 checks dead
var character = find_char_by_char_id(1);
if (character != noone) {
    if (!char_1_already_dead && !character.alive) {
        //character was not already dead and character is dead
        th_queue_push(s_tooltip_char_1_died);
        char_1_already_dead = true;
    }
} else {
    //reset char1 already dead in case we pick another character up later.
    char_1_already_dead = false;
}
