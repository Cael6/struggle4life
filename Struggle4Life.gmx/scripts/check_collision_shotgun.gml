var infected_collided = false;
var i = 0;
var shotgun = self.id;

with (o_infected) {
    if(
        circle_intersect_rectangle(
            self.x,
            self.y,
            self.x + self.width,
            self.y + self.height,
            shotgun.target_x,
            shotgun.target_y,
            shotgun.radius
        )
    ){
        infected_collided[i] = self.id;
        i += 1;
    }
}

return infected_collided;