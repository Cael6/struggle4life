globalvar glb_part_system_blood;
globalvar glb_part_emitter_blood;
globalvar glb_particle_blood;

glb_part_system_blood = part_system_create();
part_system_depth(glb_part_system_blood, 9999);

glb_part_emitter_blood = part_emitter_create(glb_part_system_blood);
glb_particle_blood = part_type_create();

part_type_shape(glb_particle_blood, pt_shape_sphere);
part_type_direction(glb_particle_blood, 350, 365, 0, 0);
part_type_gravity(glb_particle_blood, 0.1, 270);
part_type_alpha2(glb_particle_blood, 0.5, 0);
part_type_colour2(glb_particle_blood, make_color_rgb(60, 0, 8), make_color_rgb(41, 1, 0));
part_type_orientation(glb_particle_blood, 0, 360, 0, 1, false);
part_type_size(glb_particle_blood, 0.1, 0.3, 0, 0);
part_type_speed(glb_particle_blood, 2, 5, 0, 0);
part_type_life(glb_particle_blood, 10, 30);

