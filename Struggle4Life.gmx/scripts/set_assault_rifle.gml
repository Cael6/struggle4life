var character = argument0;
var assault_rifle = instance_create(0,0, o_assault_rifle);

with (assault_rifle) {
    set_weapon(
        s_assault_rifle,
        s_assault_rifle_aoe,
        WEAPON_ASSAULT_COOLDOWN,
        "assultrifle",
        character,
        check_collision_assault,
        WEAPON_ASSAULT_RANGE
    );
}

assault_rifle.shots_before_reload = WEAPON_ASSAULT_SHOTS_PER_RELOAD;
assault_rifle.shots_left = assault_rifle.shots_before_reload;
assault_rifle.damage = WEAPON_ASSAULT_DAMAGE;

return assault_rifle;
