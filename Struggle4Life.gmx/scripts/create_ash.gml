globalvar glb_part_system_ash;
globalvar glb_part_emitter_ash;
globalvar glb_particle_ash;

glb_part_system_ash = part_system_create();
part_system_depth(glb_part_system_ash, 1);

glb_part_emitter_ash = part_emitter_create(glb_part_system_ash);
glb_particle_ash = part_type_create();

part_type_shape(glb_particle_ash, pt_shape_sphere);
part_type_direction(glb_particle_ash, 260, 280, 0, 20);
part_type_alpha3(glb_particle_ash, 0, 1, 0);
part_type_colour1(glb_particle_ash, c_black);
part_type_orientation(glb_particle_ash, 0, 0, 0, 0, true);
part_type_size(glb_particle_ash, 0.05, 0.1, 0, 0);
part_type_speed(glb_particle_ash, 2, 2, 0, 1);
part_type_life(glb_particle_ash, 300, 300);

part_emitter_region(
    glb_part_system_ash,
    glb_part_emitter_ash,
    -100,
    ROOM_WIDTH + 100,
    -100,
    0,
    ps_shape_rectangle,
    ps_distr_linear
);