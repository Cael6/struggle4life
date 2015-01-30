var character = argument0;
var pistol = instance_create(0,0, o_pistol);

with (pistol) {
    set_weapon(
        s_pistol,
        s_pistol_aoe,
        WEAPON_PISTOL_COOLDOWN,
        "pistol",
        character,
        check_collision_pistol,
        WEAPON_PISTOL_RANGE
    );
}

pistol.damage = WEAPON_PISTOL_DAMAGE;

return pistol;
