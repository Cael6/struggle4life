if (self.start_timer <= 0) {
    //if start timer is 0 start scrolling
    self.text_y -= CREDITS_SCROLL_SPEED;
    self.title_y -= CREDITS_SCROLL_SPEED;
} else {
    //wait before scrolling.
    self.start_timer -= 1;
}
