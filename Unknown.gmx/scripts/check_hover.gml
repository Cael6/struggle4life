if(
    point_in_rectangle(
        mouse_x, 
        mouse_y, 
        self.x, 
        self.y, 
        self.x + self.width, 
        self.y + self.height
    )
) {
    self.hover = true;
} else {
    self.hover = false;
}