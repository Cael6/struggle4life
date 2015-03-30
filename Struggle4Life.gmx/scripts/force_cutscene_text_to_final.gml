var remaining_steps = time_before_finished_animation - active_time;
active_time = time_before_finished_animation;

scale_x += scale_x_step * remaining_steps;
scale_y += scale_y_step * remaining_steps;
rotation += rotation_step * remaining_steps;
alpha += alpha_step * remaining_steps;
