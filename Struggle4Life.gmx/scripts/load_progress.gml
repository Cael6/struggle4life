//init
var save_map = ds_map_create();
var save_path = working_directory + "\save.txt";
var file;
var json;
var temp;

if(file_exists(save_path)){
    file = file_text_open_read(save_path);
    json = file_text_read_string(file);
    
    save_map = json_decode(json);

    //Get record
    with(o_resource_ammo){
        amount = ds_map_find_value(save_map, "ammo");
    }
    
    with(o_resource_fuel){
        amount = ds_map_find_value(save_map, "fuel");
    }
    
    glb_level = ds_map_find_value(save_map, "level");
    glb_room = ds_map_find_value(save_map, "room");
    glb_room_count = ds_map_find_value(save_map, "room_count");
    
    file_text_close(file);
}else{
    //SAVE DATA NOT EXIST
}

//free map
ds_map_destroy(save_map);


