var shotgun = instance_create(0,0, o_weapon);

with (shotgun) {
    set_weapon(s_shotgun, s_shotgun_aoe, WEAPON_SHOTGUN_COOLDOWN, "shotgun");
}

return shotgun;
