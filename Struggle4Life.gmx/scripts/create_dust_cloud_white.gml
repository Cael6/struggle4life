globalvar glb_part_system_white;
globalvar glb_dust_emitter_white;
globalvar glb_particle_dust_white;

glb_part_system_white = part_system_create();
part_system_depth(glb_part_system_white, 11);

glb_dust_emitter_white = part_emitter_create(glb_part_system_white);
glb_particle_dust_white = part_type_create();

part_type_shape(glb_particle_dust_white, pt_shape_explosion);
part_type_direction(glb_particle_dust_white, -5, 5, 0, 0);
part_type_alpha3(glb_particle_dust_white, 0, 0.01, 0);
part_type_colour2(glb_particle_dust_white, c_white, c_white);
part_type_orientation(glb_particle_dust_white, 0, 360, 0, 1, false);
part_type_size(glb_particle_dust_white, 5, 20, 0, 0.1);
part_type_speed(glb_particle_dust_white, 2, 2, 0, 1);
part_type_life(glb_particle_dust_white, 200, 200);

part_emitter_region(
    glb_part_system_white,
    glb_dust_emitter_white,
    -100,
    ROOM_WIDTH + 100,
    -100,
    ROOM_HEIGHT + 100,
    ps_shape_rectangle,
    ps_distr_invgaussian
);
