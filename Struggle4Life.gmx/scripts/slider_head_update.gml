//if the mouse button is not clicked put frag to no
if (!mouse_check_button(mb_left))
{
    grab = false;
}

if (grab = false)//if this object is not being grabbed
{
    exit;
}
else//otherwise change its coordinates
{
    //if we slide within the constraints, update the sliders coordinate
    if ((mouse_x + xx) > leftLimit) && ((mouse_x + xx < rightLimit))
    {
        x = mouse_x + xx;
    }
    else if ((mouse_x + xx) < leftLimit)//set at left limit if user wants to slide it too far left
    {
        x = leftLimit;
    }
    else if ((mouse_x + xx) > rightLimit)//set at right limit if user wants to slide it too far right
    {
        x = rightLimit;
    }
}

//work out the percentage value
percentage = real(((x-leftLimit)/(rightLimit-leftLimit)));

if(update_type == "music") {
    glb_music_volume = percentage;
}
else if(update_type == "sound") {
    glb_sound_volume = percentage;
}