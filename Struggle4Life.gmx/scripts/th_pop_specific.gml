var specific = argument0;
var new_queue = array_1d(noone);

for (var i = 1; i < array_length_1d(queue); i += 1) {    
    if (specific != queue[i]) {
        new_queue[array_length_1d(new_queue)] = queue[i];
    }
}
queue = new_queue;
