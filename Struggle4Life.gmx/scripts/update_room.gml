if (room_transfering) {
    time += 1;
    if (time >= room_transfer_time) {
        script_execute(transfer_script);
    }
}
