var new_queue = array_1d(noone);
for (var i = 2; i < array_length_1d(queue); i += 1) {
    new_queue[i - 1] = queue[i];
}
queue = new_queue;
