if (alive) {
    var curr_weapon;
    
    if (using_weapon) {
        curr_weapon = weapon;
    } else {
        curr_weapon = pistol;
    }
    
    if (curr_weapon.curr_cooldown == 0) {
        select_object();
    }
}