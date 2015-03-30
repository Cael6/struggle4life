var strip_2 = instance_create(room_width, room_height, o_cutscene_strip);
strip_2.sprite_index = s_cure_died;

update = update_cutscene_acquire_cure;

text[0] = instance_create(472, 50, o_cutscene_text);
text[0].text = "The Cure has expired";

step_count = 1;
exit_script = goto_r_start;
