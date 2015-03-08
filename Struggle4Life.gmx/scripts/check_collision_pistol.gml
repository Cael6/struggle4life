var infected_collided = false;
var i = 0;
var pistol = self.id;

with (o_infected) {
    if (
        point_in_rectangle(
            pistol.target_x,
            pistol.target_y,
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