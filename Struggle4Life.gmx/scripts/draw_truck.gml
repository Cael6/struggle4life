draw_self();

if (key_down && get_resource_count(RESOURCE_FUEL)) {
    draw_boxed_message("No Fuel", x + width / 2, y + height / 2, 5);
}
