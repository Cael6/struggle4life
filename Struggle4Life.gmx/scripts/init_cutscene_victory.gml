var strip_1 = instance_create(0, 0, o_cutscene_strip);
strip_1.sprite_index = s_victory_1;

var strip_2 = instance_create(room_width, room_height, o_cutscene_strip);
strip_2.sprite_index = s_victory_2;

update = update_cutscene_intro;

text[0] = instance_create(452, 96, o_cutscene_text);
text[0].text = "Boston Scientist: That was a close one! You must be the#";
text[0].text += "people we were radioed about earlier.";

text[1] = instance_create(354, 260, o_cutscene_text);
text[1].text = "You: We have the cure";

text[2] = instance_create(236, 460, o_cutscene_text);
text[2].text = "Scientist: Perfect, come aboard!#";

text[3] = instance_create(118, 600, o_cutscene_text);
text[3].text = "As you step onboard the ship a wave of relief washes over you.#";
text[3].text += "You have successfully delivered the cure and fulfilled your#";
text[3].text += "obligation. Hopefully, once the cure has been administered to#";
text[3].text += "a large enough population, the infection will begin to die out#";
text[3].text += "and humanity can start to rebuild.";

step_count = 4;
exit_script = goto_r_credits;
