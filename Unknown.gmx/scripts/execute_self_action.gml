c_log("executing_self_action with action; " + string(is_real(action)) + " and arguments: " + string(arguments), C_LOG__DEBUG);

if(self.visible && self.enabled) {
    if(action) {
        if(arguments != false) {
            script_execute(action);
       } else {
            script_execute(action, arguments);
        }
    } else {        
        c_log("Error running self action on object: " + object_get_name(self.object_index), C_LOG__ERROR);
    }
}
