//Gets the correct sprite index based off of the mouse position

if (hover) {
    return 5;
} else {
    if (mouse_x > x) {
        if (mouse_x < x + width) {
            if (mouse_y > y) {
                return 2;
            } else {
                return 8;
            }
        } else {
            if (mouse_y > y) {
                if (mouse_y < y + height) {
                    return 6;
                } else {
                    return 3;
                }
            } else {
                return 9;
            }
        }
    } else {
        if (mouse_y > y) {
            if (mouse_y < y + height) {
                return 4;
            } else {
                return 1;
            }
        } else {
            return 7;
        }
    }
}
