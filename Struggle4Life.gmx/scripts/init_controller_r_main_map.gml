//var rec = instance_create(0,0,o_dialogue);

//Randomly pick a map
var main_map = instance_create(100,100,o_main_map)
var map_type = irandom_range(2, 3)
with(main_map){
    set_main_map(map_type);
}

//Make instances of ammo and fuel and set to persistent
ammo = instance_create(0,0, o_resource_ammo);
fuel = instance_create(0,0, o_resource_fuel);

ammo.persistent = true;
fuel.persistent = true;
