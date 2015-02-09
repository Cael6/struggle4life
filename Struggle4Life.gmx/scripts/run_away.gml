destroy_dialogue();
var success = irandom(1);

if (success) {
    get_scenario_dialogue(SCENARIO_SAFE_ZONE);
} else {
    start_battle();
}  
