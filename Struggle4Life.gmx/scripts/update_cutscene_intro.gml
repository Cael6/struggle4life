//For current image pieces the following outlines the area to draw.
//472 - 1024 top
//0 - 554 Bottom
// Vector: <472, -768>

if (time == 50) {
    var text_1 = instance_create(472, 96, o_cutscene_text);
    text_1.text = "You are a member of what’s left of the country's military.";
} else if (time == 100) {
    var text_2 = instance_create(354, 290, o_cutscene_text);
    text_2.text = "You've been posted at a base on PEI with the purpose of controlling#";
    text_2.text += "the infected population in the surrounding area...";
} else if (time == 150) {
    var text_3 = instance_create(236, 480, o_cutscene_text);
    text_3.text = "PA System: Attention all personnel, there have been#";
    text_3.text += "multiple perimeterbreaches along the north and west #";
    text_3.text += "walls. Advising immediate evacuation.";
} else if (time == 200) {
    var text_4 = instance_create(118, 672, o_cutscene_text);
    text_4.text = "Gaurd: They’ve gotten through! We need to ge.. ARGHH!";
}

if (mouse_check_button_released(mb_left)) {
    for (var i = 0; i < 6; i += 1) {
        if (time < i * 50) {
            time = i * 50;
            break;
        }
    }
}

if (time > 300) {
    if (mouse_check_button_released(mb_left)) {
        run_cutscene_acquire_cure();
    }
}
