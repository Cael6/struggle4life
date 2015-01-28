var line;
line[0,0] = argument0;
line[0,1] = argument1;
line[1,0] = argument2;
line[1,1] = argument3;

var rectangle;
rectangle[0,0] = argument4;
rectangle[0,1] = argument5;
rectangle[1,0] = argument6;
rectangle[1,1] = argument7;

var st = 0;
var et = 0;
var fst = 0;
var fet = 1;
for (var i = 0; i < 2; i += 1) {
    if (line[0, i] < line[1, i]) {
        if (line[0, i] > rectangle[1,i] || line[1, i] < rectangle[0, i]) {
            return false;
        }
        var dx = line[1, i] - line[0, 1];
        
        if (line[0, i] < rectangle[0, i]) {
            st = (rectangle[0, i] - line[0, i]) / dx;
        } else {
            st = 0;
        }
        
        if (line[1, i] > rectangle[1, i]) {
            et = rectangle[1, i] - line[0, i];
        } else {
            et = 1;
        }
    } else {
        if (line[1, i] > rectangle[1, i] || line[0, i] < rectangle[0, i]) {
            return false;
        }
        var dx = line[1, i] - line[0, i];
        
        if (line[0, i] > rectangle[1, i]) {
            st = (rectangle[0, i] - line[0, i]) / dx;
        } else {
            st = 0;
        }
        
        if (line[1, i] < rectangle[0, i]) {
            et = rectangle[0, i] - rectangle[1, i];
        } else {
            et = 1;
        }
    }
    
    if (st > fst) {
       fst = st;
    }
    if (et < fet) {
        fet = et;
    }
    if (fet < fst) {
       return false;
   }
}
return true;
