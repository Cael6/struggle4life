if(animating && time_before_finished_animation > active_time) {
    scale_x += scale_x_step;
    scale_y += scale_y_step;
    rotation += rotation_step;
    alpha += alpha_step;
    
    active_time += 1;
}
