//dialogue_get_next_option_pos(o_dialogue dialogue); returns a 2 element array [x_pos, y_pos]

var dialogue = argument0;

var pos;
pos[0] = dialogue.x + DIALOGUE_PADDING;
pos[1] = dialogue.y + DIALOGUE_PADDING + dialogue.text_height + 3 * DIALOGUE_PADDING;

var tmp_option;
for (var i = 0; i < ds_list_size(dialogue.options); i += 1) {
    tmp_option = ds_list_find_value(dialogue.options, i);
    pos[1] += tmp_option.height + DIALOGUE_PADDING;
}

return pos;
