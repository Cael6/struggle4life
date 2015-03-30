var strip_1 = instance_create(0, 0, o_cutscene_strip);
strip_1.sprite_index = s_cutscene_intro_1;

update = update_cutscene_intro;

text[0] = instance_create(452, 96, o_cutscene_text);
text[0].text = "You are a member of what’s left of the country's military.";

text[1] = instance_create(354, 260, o_cutscene_text);
text[1].text = "You've been posted at a base on PEI with the purpose of#";
text[1].text += "controlling the infected population in the surrounding#";
text[1].text += "area...";

text[2] = instance_create(236, 460, o_cutscene_text);
text[2].text = "PA System: Attention all personnel, there have been#";
text[2].text += "multiple perimeterbreaches along the north and west #";
text[2].text += "walls. Advising immediate evacuation.";

text[3] = instance_create(118, 672, o_cutscene_text);
text[3].text = "Gaurd: They’ve gotten through! We need to ge.. ARGHH!";

step_count = 4;
exit_script = run_cutscene_acquire_cure;
