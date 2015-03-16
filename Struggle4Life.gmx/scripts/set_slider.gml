//Create head
head = instance_create(x, y, o_slider_head);
head.barLength = sprite_width;
head.rightLimit = rightLimit;
head.leftLimit = leftLimit;
head.update_type = argument0;

//Set the position of the head
if(head.update_type == "music") {
    head.x = leftLimit + glb_music_volume * (rightLimit - leftLimit);
}
else if(head.update_type == "sound") {
    head.x = leftLimit + glb_sound_volume * (rightLimit - leftLimit);
}
