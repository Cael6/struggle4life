//Init list
if (argument_count mod 2 != 1) {
    for (var i = 0; i < argument_count; i+=1) {
        s_list[i div 2, i mod 2] = argument[i];
    }
} else {
    c_log(
        "Had an odd number of arguments for make_sprite_list: " + argument_count, 
        C_LOG__ERROR
    );
}

return s_list;
