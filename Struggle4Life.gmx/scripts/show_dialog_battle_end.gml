//I don't know where to put this so I just created this file under dialogue.
//We can replace it to where it should be.

var dialogue = instance_create(
                   get_horizontal_center_from_width(DIALOGUE_WIDTH),
                   get_vertical_center_from_height(DIALOGUE_HEIGHT),
                   o_dialogue
               );

var dialogue_text = "All infected are gone now. Let's move on.";
with (dialogue) {
    set_dialogue(dialogue_text);
}

dialogue_add_option(dialogue, "Venture Onward", move_ahead, '1');
