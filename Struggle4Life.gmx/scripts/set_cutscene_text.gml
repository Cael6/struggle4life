scale_x = argument0;
scale_y = argument1;
rotation = argument2;
alpha = argument3;
time_before_finished_animation = argument4;
text = argument5;
active_time = 0;

scale_x_step = (1 - scale_x) / time_before_finished_animation;
scale_y_step = (1 - scale_y) / time_before_finished_animation;
rotation_step = (0 - rotation) / time_before_finished_animation;
alpha_step = (1 - alpha) / time_before_finished_animation;