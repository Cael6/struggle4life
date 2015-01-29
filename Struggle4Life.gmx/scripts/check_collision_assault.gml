var infected_collided = false;
var i = 0;
var ar = self.id;
with (o_infected) {
    if (
        point_in_rectangle(
            ar.target_x,
            ar.target_y,
            x,
            y,
            x + width,
            y + height
        )
    ) {
        infected_collided[i] = self.id;
        i += 1;
    }
}

return infected_collided;
