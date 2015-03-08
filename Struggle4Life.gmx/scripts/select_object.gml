if (!glb_pause && state_is_battle()) {
    self.selected = true;
    glb_selected = self.id;
    window_set_cursor(cr_none);
}