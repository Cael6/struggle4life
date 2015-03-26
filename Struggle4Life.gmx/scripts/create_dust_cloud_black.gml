globalvar glb_part_system_black;
globalvar glb_dust_emitter_black;
globalvar glb_particle_dust_black;

glb_part_system_black = part_system_create();
part_system_depth(glb_part_system_black, 9999);

glb_dust_emitter_black = part_emitter_create(glb_part_system_black);
glb_particle_dust_black = part_type_create();

part_type_shape(glb_particle_dust_black, pt_shape_explosion);
part_type_direction(glb_particle_dust_black, 185, 175, 0, 0);
part_type_alpha3(glb_particle_dust_black, 0, 0.15, 0);
part_type_colour2(glb_particle_dust_black, c_black, c_black);
part_type_orientation(glb_particle_dust_black, 0, 360, 0, 1, false);
part_type_size(glb_particle_dust_black, 5, 20, 0, 0.1);
part_type_speed(glb_particle_dust_black, 2, 2, 0, 1);
part_type_life(glb_particle_dust_black, 200, 200);

part_emitter_region(
    glb_part_system_black,
    glb_dust_emitter_black,
    -100,
    ROOM_WIDTH + 100,
    -100,
    ROOM_HEIGHT + 100,
    ps_shape_rectangle,
    ps_distr_invgaussian
);
