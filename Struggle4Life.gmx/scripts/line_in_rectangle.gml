//bool test_line_intersection(Line line, Vector2 bottom_left, Vector2 top_right, out float intersect_amount){
var line = argument0;
var rectangle;
rectangle[0,0] = argument1;
rectangle[0,1] = argument2;
rectangle[1,0] = argument3;
rectangle[1,1] = argument4;


if(rectangle[1,0] < line[0,0]){
    // player is not intersecting line.
    return false;
}

if(rectangle[0,0] > line[1,0]){
    // player is not intersecting line.
    return false;
}

if(rectangle[1,0] < line[1,1]){
    // bottom of player is below line 0, and player is intersecting line
    intersect_amount = line.Y - bottom_left.Y;
    return true;
}

// player is not intersecting line.
return false;

