destroy_dialogue();

//Set global value
glb_level += 1;
glb_scenario = 0;

//Generate next scenario
goto_r_main_map();
