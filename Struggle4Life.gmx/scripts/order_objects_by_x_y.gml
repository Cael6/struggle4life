var objects = argument0;
var start_i = argument1;
var end_i = argument2;

if (start_i >= end_i) {
    return array_1d(objects[start_i]);
}

//Divide and Conquer
var left_half = order_objects_by_x_y(objects, start_i, floor((start_i + end_i) / 2));
var right_half = order_objects_by_x_y(objects, floor((start_i + end_i) / 2) + 1, end_i);

var left_i = 0;
var right_i = 0;
var left_count = array_length_1d(left_half);
var right_count = array_length_1d(right_half);

var merged = array_1d();

//Merge
while (left_i < left_count && right_i < right_count) {
    if (left_i < left_count && right_i < right_count) {
        if (compare_x_y(left_half[left_i], right_half[right_i]) == 1) {
            merged[left_i + right_i] = left_half[left_i];
            left_i += 1;
        } else {
            merged[left_i + right_i] = right_half[right_i];
            right_i += 1;
        }
    } else if (left_i < left_count) {
        merged[left_i + right_i] = left_half[left_i];
        left_i += 1;
    } else {
        merged[left_i + right_i] = right_half[right_i];
        right_i += 1;
    }
}

return merged;
