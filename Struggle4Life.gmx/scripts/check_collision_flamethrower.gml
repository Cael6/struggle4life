var infected_collided = false;
var i = 0;
var flamethrower = self.id;

with (o_infected) {
    if(
        circle_intersect_rectangle(
            self.x,
            self.y,
            self.x + self.width,
            self.y + self.height,
            obj_get_center_x(flamethrower.character),
            obj_get_center_y(flamethrower.character),
            flamethrower.radius
        )
    ){
        infected_collided[i] = self.id;
        i += 1;
    }
}

return infected_collided;
