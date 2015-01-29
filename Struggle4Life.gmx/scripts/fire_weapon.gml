//if collise destroy innstance
var i = 0;
var weapon = self.id;

var collided = script_execute(check_collision);
if (is_array(collided)) {
    for (var i = 0; i < array_length_1d(collided); i += 1) {
        damage_unit(collided[i], weapon.damage);
    }
}

self.curr_cooldown = self.cooldown;

with (self.character) {
    deselect_character();
}
