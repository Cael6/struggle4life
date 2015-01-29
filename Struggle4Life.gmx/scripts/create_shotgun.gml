var character = argument0;
var shotgun = instance_create(0,0, o_weapon);

with (shotgun) {
    set_weapon(s_shotgun, s_shotgun_aoe, WEAPON_SHOTGUN_COOLDOWN, "shotgun", character, draw_shotgun);
}
shotgun.radius = 32;
return shotgun;
