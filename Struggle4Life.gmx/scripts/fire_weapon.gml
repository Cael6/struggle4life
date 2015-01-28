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
            damage_unit(WEAPON_PISTOL_DAMAGE);
        }
    }
} else if (name = "shotgun") {
    while(true){
        instance = instance_find(o_runner, i);
        if(instance > 0){
           if(collision_circle(mouse_x,mouse_y, 16, instance,true,false)){
                with(instance){
                    damage_unit(WEAPON_SHOTGUN_DAMAGE);
                }
           }
        }
        else{
            break;
        }
        i++;
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
            collision_line(
                obj_get_center_x(character), 
                obj_get_center_y(character),
                extended_line[0],
                extended_line[1],
                self.id,
                false,
                true
            )
        ) {
            damage_unit(WEAPON_SNIPER_DAMAGE);
        }
                   
    }
}

self.curr_cooldown = self.cooldown;

with (self.character) {
    deselect_character();
}
