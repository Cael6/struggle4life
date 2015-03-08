steps += direction_of_steps;

if (steps <= 0) {
    instance_destroy();
} else if (steps >= max_steps) {
    direction_of_steps = -1;
}

alpha = steps / max_steps;