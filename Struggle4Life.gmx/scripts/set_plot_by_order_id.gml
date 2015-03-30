var hard_stage = array_1d(5, 14, 23, 21, 22, 30, 22, 26, 47, 33);
//Put out 9 for now.

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
            scenario_id =  SCENARIO_TUT_4_1;
            break;
        case SCENARIO_MAP_UPDATE_PLOT_2:
            scenario_id =  SCENARIO_MAP_UPDATE_1;
            break;
        case SCENARIO_MAP_UPDATE_PLOT_3:
            scenario_id =  SCENARIO_MAP_UPDATE_2;
            break;
        case SCENARIO_MAP_UPDATE_PLOT_4:
            scenario_id =  SCENARIO_MAP_UPDATE_3;
            break;
        //TODO: more scenarios
        default:
            scenario_id = irandom_range(SCENARIO_RANDOM_START, SCENARIO_RANDOM_END);
            
            break;
    }
    //UPDATE HARD STAGE:
    for (var i = 0; i < array_length_1d(hard_stage); i += 1) {
            if( hard_stage[i] == order_id) {
                scenario_id = SCENARIO_HORDE_ALL_BATTLE;
            }
    }
    
}


