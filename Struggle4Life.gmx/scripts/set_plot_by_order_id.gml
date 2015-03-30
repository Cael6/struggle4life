if (self.object_index == o_map_base_2) {
    scenario_id = SCENARIO_GAME_WIN;
} else {
    
    switch (order_id) {
        case 0:
            //First Point Base was overrun so return means sure death.
            scenario_id = SCENARIO_OVERRUN_BASE;
            break;
        case 1:
            scenario_id = SCENARIO_TUT_1_1;
            break;
        case 2:
            scenario_id = SCENARIO_TUT_2_1;
            break;
        case 3:
            scenario_id = SCENARIO_TUT_3_1;
            break;
        case 4:
            scenario_id = SCENARIO_TUT_4_1;
            break;
        case 11: 
            scenario_id = SCENARIO_ALLY_SNIPER;
            break
        //TODO: more scenarios
        default:
            scenario_id = irandom_range(SCENARIO_RANDOM_START, SCENARIO_RANDOM_END);
            break;
    }
}

//Note
//HARD MODE: 
