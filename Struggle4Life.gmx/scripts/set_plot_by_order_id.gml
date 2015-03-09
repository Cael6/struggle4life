switch (order_id) {
    case 0:
        //First Point Base was overrun so return means sure death.
        scenario_id = SCENARIO_OVERRUN_BASE;
        break;
    case 1:
        scenario_id = SCENARIO_TUT_1;
        break;
    case 2:
        scenario_id = SCENARIO_TUT_2;
        break;
    case 3:
        scenario_id = SCENARIO_TUT_3;
        break;
        
    //TODO: more scenarios
    default:
        scenario_id = irandom_range(SCENARIO_RANDOM_START, SCENARIO_RANDOM_END);
        break;
}
