var character_collided = false;
var i = 0;
var rb = self.id;
with (o_character) {
    if (
        rectangle_in_rectangle(
            self.x,
            self.y,
            self.x + self.width,
            self.y + self.height,
            rb.character.x,
            rb.character.y,
            rb.character.x + rb.character.width,
            rb.character.y + rb.character.height
        )
    ) {
        character_collided[i] = self.id;
        i += 1;
    }
}

return character_collided;
