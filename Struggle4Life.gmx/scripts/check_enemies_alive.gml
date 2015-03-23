with (o_infected) {
    if (alive) {
        return true;
    }
}

return instance_number(o_infected) > 0;
