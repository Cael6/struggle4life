var character = argument0;
var sniper = instance_create(0,0, o_weapon);

with (sniper) {
    set_weapon(s_sniper, s_sniper_aoe, WEAPON_SNIPER_COOLDOWN, "sniper", character, draw_sniper);
}

return sniper;