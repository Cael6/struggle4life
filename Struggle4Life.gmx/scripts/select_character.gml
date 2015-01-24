select_object();
window_set_cursor(cr_none);

if (using_weapon) {
    cursor_sprite = self.weapon.aoe_sprite;
} else {
    cursor_sprite = s_pistol_aoe;
}
