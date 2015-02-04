//if collise destroy innstance
var i = 0;

if (resource_type == RESOURCE_NONE || get_resource_count(resource_type) > 0) {
    var collided = script_execute(check_collision);
    if (is_array(collided)) {
        for (var i = 0; i < array_length_1d(collided); i += 1) {
            damage_unit(collided[i], damage);
        }
    }
    
    if (character.object_index == o_character) {
        if (self.shots_left == self.shots_before_reload) {
            change_resource_amount(resource_type, -1);
        }
        if (self.shots_left > 1) {
            self.shots_left -= 1;
        } else {
            self.shots_left = self.shots_before_reload;
            with (self.character) {
                deselect_character();
            }
            self.curr_cooldown = self.cooldown;
        }
    }
} else if (get_resource_count(resource_type) <= 0) {
    //TODO: shake cursor and resource count or some other way 
        //to tell the user there is no ammo left. Possibly sound could do this.
}
