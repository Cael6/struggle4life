//Variables for o_dialogue_options objects.

text = "";
options = ds_list_create();
text_width = -1;
text_height = -1;
x = get_horizontal_center_from_width(DIALOGUE_WIDTH);
y = get_vertical_center_from_height(DIALOGUE_HEIGHT);

nine_slice = instance_create(x, y, o_9_button);
with (nine_slice) {
    set_9_slice(DIALOGUE_WIDTH, DIALOGUE_HEIGHT);
}
nine_slice.depth = depth + 1;