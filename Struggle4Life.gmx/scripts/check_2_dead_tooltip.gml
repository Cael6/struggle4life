// Character 2 checks dead
var character = find_char_by_char_id(2);
if (character != noone) {
    if (!char_2_already_dead && !character.alive) {
        //character was not already dead and character is dead
        th_queue_push(s_tooltip_char_2_died);
        char_2_already_dead = true;
    }
} else {
    //reset char1 already dead in case we pick another character up later.
    char_2_already_dead = false;
}
