var obj_1 = argument0;
var obj_2 = argument1;

if (obj_1.x == obj_2.x) {
    if (obj_1.y < obj_2.y) {
        return 1;
    } else {
        return 2;
    }
} else if (obj_1.x < obj_2.x) {
    return 1;
} else {
    return 2;
}
