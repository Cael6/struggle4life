var strip_2 = instance_create(room_width, room_height, o_cutscene_strip);
strip_2.sprite_index = s_cutscene_intro_2;

update = update_cutscene_acquire_cure;

text[0] = instance_create(472, 50, o_cutscene_text);
text[0].text = "Scientist: Hey you! Come here! Take this cure.#";

text[1] = instance_create(384, 200, o_cutscene_text);
text[1].text = "You: What do you want me to do with this?";

text[2] = instance_create(294, 350, o_cutscene_text);
text[2].text = "Scientist: There's a medical ship from Boston currently#";
text[2].text += "docked on the other side of the island. We need you to#";
text[2].text += "deliver it there.";

text[3] = instance_create(196, 530, o_cutscene_text);
text[3].text = "You: I can do that.";

text[4] = instance_create(116, 650, o_cutscene_text);
text[4].text = "Scientist: Thank you. Also, you should know, the formula#";
text[4].text += "is dieing, so get there quickly before it becomes useless.";

step_count = 5;
exit_script = start_game;
