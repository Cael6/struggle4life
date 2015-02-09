var controller = o_controller_r;
if (controller.state == STATE_BATTLE) {
    self.is_in_battle = true;
} else {
    self.is_in_battle = false;
}

if (!alive) {
    with (weapon) {
        instance_destroy();
    }
    instance_destroy();
}
