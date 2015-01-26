if (self.visible && self.enabled) {
    if (action) {
        if (arguments != false) {
            script_execute(action);
       } else {
            script_execute(action, arguments);
        }
    } else {        
        c_log("Error running self action on object: " + object_get_name(self.object_index), C_LOG__ERROR);
    }
}