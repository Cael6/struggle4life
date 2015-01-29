var infected_collided = false;
var i = 0;
var sniper = self.id;

with (o_infected) {
    if(
        line_in_rectangle(
            obj_get_center_x(sniper.character),
            obj_get_center_y(sniper.character),
            sniper.target_x,
            sniper.target_y,
            self.x,
            self.y,
            self.x + self.width,
            self.y + self.height
        )
    ){
        infected_collided[i] = self.id;
        i += 1;
    }
}

return infected_collided;
