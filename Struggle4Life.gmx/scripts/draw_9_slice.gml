draw_set_alpha(1);

//Top Left
draw_sprite_ext(
    sprite_index,
    0,
    x,
    y,
    1,
    1,
    0,
    c_white,
    1
);

//Top Center
draw_sprite_ext(
    sprite_index,
    1,
    x + piece_width,
    y,
    horizontal_stretch,
    1,
    0,
    c_white,
    1
);

//Top right
draw_sprite_ext(
    sprite_index,
    2,
    x + piece_width + piece_width * horizontal_stretch,
    y,
    1,
    1,
    0,
    c_white,
    1
);

//Center Left
draw_sprite_ext(
    sprite_index,
    3,
    x,
    y + piece_height,
    1,
    vertical_stretch,
    0,
    c_white,
    1
);

//Center
draw_sprite_ext(
    sprite_index,
    4,
    x + piece_width,
    y + piece_height,
    horizontal_stretch,
    vertical_stretch,
    0,
    c_white,
    1
);

//center right
draw_sprite_ext(
    sprite_index,
    5,
    x + piece_width + piece_width * horizontal_stretch,
    y + piece_height,
    1,
    vertical_stretch,
    0,
    c_white,
    1
);

//bottom Left
draw_sprite_ext(
    sprite_index,
    6,
    x,
    y + piece_height + piece_width * vertical_stretch,
    1,
    1,
    0,
    c_white,
    1
);

//bottom Center
draw_sprite_ext(
    sprite_index,
    7,
    x + piece_width,
    y + piece_height + piece_width * vertical_stretch,
    horizontal_stretch,
    1,
    0,
    c_white,
    1
);

//bottom right
draw_sprite_ext(
    sprite_index,
    8,
    x + piece_width + piece_width * horizontal_stretch,
    y + piece_height + piece_width * vertical_stretch,
    1,
    1,
    0,
    c_white,
    1
);

draw_set_alpha(1);