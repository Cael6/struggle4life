globalvar glb_part_system;
globalvar glb_dust_emitter;
globalvar glb_particle_dust;

glb_part_system = part_system_create();
part_system_depth(glb_part_system, 11);

glb_dust_emitter = part_emitter_create(glb_part_system);
glb_particle_dust = part_type_create();

part_type_shape(glb_particle_dust, pt_shape_explosion);
part_type_direction(glb_particle_dust, -5, 5, 0, 0);
part_type_alpha3(glb_particle_dust, 0, 0.9, 0);
part_type_colour2(glb_particle_dust, c_black, c_black);
part_type_orientation(glb_particle_dust, 0, 360, 0, 1, false);
part_type_size(glb_particle_dust, 5, 20, 0, 0.1);
part_type_speed(glb_particle_dust, 2, 2, 0, 1);
part_type_life(glb_particle_dust, 200, 200);

part_emitter_region(
    glb_part_system,
    glb_dust_emitter,
    -100,
    ROOM_WIDTH + 100,
    -100,
    ROOM_HEIGHT + 100,
    ps_shape_rectangle,
    ps_distr_invgaussian
);
