var character_collided = false;
var i = 0;
var ss = self.id;
with (o_character) {
    if (
        point_in_rectangle(
            ss.target_x,
            ss.target_y,
            x,
            y,
            x + width,
            y + height
        )
    ) {
        character_collided[i] = self.id;
        i += 1;
    }
}

return character_collided;