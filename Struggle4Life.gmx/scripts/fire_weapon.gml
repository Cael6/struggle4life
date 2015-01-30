//if collise destroy innstance
var i = 0;

var collided = script_execute(check_collision);
if (is_array(collided)) {
    for (var i = 0; i < array_length_1d(collided); i += 1) {
        damage_unit(collided[i], damage);
    }
}


if (object_index == o_assault_rifle) {
    if (self.shots_left > 1) {
        self.shots_left -= 1;
    } else {
        self.shots_left = self.shots_before_reload;
        with (self.character) {
            deselect_character();
        }
        self.curr_cooldown = self.cooldown;
    }
} else {
    with (self.character) {
        deselect_character();
    }
    self.curr_cooldown = self.cooldown;
}
