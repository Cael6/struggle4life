var rows = argument0;
var cols = argument1;
var array;
for (var i = 0; i < rows; i += 1) {
    for (var j = 0; j < cols; j += 1) {
        array[i, j] = argument[i * cols + j + 2];
    }
}