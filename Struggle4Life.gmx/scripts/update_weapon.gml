if (curr_cooldown > 0) {
    curr_cooldown -= 1;
}

if (is_pistol) {
    drawing = self.character.selected && !self.character.using_weapon;
} else {
    drawing = self.character.selected && self.character.using_weapon;
}
