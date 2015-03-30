var update_plot = argument0;
var list;

switch(update_plot) {
    case SCENARIO_MAP_UPDATE_PLOT_1:
        with (o_map_plot) {
            if (order_id == 10) {
                ally = true;
                scenario_id = SCENARIO_ALLY_ADD;
            }
            
            if (order_id == 20) {
                ally = true;
                scenario_id = SCENARIO_ALLY_ADD;
            }
            
            if (order_id == 5) {
                horde_type = get_horde_map();
                hard = true;
                scenario_id = horde_type[0];
                horde_sprite = horde_type[1];
            }
        }
        break;
    
    case SCENARIO_MAP_UPDATE_PLOT_2:
        var hard_stage = array_1d(14, 23, 22, 21, 30);
        with (o_map_plot) {
            //UPDATE HARD STAGE:
            for (var i = 0; i < array_length_1d(hard_stage); i += 1) {
                    if( hard_stage[i] == order_id) {
                        horde_type = get_horde_map();
                        hard = true;
                        scenario_id = horde_type[0];
                        horde_sprite = horde_type[1];
                    }
            }
        }
        break;
    
    case SCENARIO_MAP_UPDATE_PLOT_3:
        with (o_map_plot) {
            if (order_id == 31) {
                ally = true;
                scenario_id = SCENARIO_ALLY_ADD;
            }
            
            if (order_id == 33) {
                horde_type = get_horde_map();
                hard = true;
                scenario_id = horde_type[0];
                horde_sprite = horde_type[1];
            }
            
        }
        break;
     
    case SCENARIO_MAP_UPDATE_PLOT_4:
        with (o_map_plot) {
            if (order_id == 44) {
                ally = true;
                scenario_id = SCENARIO_ALLY_ADD;
            }
            
            if (order_id == 47) {
                horde_type = get_horde_map();
                hard = true;
                scenario_id = horde_type[0];
                horde_sprite = horde_type[1];
            }
            
            if (order_id == 49) {
                scenario_id = SCENARIO_REWARD_AMMO;
            }
            
        }
        break;          
    default:
        //If no matching don't update anything.
        break;
}
