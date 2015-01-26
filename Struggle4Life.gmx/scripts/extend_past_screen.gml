var pos_start = argument0;
var pos_end = argument1;

var dx = pos_end[0] - pos_start[0];
var dy = pos_end[1] - pos_start[1];

var length = sqrt(sqr(dx) + sqr(dy));
var room_max = sqrt(sqr(ROOM_WIDTH) + sqr(ROOM_HEIGHT));
var extend_length = room_max/length;

var extended;
extended[0] = pos_start[0] + dx * extend_length;
extended[1] = pos_start[1] + dy * extend_length;

return extended;
