if (character) {

    if (curr_cooldown > 0) {
        curr_cooldown -= 1;
    } else {
        if (false) {
        if (glb_selected == noone && state_is_battle()) {
            var curr_is_pistol = is_pistol;
            with (self.character) {
                c_log("character id: " + string(self.id), C_LOG__DEBUG);
                if (
                    using_weapon && !curr_is_pistol 
                    || !using_weapon && curr_is_pistol
                ) {
                    select_character();
                }
            }
        }
        }
    }
    
    if (character.object_index == o_character) {
        if (is_pistol) {
            drawing = self.character.selected && !self.character.using_weapon;
        } else {
            drawing = self.character.selected && self.character.using_weapon;
        }   
        
        if (character.selected) {
            if ((character.using_weapon && !is_pistol) 
                || (!character.using_weapon && is_pistol)) {
                weapon_update_target();
                
                var infected_collided = script_execute(check_collision); //get collided
                
                with (o_infected) {
                    self.gun_hover = false; //reset gun_hover
                }
                
                if (is_array(infected_collided)) {
                    for (var i = 0; i < array_length_1d(infected_collided); i += 1) {
                        infected_collided[i].gun_hover = true;  //set gun_hover for the collided
                    }
                }
            }
        } 
    }
}
