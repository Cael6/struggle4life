var character = argument0;
var pistol = instance_create(0,0, o_weapon);

with (pistol) {
    set_weapon(s_pistol, s_pistol_aoe, WEAPON_PISTOL_COOLDOWN, "pistol", character, draw_pistol);
}

return pistol;