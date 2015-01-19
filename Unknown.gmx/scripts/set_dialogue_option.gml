//update_dialogue_option(string text, fn function, char keypress);

text = argument[2] + ": " + argument[0];
action = argument[1];
keypress = ord(argument[2]);
text_alpha = DIALOGUE_OPTION_TEXT_ALPHA;
width = DIALOGUE_WIDTH - 2 * DIALOGUE_PADDING;
height = string_height_ext(text, DIALOGUE_LINE_SEP, width);
enabled = true;