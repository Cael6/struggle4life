var scene_id = argument0;

switch (scene_id) {
    case CUTSCENE_INTRO:
        return init_cutscene_intro;
        break;
    case CUTSCENE_ACQUIRE_CURE:
        return init_cutscene_acquire_cure;
        break;
    case CUTSCENE_CURE_STOLEN:
        return init_cutscene_cure_stolen;
        break;
    case CUTSCENE_DEATH:
        return init_cutscene_death;
        break;
    case CUTSCENE_VICTORY:
        return init_cutscene_victory;
        break;
    default:
        c_log("Got no cutscene update function for scene_id: " + string(scene_id), C_LOG__ERROR);
}
