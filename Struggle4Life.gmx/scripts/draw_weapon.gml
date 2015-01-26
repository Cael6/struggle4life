if (self.draw_function != false) {
    script_execute(self.draw_function);
} else {
    c_log("Draw function was not set: " + self.name, C_LOG__ERROR);
}
