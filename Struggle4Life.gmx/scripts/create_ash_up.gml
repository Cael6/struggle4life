globalvar glb_part_system_ash_up;
globalvar glb_part_emitter_ash_up;
globalvar glb_particle_ash_up;

glb_part_system_ash_up = part_system_create();
part_system_depth(glb_part_system_ash_up, 1);

glb_part_emitter_ash_up = part_emitter_create(glb_part_system_ash_up);
glb_particle_ash_up = part_type_create();

part_type_shape(glb_particle_ash_up, pt_shape_sphere);
part_type_direction(glb_particle_ash_up, 45, 135, 0, 10);
part_type_alpha1(glb_particle_ash_up, 1);
part_type_colour2(glb_particle_ash_up, make_color_rgb(255, 135, 39), c_black);
part_type_orientation(glb_particle_ash_up, 0, 0, 0, 0, true);
part_type_size(glb_particle_ash_up, 0.05, 0.1, 0, 0);
part_type_speed(glb_particle_ash_up, 4, 4, -0.001, 0);
part_type_life(glb_particle_ash_up, 200, 200);

part_emitter_region(
    glb_part_system_ash_up,
    glb_part_emitter_ash_up,
    449,       //fire region
    527,
    524,
    542,
    ps_shape_rectangle,
    ps_distr_gaussian
);
