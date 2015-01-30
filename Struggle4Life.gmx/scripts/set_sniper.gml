var character = argument0;
var sniper = instance_create(0,0, o_sniper);

with (sniper) {
    set_weapon(
        s_sniper,
        s_sniper_aoe,
        WEAPON_SNIPER_COOLDOWN,
        "sniper",
        character,
        check_collision_sniper,
        WEAPON_SNIPER_RANGE
    );
}

sniper.damage = WEAPON_SNIPER_DAMAGE;

return sniper;
