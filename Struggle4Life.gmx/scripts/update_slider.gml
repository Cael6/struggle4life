y = obj_punch.y - 20;
x = obj_char.x - 25;

if (mouse_check_button_pressed(mb_left)){
    if (mouse_x < x - 2 && mouse_x < x + slider_length +2){
        if (mouse_y < y -10 && mouse_y < y +10){
            selected = 1
        }
    }
}

if (mouse_check_button_released(mb_left)){
    selected = 0
}


if (selected = 1){
    if (mouse_x < x +position) {
        position += point_distance(x +position,y,mouse_x,y)
    }
    else{
        position -= point_distance(x +position,y,mouse_x,y)
    }
}

position = clamp(position,0,slider_length)

obj_char.light_size = 8 *position/slider_length
