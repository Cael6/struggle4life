var character = argument0;
var flamethrower = instance_create(0,0, o_flamethrower);

with (flamethrower) {
    set_weapon(
        s_flamethrower,
        s_flamethrower_aoe,
        WEAPON_FLAMETHROWER_COOLDOWN,
        "flamethrower",
        character,
        check_collision_flamethrower,
        WEAPON_FLAMETHROWER_RANGE
    );
}
flamethrower.radius = WEAPON_FLAMETHROWER_RANGE * WEAPON_RANGE_DISTANCE;
flamethrower.damage = WEAPON_FLAMETHROWER_DAMAGE;

return flamethrower;
