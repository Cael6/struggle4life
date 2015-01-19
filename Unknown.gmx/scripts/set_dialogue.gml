// update_dialogue(string text, string option_1_text, fn option_1_function, string option_2_text, fn option_2_function,...)
text = argument[0];

//calculate text_width and height
text_width = DIALOGUE_WIDTH - 2 * DIALOGUE_PADDING;
text_height = string_height_ext(text, DIALOGUE_LINE_SEP, text_width);

//reset list of options
ds_list_destroy(options);
options = ds_list_create();

var counter = 1;
var new_option, option_text, option_fn, curr_y, curr_x, option_keypress;
curr_y = y + DIALOGUE_PADDING + DIALOGUE_LINE_SEP + text_height;
curr_x = x + DIALOGUE_PADDING;
option_keypress = 0;

return self;