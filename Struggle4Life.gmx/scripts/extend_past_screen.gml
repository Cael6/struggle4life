var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;

var angle = point_direction(x1,y1, x2, y2);
var room_max = sqrt(sqr(ROOM_WIDTH) + sqr(ROOM_HEIGHT));

var extended = array_1d(
    x1 + lengthdir_x(room_max, angle),
    y1 + lengthdir_y(room_max, angle)
);

return extended;