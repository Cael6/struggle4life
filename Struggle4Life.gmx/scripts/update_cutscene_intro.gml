//For current image pieces the following outlines the area to draw.
//472 - 1024 top
//0 - 554 Bottom
// Vector: <472, -768>

if (time == 50) {
    var text_1 = instance_create(472, 100, o_cutscene_text);
    text_1.text = "You are a member of what’s left of the country's military.";
} else if (time == 100) {
    var text_2 = instance_create(290, 300, o_cutscene_text);
    text_2.text = "       You've been posted at a base on PEI with the purpose of#controlling the infected population in the surrounding area...";
}
