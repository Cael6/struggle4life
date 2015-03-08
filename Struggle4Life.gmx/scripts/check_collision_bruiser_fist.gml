var character_collided = false;
var i = 0;
var bf = self.id;
with (o_character) {
    if (
        rectangle_in_rectangle(
            bf.character.x,
            bf.character.y,
            bf.character.x + bf.character.width,
            bf.character.y + bf.character.height,
            self.x,
            self.y,
            self.x + self.width,
            self.y + self.height
        )
    ) {
        character_collided[i] = self.id;
        i += 1;
    }
}

return character_collided;