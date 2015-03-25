var strip_1 = instance_create(0, 0, o_cutscene_strip);
strip_1.sprite_index = s_cutscene_intro_1;
var strip_2 = instance_create(room_width, room_height, o_cutscene_strip);
strip_2.sprite_index = s_cutscene_intro_2;

update = update_cutscene_intro;