//set_o_button(string text, int width, int height, color text_color, fn action);
text = argument[0];
width = argument[1];
height = argument[2];
text_color = argument[3];
action = argument[4];

enabled = true;
sprite = s_button;

var b_width = width;
var b_height = height;

nine_slice = instance_create(x, y, o_9_button);
with (nine_slice) {
    set_9_slice(b_width, b_height);
}
nine_slice.depth = depth + 1;
