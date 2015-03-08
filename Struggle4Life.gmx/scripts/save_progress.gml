var save_map;
var ammo = 0;
var fuel = 0;

//init
save_map = ds_map_create();

//Get record
with(o_resource_ammo){
    ammo = amount;
}

with(o_resource_fuel){
    fuel = amount;
}

//put in to map
ds_map_add(save_map, "ammo", ammo);
ds_map_add(save_map, "fuel", fuel);
ds_map_add(save_map, "level", glb_level);
ds_map_add(save_map, "room", glb_room);
ds_map_add(save_map, "room_count", glb_room_count);

//put into json file
var json = json_encode(save_map);
ds_map_destroy(save_map);

var str = "Write test";
var file = file_text_open_write( working_directory + "\hoge.txt");
file_text_write_string(file, json);
file_text_close(file);
