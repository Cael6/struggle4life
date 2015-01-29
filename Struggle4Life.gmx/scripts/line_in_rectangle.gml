// Line
//
//       x2y2
//       /
//      /
//     /
//  x1y1
//
// Rectangle
//
// x1y1 ---- x2y1
//  |         |
//  |         |
//  |         |
// x1y2 ---- x2y2
var line = array_1d(argument0, argument1, argument2, argument3);
var rectangle = array_1d(argument4, argument5, argument6, argument7);

if ( 
    line_intersect_line(
        line[0],
        line[1],
        line[2],
        line[3],
        rectangle[0],
        rectangle[1],
        rectangle[0],
        rectangle[3]
    )
){ //check left line
    c_log("line intersected x1y1 - x1y2", C_LOG__DEBUG);
    return true;
} else if (
    line_intersect_line(
        line[0],
        line[1],
        line[2],
        line[3],
        rectangle[0],
        rectangle[3],
        rectangle[2],
        rectangle[3]
    )
) { //check bottom line
    c_log("line intersected x1y2 - x2y2", C_LOG__DEBUG);
    return true;
} else if (
    line_intersect_line(
        line[0],
        line[1],
        line[2],
        line[3],
        rectangle[2],
        rectangle[1],
        rectangle[2],
        rectangle[3]
    )
) { //check right line
    c_log("line intersected x2y1 - x2y2", C_LOG__DEBUG);
    return true;
}
return false;


