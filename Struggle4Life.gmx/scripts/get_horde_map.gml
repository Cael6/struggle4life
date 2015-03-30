var returnList = array_1d(0,0);
returnList[0] = irandom_range(SCENARIO_HORDE_ALL_BATTLE, SCENARIO_HORDE_BRUISER_SPITTER_BATTLE);

switch(returnList[0]){
    case SCENARIO_HORDE_ALL_BATTLE:
        returnList[1] = s_map_horde_all;
        break;
    case SCENARIO_HORDE_BRUISER_BATTLE:
        returnList[1] = s_map_horde_bruiser;
        break;
    case SCENARIO_HORDE_SPITTER_BATTLE:
        returnList[1] = s_map_horde_spitter;
        break;        
     case SCENARIO_HORDE_CRAWLER_BATTLE:
        returnList[1] = s_map_horde_crawler;
        break;       
    case SCENARIO_HORDE_CRAWLER_BRUISER_BATTLE:
        returnList[1] = s_map_horde_crawler_bruiser;
        break;       
    case SCENARIO_HORDE_CRAWLER_SPITTER_BATTLE:
        returnList[1] = s_map_horde_crawler_spitter;
        break;          
    case SCENARIO_HORDE_BRUISER_SPITTER_BATTLE:
        returnList[1] = s_map_horde_bruiser_spitter;
        break;          
    default:
        returnList[1] = -1;
        break;
}

return returnList;
