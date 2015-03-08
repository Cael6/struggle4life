width = argument0;
height = argument1;

horizontal_stretch = (width  - 2 * piece_width) / piece_width;
vertical_stretch = (height  - 2 * piece_height) / piece_height;

if (horizontal_stretch < 0 || vertical_stretch < 0) {
    c_log("Got a negative stretch on 9 slice", C_LOG__FATAL);
    exit_game();
}


