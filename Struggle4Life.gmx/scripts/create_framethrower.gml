var character = argument0;
var framethrower = instance_create(0,0, o_weapon);

with (framethrower) {
    set_weapon(s_framethrower, s_framethrower_aoe, WEAPON_FRAMETHROWER_COOLDOWN, "framethrower", character, draw_framethrower);
}

return framethrower;