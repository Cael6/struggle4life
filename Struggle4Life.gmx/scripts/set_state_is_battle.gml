var controller = o_controller_r;

if (argument_count > 0) {
    if (argument[0]) {
        controller.state = STATE_BATTLE;
    } else {
        controller.state = STATE_NOT_BATTLE;
    }
} else {
    controller.state = STATE_BATTLE;
}
