var character = argument0;
var shotgun = instance_create(0,0, o_shotgun);

with (shotgun) {
    set_weapon(
        s_shotgun,
        s_shotgun_aoe,
        WEAPON_SHOTGUN_COOLDOWN,
        "shotgun",
        character,
        check_collision_shotgun,
        WEAPON_SHOTGUN_RANGE
    );
}
shotgun.radius = 32;
shotgun.damage = WEAPON_SHOTGUN_DAMAGE;
return shotgun;
