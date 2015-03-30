draw_sprite(
    attack_animation,
    floor((weapon.curr_cooldown / weapon.cooldown) * image_number),
    x,
    y
);
