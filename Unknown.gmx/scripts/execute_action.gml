//execute_action(fn function, array arguments)
if(self.visible && self.enabled) {
    var function = argument0;
    var tmp_arguments = self.arguments;
    if(is_undefined(tmp_arguments)) {
        script_execute(function);
    } else {
        script_execute(function, arguments);
    }
}