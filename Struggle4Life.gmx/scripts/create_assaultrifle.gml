var character = argument0;
var assultrifle = instance_create(0,0, o_weapon);

with (assultrifle) {
    set_weapon(s_assultrifle, s_assultrifle_aoe, WEAPON_ASSULT_COOLDOWN, "assultrifle", character, draw_assultrifle);
}

return assultrifle;