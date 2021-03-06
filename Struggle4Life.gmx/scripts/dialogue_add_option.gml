//dialogue_add_option(o_dialogue dialogue, string option_text, fn action, char keyboard)
var dialogue = argument[0];
var option_text = argument[1];
var option_action = argument[2];
var keypress = argument[3];

var next_pos = dialogue_get_next_option_pos(dialogue);

var option = instance_create(
    next_pos[0],
    next_pos[1],
    o_dialogue_option
);

with (option) {
    set_dialogue_option(
        option_text,
        option_action,
        keypress
    );
}

if (argument_count > 4) {
    option.arguments = argument[4];
}

ds_list_add(dialogue.options, option);

return option;
