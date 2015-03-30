// Character 3 checks dead
var character = find_char_by_char_id(3);
if (character != noone) {
    if (!char_3_already_dead && !character.alive) {
        //character was not already dead and character is dead
        th_queue_push(s_tooltip_char_3_died);
        char_3_already_dead = true;
    }
} else {
    //reset char1 already dead in case we pick another character up later.
    char_3_already_dead = false;
}
