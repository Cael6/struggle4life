//get_resource_count(resource_type)
var resource = get_resource_from_id(argument0);
if (resource) {
    return resource.amount;
} else {
    return -1;
}