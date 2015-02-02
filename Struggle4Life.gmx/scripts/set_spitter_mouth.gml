var infected = argument0;
var spitter_mouth = instance_create(0,0, o_spitter_mouth);

with (spitter_mouth) {
    set_weapon(
        s_spitter,
        s_assault_rifle_aoe,
        WEAPON_SPITTER_COOLDOWN,
        "spitter_mouth",
        infected,
        check_collision_spitter_mouth,
        WEAPON_SPITTER_RANGE
    );
}

spitter_mouth.damage = WEAPON_SPITTER_DAMAGE;

return spitter_mouth;