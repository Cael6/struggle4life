var infected = argument0;
var runner_bite = instance_create(0,0, o_runner_bite);

with (runner_bite) {
    set_weapon(
        s_runner,
        s_runner_bite_aoe,
        WEAPON_RUNNER_COOLDOWN,
        "spitter_mouth",
        infected,
        check_collision_runner_bite,
        WEAPON_RUNNER_RANGE
    );
}

runner_bite.damage = WEAPON_RUNNER_DAMAGE;

return runner_bite;
