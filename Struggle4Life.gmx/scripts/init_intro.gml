time = 0;
draw_struggle_soft = true;
draw_struggle_4_life = false;
alpha = 1;
scale = 1;

//Create in intro so that we keep the reference to the systems
// Also we don't hit intro multiple times.
create_dust_cloud_black();
create_dust_cloud_white();
create_ash();
create_ash_up();
create_particle_blood();

start_dust_cloud();
start_ash();
start_ash_up();
show_particles(true, true, true, true);
