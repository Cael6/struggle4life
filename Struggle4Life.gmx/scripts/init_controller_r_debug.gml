//r_debug init

c_log("Game Start", C_LOG__INFO);

init_variables();

if (!DEBUG) {
    goto_r_start_room();
} else {
    c_log("Debug mode on", C_LOG__DEBUG);
}
