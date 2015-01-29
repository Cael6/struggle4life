if (glb_selected != noone) {
    if (glb_selected.object_index == o_character) {
        if (glb_selected.using_weapon) {
            if (glb_selected.weapon.name == "shotgun") {
                if (
                    circle_intersect_rectangle(
                        self.x,
                        self.y,
                        self.x + self.width,
                        self.y + self.height,
                        mouse_x,
                        mouse_y,
                        32
                    )
                ) {
                    gun_hover = true;
                } else {
                    gun_hover = false;
                }
            } else if (glb_selected.weapon.name == "sniper") {
                var extended_line = extend_past_screen(
                    obj_get_center_x(glb_selected),
                    obj_get_center_y(glb_selected),
                    mouse_x,
                    mouse_y
                );
                if (
                    line_in_rectangle(
                        obj_get_center_x(glb_selected),
                        obj_get_center_y(glb_selected),
                        extended_line[0],
                        extended_line[1],
                        self.x,
                        self.y,
                        self.x + self.width,
                        self.y + self.height
                    )
                ) {
                    gun_hover = true;
                } else {
                    gun_hover = false;
                }
            }
        }
    }
}
