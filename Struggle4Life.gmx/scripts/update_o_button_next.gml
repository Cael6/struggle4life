//update script for next button

//Get the index of next sprite in the list
next_sprite = text_instance.s_current + 1;

//Set to 0 if the index is over length of list
if (next_sprite > text_instance.s_max) {
    next_sprite = 0;
}

//Set the index of sprite using
text_instance.s_current = next_sprite;

//Update text label
text_instance.text = text_instance.s_list[next_sprite,0]

//Update sprite
switch (body_part) {
  case "BODY":
    charcter_instance.body_sprite = text_instance.s_list[next_sprite,1];
    break;
  case "HEAD":
    charcter_instance.head_sprite = text_instance.s_list[next_sprite,1];
    break;
  case "SHIRT":
    charcter_instance.shirt_sprite = text_instance.s_list[next_sprite,1];
    break;
  case "PANTS":
    charcter_instance.pants_sprite = text_instance.s_list[next_sprite,1];
    break;
  case "SHOES":
    charcter_instance.shoes_sprite = text_instance.s_list[next_sprite,1];
    break;
}
