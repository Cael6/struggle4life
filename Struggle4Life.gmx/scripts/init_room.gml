room_set_width(room,ROOM_WIDTH);
room_set_height(room,ROOM_HEIGHT);

c_log("Initialized Room: " + room_get_name(room), C_LOG__INFO);

state = STATE_NOT_BATTLE;

time = 0;
room_transfering = false;
room_transfer_time = 90;
transfer_script = -1;
