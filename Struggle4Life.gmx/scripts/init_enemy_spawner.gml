//Number of enemies to spawn
enemy_count = -1;
//Modifications to enemy difficulty
enemy_mod = -1;
//Types of enemies to spawn
enemy_type = -1;

finished_spawning = false;

//The time until next wave
wave_timer = 0;
//The total amount of time between waves
wave_time_diff = -1;

//Can be used to pause spawner
enabled = false;

randomize();