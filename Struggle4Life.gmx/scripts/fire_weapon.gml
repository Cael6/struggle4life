//if collise destroy innstance
var i = 0;
var character = self.character;

if (name == "pistol") {
    with (o_runner) {
        if (
            point_in_rectangle(
                mouse_x,
                mouse_y,
                self.x,
                self.y,
                self.x + self.width,
                self.y + self.height
            )
        ) {
            damage_unit(self.id, WEAPON_PISTOL_DAMAGE);
        }
    }
} else if (name = "shotgun") {
    var shotgun_radius = self.radius;
    with (o_infected) {
        
        if(
            circle_intersect_rectangle(
                self.x,
                self.y,
                self.x + self.width,
                self.y + self.height,
                mouse_x,
                mouse_y,
                shotgun_radius
            )
        ){
            damage_unit(self.id,WEAPON_SHOTGUN_DAMAGE);
        }
    }
} else if(name = "sniper") {
    var extended_line = extend_past_screen(
        obj_get_center_x(character),
        obj_get_center_y(character),
        mouse_x,
        mouse_y
    );
    
    with (o_runner) {
        if (
            line_in_rectangle(
                obj_get_center_x(character), 
                obj_get_center_y(character),
                extended_line[0],
                extended_line[1],
                self.x,
                self.y,
                self.x + self.width,
                self.y + self.height
            )
        ) {
                damage_unit(self.id, WEAPON_SNIPER_DAMAGE);
        }
                   
    }
}

self.curr_cooldown = self.cooldown;

with (self.character) {
    deselect_character();
}
