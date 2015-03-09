switch (instance_number(o_character)) {
    case 0:
        return array_1d(64, 160);
    case 1:
        return array_1d(64, 160);
    case 2:
        return array_1d(160, 256);
    case 3:
        return array_1d(64, 160 + sprite_get_height(s_char_1));
    case 4:
        return array_1d(160, 256 + sprite_get_height(s_char_1));
}